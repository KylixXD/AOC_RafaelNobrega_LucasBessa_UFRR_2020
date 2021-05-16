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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/13/2021 19:19:17"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador IS
    PORT (
	clock : IN std_logic;
	outPC : BUFFER std_logic_vector(7 DOWNTO 0);
	outROM : BUFFER std_logic_vector(7 DOWNTO 0);
	Opcode : BUFFER std_logic_vector(3 DOWNTO 0);
	JumpAddress : BUFFER std_logic_vector(3 DOWNTO 0);
	Reg1Address : BUFFER std_logic_vector(1 DOWNTO 0);
	Reg2Address : BUFFER std_logic_vector(1 DOWNTO 0);
	Reg1 : BUFFER std_logic_vector(7 DOWNTO 0);
	Reg2 : BUFFER std_logic_vector(7 DOWNTO 0);
	outULA : BUFFER std_logic_vector(7 DOWNTO 0);
	overflow : BUFFER std_logic;
	outRAM : BUFFER std_logic_vector(7 DOWNTO 0);
	outSomaPC : BUFFER std_logic_vector(7 DOWNTO 0);
	outAndPort : BUFFER std_logic;
	Zero : BUFFER std_logic
	);
END processador;

ARCHITECTURE structure OF processador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_outPC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outROM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_JumpAddress : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Reg1Address : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Reg2Address : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Reg1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reg2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_outRAM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outSomaPC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outAndPort : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL \ALU|multi|Mult0~mac_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU|multi|Mult0~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU|multi|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALU|multi|Mult0~8\ : std_logic;
SIGNAL \ALU|multi|Mult0~9\ : std_logic;
SIGNAL \ALU|multi|Mult0~10\ : std_logic;
SIGNAL \ALU|multi|Mult0~11\ : std_logic;
SIGNAL \ALU|multi|Mult0~12\ : std_logic;
SIGNAL \ALU|multi|Mult0~13\ : std_logic;
SIGNAL \ALU|multi|Mult0~14\ : std_logic;
SIGNAL \ALU|multi|Mult0~15\ : std_logic;
SIGNAL \ALU|multi|Mult0~16\ : std_logic;
SIGNAL \ALU|multi|Mult0~17\ : std_logic;
SIGNAL \ALU|multi|Mult0~18\ : std_logic;
SIGNAL \ALU|multi|Mult0~19\ : std_logic;
SIGNAL \ALU|multi|Mult0~20\ : std_logic;
SIGNAL \ALU|multi|Mult0~21\ : std_logic;
SIGNAL \ALU|multi|Mult0~22\ : std_logic;
SIGNAL \ALU|multi|Mult0~23\ : std_logic;
SIGNAL \ALU|multi|Mult0~24\ : std_logic;
SIGNAL \ALU|multi|Mult0~25\ : std_logic;
SIGNAL \ALU|multi|Mult0~26\ : std_logic;
SIGNAL \ALU|multi|Mult0~27\ : std_logic;
SIGNAL \ALU|multi|Mult0~28\ : std_logic;
SIGNAL \ALU|multi|Mult0~29\ : std_logic;
SIGNAL \ALU|multi|Mult0~30\ : std_logic;
SIGNAL \ALU|multi|Mult0~31\ : std_logic;
SIGNAL \ALU|multi|Mult0~32\ : std_logic;
SIGNAL \ALU|multi|Mult0~33\ : std_logic;
SIGNAL \ALU|multi|Mult0~34\ : std_logic;
SIGNAL \ALU|multi|Mult0~35\ : std_logic;
SIGNAL \ALU|multi|Mult0~36\ : std_logic;
SIGNAL \ALU|multi|Mult0~37\ : std_logic;
SIGNAL \ALU|multi|Mult0~38\ : std_logic;
SIGNAL \ALU|multi|Mult0~39\ : std_logic;
SIGNAL \ALU|multi|Mult0~40\ : std_logic;
SIGNAL \ALU|multi|Mult0~41\ : std_logic;
SIGNAL \ALU|multi|Mult0~42\ : std_logic;
SIGNAL \ALU|multi|Mult0~43\ : std_logic;
SIGNAL \ALU|multi|Mult0~44\ : std_logic;
SIGNAL \ALU|multi|Mult0~45\ : std_logic;
SIGNAL \ALU|multi|Mult0~46\ : std_logic;
SIGNAL \ALU|multi|Mult0~47\ : std_logic;
SIGNAL \ALU|multi|Mult0~48\ : std_logic;
SIGNAL \ALU|multi|Mult0~49\ : std_logic;
SIGNAL \ALU|multi|Mult0~50\ : std_logic;
SIGNAL \ALU|multi|Mult0~51\ : std_logic;
SIGNAL \ALU|multi|Mult0~52\ : std_logic;
SIGNAL \ALU|multi|Mult0~53\ : std_logic;
SIGNAL \ALU|multi|Mult0~54\ : std_logic;
SIGNAL \ALU|multi|Mult0~55\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \SomaPC|Add0~1_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~2\ : std_logic;
SIGNAL \SomaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memoriaROM~1_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~3_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~4_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~5_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~12_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~13_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~14_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~15_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~8_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~10_combout\ : std_logic;
SIGNAL \Controle|Mux6~0_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~9_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~6_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~7_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~11_combout\ : std_logic;
SIGNAL \Controle|Mux1~0_combout\ : std_logic;
SIGNAL \Registradores|registradores~61_combout\ : std_logic;
SIGNAL \Registradores|registradores~36_q\ : std_logic;
SIGNAL \Registradores|registradores~62_combout\ : std_logic;
SIGNAL \Registradores|registradores~28_q\ : std_logic;
SIGNAL \Registradores|registradores~60_combout\ : std_logic;
SIGNAL \Registradores|registradores~12_q\ : std_logic;
SIGNAL \Registradores|registradores~52_combout\ : std_logic;
SIGNAL \Controle|Mux0~0_combout\ : std_logic;
SIGNAL \Mult1|out_data[1]~1_combout\ : std_logic;
SIGNAL \Registradores|registradores~35_q\ : std_logic;
SIGNAL \Registradores|registradores~27_q\ : std_logic;
SIGNAL \Registradores|registradores~11_q\ : std_logic;
SIGNAL \Registradores|registradores~51_combout\ : std_logic;
SIGNAL \ALU|outULA~0_combout\ : std_logic;
SIGNAL \Registradores|registradores~37_q\ : std_logic;
SIGNAL \Registradores|registradores~29_q\ : std_logic;
SIGNAL \Registradores|registradores~13_q\ : std_logic;
SIGNAL \Registradores|registradores~53_combout\ : std_logic;
SIGNAL \Mult1|out_data[2]~2_combout\ : std_logic;
SIGNAL \ALU|soma|sum2|sum1|p_o|out_port~0_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~0_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~18_combout\ : std_logic;
SIGNAL \ALU|sub|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memoriaROM~19_combout\ : std_logic;
SIGNAL \ALU|sub|Add0~2\ : std_logic;
SIGNAL \ALU|sub|Add0~5_sumout\ : std_logic;
SIGNAL \ALU|sub|saia|sum1|saida|out_port~combout\ : std_logic;
SIGNAL \ALU|sub|Add0~6\ : std_logic;
SIGNAL \ALU|sub|Add0~9_sumout\ : std_logic;
SIGNAL \ALU|Mux8~2_combout\ : std_logic;
SIGNAL \Registradores|registradores~41_q\ : std_logic;
SIGNAL \Registradores|registradores~33_q\ : std_logic;
SIGNAL \Registradores|registradores~17_q\ : std_logic;
SIGNAL \Registradores|registradores~57_combout\ : std_logic;
SIGNAL \Registradores|registradores~40_q\ : std_logic;
SIGNAL \Registradores|registradores~32_q\ : std_logic;
SIGNAL \Registradores|registradores~16_q\ : std_logic;
SIGNAL \Registradores|registradores~56_combout\ : std_logic;
SIGNAL \Registradores|registradores~39_q\ : std_logic;
SIGNAL \Registradores|registradores~31_q\ : std_logic;
SIGNAL \Registradores|registradores~15_q\ : std_logic;
SIGNAL \Registradores|registradores~55_combout\ : std_logic;
SIGNAL \Registradores|registradores~38_q\ : std_logic;
SIGNAL \Registradores|registradores~30_q\ : std_logic;
SIGNAL \Registradores|registradores~14_q\ : std_logic;
SIGNAL \Registradores|registradores~54_combout\ : std_logic;
SIGNAL \ALU|sub|Add0~10\ : std_logic;
SIGNAL \ALU|sub|Add0~14\ : std_logic;
SIGNAL \ALU|sub|Add0~18\ : std_logic;
SIGNAL \ALU|sub|Add0~22\ : std_logic;
SIGNAL \ALU|sub|Add0~25_sumout\ : std_logic;
SIGNAL \ALU|sub|Add0~21_sumout\ : std_logic;
SIGNAL \ALU|sub|saia|sum5|carryout|out_port~combout\ : std_logic;
SIGNAL \Mult1|out_data[6]~6_combout\ : std_logic;
SIGNAL \ALU|Mux4~7_combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum2|saida|out_port~combout\ : std_logic;
SIGNAL \ALU|sub|Add0~13_sumout\ : std_logic;
SIGNAL \ALU|sub|Add0~17_sumout\ : std_logic;
SIGNAL \ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum5|sum1|p_an|out_port~0_combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum6|sum|p_o|out_port~0_combout\ : std_logic;
SIGNAL \ALU|soma|sum3|sum|p_o|out_port~0_combout\ : std_logic;
SIGNAL \Mult1|out_data[4]~4_combout\ : std_logic;
SIGNAL \ALU|soma|sum3|sum|p_o|out_port~1_combout\ : std_logic;
SIGNAL \ALU|soma|sum3|sum1|p_an|out_port~0_combout\ : std_logic;
SIGNAL \Mult1|out_data[5]~5_combout\ : std_logic;
SIGNAL \ALU|soma|sum5|saida|out_port~combout\ : std_logic;
SIGNAL \ALU|soma|sum6|sum|p_o|out_port~0_combout\ : std_logic;
SIGNAL \ALU|Mux4~2_combout\ : std_logic;
SIGNAL \Controle|Mux3~0_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~16_combout\ : std_logic;
SIGNAL \ROM|memoriaROM~17_combout\ : std_logic;
SIGNAL \Registradores|registradores~42_q\ : std_logic;
SIGNAL \Registradores|registradores~34_q\ : std_logic;
SIGNAL \Registradores|registradores~18_q\ : std_logic;
SIGNAL \Registradores|registradores~58_combout\ : std_logic;
SIGNAL \Mult1|out_data[7]~7_combout\ : std_logic;
SIGNAL \Mult1|out_data[0]~0_combout\ : std_logic;
SIGNAL \Mult1|out_data[3]~3_combout\ : std_logic;
SIGNAL \ALU|Mux3~2_combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum3|saida|out_port~combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum5|saida|out_port~combout\ : std_logic;
SIGNAL \ALU|soma|sum7|sum|p_o|out_port~0_combout\ : std_logic;
SIGNAL \ALU|Mux3~3_combout\ : std_logic;
SIGNAL \ALU|Mux3~4_combout\ : std_logic;
SIGNAL \ALU|sub|Add0~26\ : std_logic;
SIGNAL \ALU|sub|Add0~29_sumout\ : std_logic;
SIGNAL \ALU|Mux3~5_combout\ : std_logic;
SIGNAL \ALU|Mux3~6_combout\ : std_logic;
SIGNAL \ALU|Mux3~7_combout\ : std_logic;
SIGNAL \ALU|Mux3~0_combout\ : std_logic;
SIGNAL \ALU|Mux3~1_combout\ : std_logic;
SIGNAL \Mult4|out_data[7]~8_combout\ : std_logic;
SIGNAL \Mult4|out_data[7]~7_combout\ : std_logic;
SIGNAL \Registradores|registradores~59_combout\ : std_logic;
SIGNAL \Registradores|registradores~26_q\ : std_logic;
SIGNAL \Registradores|registradores~50_combout\ : std_logic;
SIGNAL \ALU|Mux4~3_combout\ : std_logic;
SIGNAL \ALU|Mux4~0_combout\ : std_logic;
SIGNAL \Mult4|out_data[6]~6_combout\ : std_logic;
SIGNAL \Registradores|registradores~25_q\ : std_logic;
SIGNAL \Registradores|registradores~49_combout\ : std_logic;
SIGNAL \ALU|Mux5~3_combout\ : std_logic;
SIGNAL \ALU|Mux5~4_combout\ : std_logic;
SIGNAL \ALU|soma|sum5|sum1|p_o|out_port~0_combout\ : std_logic;
SIGNAL \ALU|Mux5~5_combout\ : std_logic;
SIGNAL \ALU|Mux5~0_combout\ : std_logic;
SIGNAL \ALU|Mux5~1_combout\ : std_logic;
SIGNAL \Mult4|out_data[5]~5_combout\ : std_logic;
SIGNAL \Registradores|registradores~24_q\ : std_logic;
SIGNAL \Registradores|registradores~48_combout\ : std_logic;
SIGNAL \ALU|Mux6~4_combout\ : std_logic;
SIGNAL \ALU|Mux6~5_combout\ : std_logic;
SIGNAL \ALU|Mux6~6_combout\ : std_logic;
SIGNAL \ALU|Mux6~0_combout\ : std_logic;
SIGNAL \ALU|Mux6~1_combout\ : std_logic;
SIGNAL \Controle|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|Mux6~2_combout\ : std_logic;
SIGNAL \Mult4|out_data[4]~4_combout\ : std_logic;
SIGNAL \Registradores|registradores~23_q\ : std_logic;
SIGNAL \Registradores|registradores~47_combout\ : std_logic;
SIGNAL \ALU|soma|sum2|saida|out_port~combout\ : std_logic;
SIGNAL \ALU|Mux7~3_combout\ : std_logic;
SIGNAL \ALU|Mux7~4_combout\ : std_logic;
SIGNAL \ALU|Mux7~0_combout\ : std_logic;
SIGNAL \ALU|Mux7~1_combout\ : std_logic;
SIGNAL \Mult4|out_data[3]~3_combout\ : std_logic;
SIGNAL \Registradores|registradores~22_q\ : std_logic;
SIGNAL \Registradores|registradores~46_combout\ : std_logic;
SIGNAL \ALU|Mux8~3_combout\ : std_logic;
SIGNAL \ALU|Mux8~0_combout\ : std_logic;
SIGNAL \Mult4|out_data[2]~2_combout\ : std_logic;
SIGNAL \Registradores|registradores~21_q\ : std_logic;
SIGNAL \Registradores|registradores~45_combout\ : std_logic;
SIGNAL \ALU|Mux10~1_combout\ : std_logic;
SIGNAL \ALU|Mux10~0_combout\ : std_logic;
SIGNAL \ALU|Mux10~2_combout\ : std_logic;
SIGNAL \Mult4|out_data[0]~0_combout\ : std_logic;
SIGNAL \Registradores|registradores~19_q\ : std_logic;
SIGNAL \Registradores|registradores~43_combout\ : std_logic;
SIGNAL \ALU|soma|sum1|sum1|p_o|out_port~0_combout\ : std_logic;
SIGNAL \ALU|Mux9~2_combout\ : std_logic;
SIGNAL \ALU|Mux9~3_combout\ : std_logic;
SIGNAL \ALU|Mux9~0_combout\ : std_logic;
SIGNAL \Mult4|out_data[1]~1_combout\ : std_logic;
SIGNAL \Registradores|registradores~20_q\ : std_logic;
SIGNAL \Registradores|registradores~44_combout\ : std_logic;
SIGNAL \ALU|Equal1~0_combout\ : std_logic;
SIGNAL \ALU|Equal1~1_combout\ : std_logic;
SIGNAL \ALU|Equal1~2_combout\ : std_logic;
SIGNAL \ALU|Equal1~3_combout\ : std_logic;
SIGNAL \ALU|Mux1~0_combout\ : std_logic;
SIGNAL \ALU|condition~combout\ : std_logic;
SIGNAL \ALU|Mux0~0_combout\ : std_logic;
SIGNAL \Controle|Mux5~0_combout\ : std_logic;
SIGNAL \ALU|zero~combout\ : std_logic;
SIGNAL \Mult3|out_data[3]~0_combout\ : std_logic;
SIGNAL \SomaPC|Add0~6\ : std_logic;
SIGNAL \SomaPC|Add0~9_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~10\ : std_logic;
SIGNAL \SomaPC|Add0~13_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~14\ : std_logic;
SIGNAL \SomaPC|Add0~17_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \SomaPC|Add0~18\ : std_logic;
SIGNAL \SomaPC|Add0~21_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~22\ : std_logic;
SIGNAL \SomaPC|Add0~25_sumout\ : std_logic;
SIGNAL \SomaPC|Add0~26\ : std_logic;
SIGNAL \SomaPC|Add0~29_sumout\ : std_logic;
SIGNAL \ROM|memoriaROM~2_combout\ : std_logic;
SIGNAL \ALU|Mux9~1_combout\ : std_logic;
SIGNAL \ALU|Mux8~1_combout\ : std_logic;
SIGNAL \ALU|Mux7~2_combout\ : std_logic;
SIGNAL \ALU|Mux6~3_combout\ : std_logic;
SIGNAL \ALU|Mux5~2_combout\ : std_logic;
SIGNAL \ALU|Mux4~1_combout\ : std_logic;
SIGNAL \ALU|Mux3~8_combout\ : std_logic;
SIGNAL \ALU|Equal0~0_combout\ : std_logic;
SIGNAL \ALU|Mux12~0_combout\ : std_logic;
SIGNAL \ALU|Mux12~1_combout\ : std_logic;
SIGNAL \ALU|Mux13~0_combout\ : std_logic;
SIGNAL \ALU|overflow~combout\ : std_logic;
SIGNAL \AndPorta|out_port~combout\ : std_logic;
SIGNAL \ProgramCounter|out_port\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU|multi|Produto\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Registradores|ALT_INV_registradores~11_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~19_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux4~7_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \ALU|sub|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALU|sub|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALU|sub|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALU|sub|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALU|sub|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALU|sub|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALU|sub|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALU|sub|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALU|multi|ALT_INV_Produto\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ProgramCounter|ALT_INV_out_port\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~18_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux3~7_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux3~6_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux3~5_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum5|saida|ALT_INV_out_port~combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~17_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALU|soma|sum7|sum|p_o|ALT_INV_out_port~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memoriaROM~16_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Mult1|ALT_INV_out_data[7]~7_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALU|soma|sum6|sum|p_o|ALT_INV_out_port~0_combout\ : std_logic;
SIGNAL \ALU|soma|sum5|saida|ALT_INV_out_port~combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum6|sum|p_o|ALT_INV_out_port~0_combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum5|sum1|p_an|ALT_INV_out_port~0_combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum5|carryout|ALT_INV_out_port~combout\ : std_logic;
SIGNAL \Mult1|ALT_INV_out_data[6]~6_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALU|soma|sum5|sum1|p_o|ALT_INV_out_port~0_combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum5|sum|p_o|ALT_INV_out_port~0_combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum3|saida|ALT_INV_out_port~combout\ : std_logic;
SIGNAL \Mult1|ALT_INV_out_data[5]~5_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALU|soma|sum3|sum1|p_an|ALT_INV_out_port~0_combout\ : std_logic;
SIGNAL \ALU|soma|sum3|sum|p_o|ALT_INV_out_port~1_combout\ : std_logic;
SIGNAL \Mult1|ALT_INV_out_data[4]~4_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALU|soma|sum2|saida|ALT_INV_out_port~combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum2|saida|ALT_INV_out_port~combout\ : std_logic;
SIGNAL \Mult1|ALT_INV_out_data[3]~3_combout\ : std_logic;
SIGNAL \ALU|soma|sum3|sum|p_o|ALT_INV_out_port~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALU|soma|sum2|sum1|p_o|ALT_INV_out_port~0_combout\ : std_logic;
SIGNAL \ALU|sub|saia|sum1|saida|ALT_INV_out_port~combout\ : std_logic;
SIGNAL \Mult1|ALT_INV_out_data[2]~2_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALU|soma|sum1|sum1|p_o|ALT_INV_out_port~0_combout\ : std_logic;
SIGNAL \Mult1|ALT_INV_out_data[1]~1_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \Mult1|ALT_INV_out_data[0]~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_outULA~0_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~58_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~57_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~56_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~55_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~54_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~53_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~52_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~51_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~50_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~34_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~42_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~18_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~26_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~49_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~33_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~41_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~17_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~25_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~48_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~32_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~40_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~16_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~24_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~47_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~31_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~39_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~15_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~23_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~46_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~30_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~38_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~14_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~22_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~45_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~29_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~37_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~13_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~21_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~44_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~28_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~36_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~12_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~20_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~43_combout\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~27_q\ : std_logic;
SIGNAL \Registradores|ALT_INV_registradores~35_q\ : std_logic;
SIGNAL \ALU|ALT_INV_condition~combout\ : std_logic;
SIGNAL \ALU|ALT_INV_zero~combout\ : std_logic;
SIGNAL \ALU|ALT_INV_overflow~combout\ : std_logic;
SIGNAL \Mult4|ALT_INV_out_data[7]~8_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux6~6_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux5~5_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
outPC <= ww_outPC;
outROM <= ww_outROM;
Opcode <= ww_Opcode;
JumpAddress <= ww_JumpAddress;
Reg1Address <= ww_Reg1Address;
Reg2Address <= ww_Reg2Address;
Reg1 <= ww_Reg1;
Reg2 <= ww_Reg2;
outULA <= ww_outULA;
overflow <= ww_overflow;
outRAM <= ww_outRAM;
outSomaPC <= ww_outSomaPC;
outAndPort <= ww_outAndPort;
Zero <= ww_Zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ALU|multi|Mult0~mac_AX_bus\ <= (\Registradores|registradores~50_combout\ & \Registradores|registradores~49_combout\ & \Registradores|registradores~48_combout\ & \Registradores|registradores~47_combout\ & \Registradores|registradores~46_combout\ & 
\Registradores|registradores~45_combout\ & \Registradores|registradores~44_combout\ & \Registradores|registradores~43_combout\);

\ALU|multi|Mult0~mac_AY_bus\ <= (\Mult1|out_data[7]~7_combout\ & \Mult1|out_data[6]~6_combout\ & \Mult1|out_data[5]~5_combout\ & \Mult1|out_data[4]~4_combout\ & \Mult1|out_data[3]~3_combout\ & \Mult1|out_data[2]~2_combout\ & \Mult1|out_data[1]~1_combout\
& \Mult1|out_data[0]~0_combout\);

\ALU|multi|Produto\(0) <= \ALU|multi|Mult0~mac_RESULTA_bus\(0);
\ALU|multi|Produto\(1) <= \ALU|multi|Mult0~mac_RESULTA_bus\(1);
\ALU|multi|Produto\(2) <= \ALU|multi|Mult0~mac_RESULTA_bus\(2);
\ALU|multi|Produto\(3) <= \ALU|multi|Mult0~mac_RESULTA_bus\(3);
\ALU|multi|Produto\(4) <= \ALU|multi|Mult0~mac_RESULTA_bus\(4);
\ALU|multi|Produto\(5) <= \ALU|multi|Mult0~mac_RESULTA_bus\(5);
\ALU|multi|Produto\(6) <= \ALU|multi|Mult0~mac_RESULTA_bus\(6);
\ALU|multi|Produto\(7) <= \ALU|multi|Mult0~mac_RESULTA_bus\(7);
\ALU|multi|Produto\(8) <= \ALU|multi|Mult0~mac_RESULTA_bus\(8);
\ALU|multi|Produto\(9) <= \ALU|multi|Mult0~mac_RESULTA_bus\(9);
\ALU|multi|Produto\(10) <= \ALU|multi|Mult0~mac_RESULTA_bus\(10);
\ALU|multi|Produto\(11) <= \ALU|multi|Mult0~mac_RESULTA_bus\(11);
\ALU|multi|Produto\(12) <= \ALU|multi|Mult0~mac_RESULTA_bus\(12);
\ALU|multi|Produto\(13) <= \ALU|multi|Mult0~mac_RESULTA_bus\(13);
\ALU|multi|Produto\(14) <= \ALU|multi|Mult0~mac_RESULTA_bus\(14);
\ALU|multi|Produto\(15) <= \ALU|multi|Mult0~mac_RESULTA_bus\(15);
\ALU|multi|Mult0~8\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(16);
\ALU|multi|Mult0~9\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(17);
\ALU|multi|Mult0~10\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(18);
\ALU|multi|Mult0~11\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(19);
\ALU|multi|Mult0~12\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(20);
\ALU|multi|Mult0~13\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(21);
\ALU|multi|Mult0~14\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(22);
\ALU|multi|Mult0~15\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(23);
\ALU|multi|Mult0~16\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(24);
\ALU|multi|Mult0~17\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(25);
\ALU|multi|Mult0~18\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(26);
\ALU|multi|Mult0~19\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(27);
\ALU|multi|Mult0~20\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(28);
\ALU|multi|Mult0~21\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(29);
\ALU|multi|Mult0~22\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(30);
\ALU|multi|Mult0~23\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(31);
\ALU|multi|Mult0~24\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(32);
\ALU|multi|Mult0~25\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(33);
\ALU|multi|Mult0~26\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(34);
\ALU|multi|Mult0~27\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(35);
\ALU|multi|Mult0~28\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(36);
\ALU|multi|Mult0~29\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(37);
\ALU|multi|Mult0~30\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(38);
\ALU|multi|Mult0~31\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(39);
\ALU|multi|Mult0~32\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(40);
\ALU|multi|Mult0~33\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(41);
\ALU|multi|Mult0~34\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(42);
\ALU|multi|Mult0~35\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(43);
\ALU|multi|Mult0~36\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(44);
\ALU|multi|Mult0~37\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(45);
\ALU|multi|Mult0~38\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(46);
\ALU|multi|Mult0~39\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(47);
\ALU|multi|Mult0~40\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(48);
\ALU|multi|Mult0~41\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(49);
\ALU|multi|Mult0~42\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(50);
\ALU|multi|Mult0~43\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(51);
\ALU|multi|Mult0~44\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(52);
\ALU|multi|Mult0~45\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(53);
\ALU|multi|Mult0~46\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(54);
\ALU|multi|Mult0~47\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(55);
\ALU|multi|Mult0~48\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(56);
\ALU|multi|Mult0~49\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(57);
\ALU|multi|Mult0~50\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(58);
\ALU|multi|Mult0~51\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(59);
\ALU|multi|Mult0~52\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(60);
\ALU|multi|Mult0~53\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(61);
\ALU|multi|Mult0~54\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(62);
\ALU|multi|Mult0~55\ <= \ALU|multi|Mult0~mac_RESULTA_bus\(63);
\Registradores|ALT_INV_registradores~11_q\ <= NOT \Registradores|registradores~11_q\;
\Registradores|ALT_INV_registradores~19_q\ <= NOT \Registradores|registradores~19_q\;
\ROM|ALT_INV_memoriaROM~15_combout\ <= NOT \ROM|memoriaROM~15_combout\;
\ROM|ALT_INV_memoriaROM~14_combout\ <= NOT \ROM|memoriaROM~14_combout\;
\ROM|ALT_INV_memoriaROM~13_combout\ <= NOT \ROM|memoriaROM~13_combout\;
\ROM|ALT_INV_memoriaROM~12_combout\ <= NOT \ROM|memoriaROM~12_combout\;
\ROM|ALT_INV_memoriaROM~11_combout\ <= NOT \ROM|memoriaROM~11_combout\;
\ROM|ALT_INV_memoriaROM~10_combout\ <= NOT \ROM|memoriaROM~10_combout\;
\ROM|ALT_INV_memoriaROM~9_combout\ <= NOT \ROM|memoriaROM~9_combout\;
\ROM|ALT_INV_memoriaROM~8_combout\ <= NOT \ROM|memoriaROM~8_combout\;
\ROM|ALT_INV_memoriaROM~7_combout\ <= NOT \ROM|memoriaROM~7_combout\;
\ROM|ALT_INV_memoriaROM~6_combout\ <= NOT \ROM|memoriaROM~6_combout\;
\ROM|ALT_INV_memoriaROM~5_combout\ <= NOT \ROM|memoriaROM~5_combout\;
\ROM|ALT_INV_memoriaROM~4_combout\ <= NOT \ROM|memoriaROM~4_combout\;
\ROM|ALT_INV_memoriaROM~3_combout\ <= NOT \ROM|memoriaROM~3_combout\;
\ROM|ALT_INV_memoriaROM~2_combout\ <= NOT \ROM|memoriaROM~2_combout\;
\ROM|ALT_INV_memoriaROM~1_combout\ <= NOT \ROM|memoriaROM~1_combout\;
\ROM|ALT_INV_memoriaROM~0_combout\ <= NOT \ROM|memoriaROM~0_combout\;
\ALU|ALT_INV_Mux10~2_combout\ <= NOT \ALU|Mux10~2_combout\;
\ALU|ALT_INV_Mux9~3_combout\ <= NOT \ALU|Mux9~3_combout\;
\ALU|ALT_INV_Mux8~3_combout\ <= NOT \ALU|Mux8~3_combout\;
\ALU|ALT_INV_Mux4~7_combout\ <= NOT \ALU|Mux4~7_combout\;
\ALU|ALT_INV_Mux4~3_combout\ <= NOT \ALU|Mux4~3_combout\;
\ALU|sub|ALT_INV_Add0~29_sumout\ <= NOT \ALU|sub|Add0~29_sumout\;
\ALU|sub|ALT_INV_Add0~25_sumout\ <= NOT \ALU|sub|Add0~25_sumout\;
\ALU|sub|ALT_INV_Add0~21_sumout\ <= NOT \ALU|sub|Add0~21_sumout\;
\ALU|sub|ALT_INV_Add0~17_sumout\ <= NOT \ALU|sub|Add0~17_sumout\;
\ALU|sub|ALT_INV_Add0~13_sumout\ <= NOT \ALU|sub|Add0~13_sumout\;
\ALU|sub|ALT_INV_Add0~9_sumout\ <= NOT \ALU|sub|Add0~9_sumout\;
\ALU|sub|ALT_INV_Add0~5_sumout\ <= NOT \ALU|sub|Add0~5_sumout\;
\ALU|sub|ALT_INV_Add0~1_sumout\ <= NOT \ALU|sub|Add0~1_sumout\;
\ALU|multi|ALT_INV_Produto\(15) <= NOT \ALU|multi|Produto\(15);
\ALU|multi|ALT_INV_Produto\(14) <= NOT \ALU|multi|Produto\(14);
\ALU|multi|ALT_INV_Produto\(13) <= NOT \ALU|multi|Produto\(13);
\ALU|multi|ALT_INV_Produto\(12) <= NOT \ALU|multi|Produto\(12);
\ALU|multi|ALT_INV_Produto\(11) <= NOT \ALU|multi|Produto\(11);
\ALU|multi|ALT_INV_Produto\(10) <= NOT \ALU|multi|Produto\(10);
\ALU|multi|ALT_INV_Produto\(9) <= NOT \ALU|multi|Produto\(9);
\ALU|multi|ALT_INV_Produto\(8) <= NOT \ALU|multi|Produto\(8);
\ALU|multi|ALT_INV_Produto\(7) <= NOT \ALU|multi|Produto\(7);
\ALU|multi|ALT_INV_Produto\(6) <= NOT \ALU|multi|Produto\(6);
\ALU|multi|ALT_INV_Produto\(5) <= NOT \ALU|multi|Produto\(5);
\ALU|multi|ALT_INV_Produto\(4) <= NOT \ALU|multi|Produto\(4);
\ALU|multi|ALT_INV_Produto\(3) <= NOT \ALU|multi|Produto\(3);
\ALU|multi|ALT_INV_Produto\(2) <= NOT \ALU|multi|Produto\(2);
\ALU|multi|ALT_INV_Produto\(1) <= NOT \ALU|multi|Produto\(1);
\ALU|multi|ALT_INV_Produto\(0) <= NOT \ALU|multi|Produto\(0);
\ProgramCounter|ALT_INV_out_port\(7) <= NOT \ProgramCounter|out_port\(7);
\ProgramCounter|ALT_INV_out_port\(6) <= NOT \ProgramCounter|out_port\(6);
\ProgramCounter|ALT_INV_out_port\(5) <= NOT \ProgramCounter|out_port\(5);
\ProgramCounter|ALT_INV_out_port\(4) <= NOT \ProgramCounter|out_port\(4);
\ProgramCounter|ALT_INV_out_port\(3) <= NOT \ProgramCounter|out_port\(3);
\ProgramCounter|ALT_INV_out_port\(2) <= NOT \ProgramCounter|out_port\(2);
\ProgramCounter|ALT_INV_out_port\(1) <= NOT \ProgramCounter|out_port\(1);
\ProgramCounter|ALT_INV_out_port\(0) <= NOT \ProgramCounter|out_port\(0);
\ALU|ALT_INV_Mux13~0_combout\ <= NOT \ALU|Mux13~0_combout\;
\ALU|ALT_INV_Mux12~1_combout\ <= NOT \ALU|Mux12~1_combout\;
\ALU|ALT_INV_Mux12~0_combout\ <= NOT \ALU|Mux12~0_combout\;
\ALU|ALT_INV_Equal0~0_combout\ <= NOT \ALU|Equal0~0_combout\;
\ROM|ALT_INV_memoriaROM~19_combout\ <= NOT \ROM|memoriaROM~19_combout\;
\ROM|ALT_INV_memoriaROM~18_combout\ <= NOT \ROM|memoriaROM~18_combout\;
\Controle|ALT_INV_Mux1~0_combout\ <= NOT \Controle|Mux1~0_combout\;
\Controle|ALT_INV_Mux3~0_combout\ <= NOT \Controle|Mux3~0_combout\;
\Controle|ALT_INV_Mux5~0_combout\ <= NOT \Controle|Mux5~0_combout\;
\ALU|ALT_INV_Mux3~7_combout\ <= NOT \ALU|Mux3~7_combout\;
\ALU|ALT_INV_Mux3~6_combout\ <= NOT \ALU|Mux3~6_combout\;
\ALU|ALT_INV_Mux3~5_combout\ <= NOT \ALU|Mux3~5_combout\;
\ALU|ALT_INV_Mux3~4_combout\ <= NOT \ALU|Mux3~4_combout\;
\Controle|ALT_INV_Mux6~0_combout\ <= NOT \Controle|Mux6~0_combout\;
\ALU|ALT_INV_Mux3~3_combout\ <= NOT \ALU|Mux3~3_combout\;
\ALU|sub|saia|sum5|saida|ALT_INV_out_port~combout\ <= NOT \ALU|sub|saia|sum5|saida|out_port~combout\;
\ALU|ALT_INV_Mux3~2_combout\ <= NOT \ALU|Mux3~2_combout\;
\ROM|ALT_INV_memoriaROM~17_combout\ <= NOT \ROM|memoriaROM~17_combout\;
\ALU|ALT_INV_Mux3~1_combout\ <= NOT \ALU|Mux3~1_combout\;
\ALU|soma|sum7|sum|p_o|ALT_INV_out_port~0_combout\ <= NOT \ALU|soma|sum7|sum|p_o|out_port~0_combout\;
\ROM|ALT_INV_memoriaROM~16_combout\ <= NOT \ROM|memoriaROM~16_combout\;
\ALU|ALT_INV_Mux3~0_combout\ <= NOT \ALU|Mux3~0_combout\;
\Mult1|ALT_INV_out_data[7]~7_combout\ <= NOT \Mult1|out_data[7]~7_combout\;
\ALU|ALT_INV_Mux4~0_combout\ <= NOT \ALU|Mux4~0_combout\;
\ALU|soma|sum6|sum|p_o|ALT_INV_out_port~0_combout\ <= NOT \ALU|soma|sum6|sum|p_o|out_port~0_combout\;
\ALU|soma|sum5|saida|ALT_INV_out_port~combout\ <= NOT \ALU|soma|sum5|saida|out_port~combout\;
\ALU|sub|saia|sum6|sum|p_o|ALT_INV_out_port~0_combout\ <= NOT \ALU|sub|saia|sum6|sum|p_o|out_port~0_combout\;
\ALU|sub|saia|sum5|sum1|p_an|ALT_INV_out_port~0_combout\ <= NOT \ALU|sub|saia|sum5|sum1|p_an|out_port~0_combout\;
\ALU|sub|saia|sum5|carryout|ALT_INV_out_port~combout\ <= NOT \ALU|sub|saia|sum5|carryout|out_port~combout\;
\Mult1|ALT_INV_out_data[6]~6_combout\ <= NOT \Mult1|out_data[6]~6_combout\;
\ALU|ALT_INV_Mux5~1_combout\ <= NOT \ALU|Mux5~1_combout\;
\ALU|ALT_INV_Mux5~0_combout\ <= NOT \ALU|Mux5~0_combout\;
\ALU|soma|sum5|sum1|p_o|ALT_INV_out_port~0_combout\ <= NOT \ALU|soma|sum5|sum1|p_o|out_port~0_combout\;
\ALU|sub|saia|sum5|sum|p_o|ALT_INV_out_port~0_combout\ <= NOT \ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\;
\ALU|sub|saia|sum3|saida|ALT_INV_out_port~combout\ <= NOT \ALU|sub|saia|sum3|saida|out_port~combout\;
\Mult1|ALT_INV_out_data[5]~5_combout\ <= NOT \Mult1|out_data[5]~5_combout\;
\ALU|ALT_INV_Mux6~2_combout\ <= NOT \ALU|Mux6~2_combout\;
\Controle|ALT_INV_Mux2~0_combout\ <= NOT \Controle|Mux2~0_combout\;
\ALU|ALT_INV_Mux6~1_combout\ <= NOT \ALU|Mux6~1_combout\;
\ALU|ALT_INV_Mux6~0_combout\ <= NOT \ALU|Mux6~0_combout\;
\ALU|soma|sum3|sum1|p_an|ALT_INV_out_port~0_combout\ <= NOT \ALU|soma|sum3|sum1|p_an|out_port~0_combout\;
\ALU|soma|sum3|sum|p_o|ALT_INV_out_port~1_combout\ <= NOT \ALU|soma|sum3|sum|p_o|out_port~1_combout\;
\Mult1|ALT_INV_out_data[4]~4_combout\ <= NOT \Mult1|out_data[4]~4_combout\;
\ALU|ALT_INV_Mux7~1_combout\ <= NOT \ALU|Mux7~1_combout\;
\ALU|ALT_INV_Mux7~0_combout\ <= NOT \ALU|Mux7~0_combout\;
\ALU|soma|sum2|saida|ALT_INV_out_port~combout\ <= NOT \ALU|soma|sum2|saida|out_port~combout\;
\ALU|sub|saia|sum2|saida|ALT_INV_out_port~combout\ <= NOT \ALU|sub|saia|sum2|saida|out_port~combout\;
\Mult1|ALT_INV_out_data[3]~3_combout\ <= NOT \Mult1|out_data[3]~3_combout\;
\ALU|soma|sum3|sum|p_o|ALT_INV_out_port~0_combout\ <= NOT \ALU|soma|sum3|sum|p_o|out_port~0_combout\;
\ALU|ALT_INV_Mux8~0_combout\ <= NOT \ALU|Mux8~0_combout\;
\ALU|soma|sum2|sum1|p_o|ALT_INV_out_port~0_combout\ <= NOT \ALU|soma|sum2|sum1|p_o|out_port~0_combout\;
\ALU|sub|saia|sum1|saida|ALT_INV_out_port~combout\ <= NOT \ALU|sub|saia|sum1|saida|out_port~combout\;
\Mult1|ALT_INV_out_data[2]~2_combout\ <= NOT \Mult1|out_data[2]~2_combout\;
\ALU|ALT_INV_Mux9~0_combout\ <= NOT \ALU|Mux9~0_combout\;
\ALU|soma|sum1|sum1|p_o|ALT_INV_out_port~0_combout\ <= NOT \ALU|soma|sum1|sum1|p_o|out_port~0_combout\;
\Mult1|ALT_INV_out_data[1]~1_combout\ <= NOT \Mult1|out_data[1]~1_combout\;
\ALU|ALT_INV_Mux10~0_combout\ <= NOT \ALU|Mux10~0_combout\;
\Mult1|ALT_INV_out_data[0]~0_combout\ <= NOT \Mult1|out_data[0]~0_combout\;
\ALU|ALT_INV_outULA~0_combout\ <= NOT \ALU|outULA~0_combout\;
\Controle|ALT_INV_Mux0~0_combout\ <= NOT \Controle|Mux0~0_combout\;
\Registradores|ALT_INV_registradores~58_combout\ <= NOT \Registradores|registradores~58_combout\;
\Registradores|ALT_INV_registradores~57_combout\ <= NOT \Registradores|registradores~57_combout\;
\Registradores|ALT_INV_registradores~56_combout\ <= NOT \Registradores|registradores~56_combout\;
\Registradores|ALT_INV_registradores~55_combout\ <= NOT \Registradores|registradores~55_combout\;
\Registradores|ALT_INV_registradores~54_combout\ <= NOT \Registradores|registradores~54_combout\;
\Registradores|ALT_INV_registradores~53_combout\ <= NOT \Registradores|registradores~53_combout\;
\Registradores|ALT_INV_registradores~52_combout\ <= NOT \Registradores|registradores~52_combout\;
\Registradores|ALT_INV_registradores~51_combout\ <= NOT \Registradores|registradores~51_combout\;
\Registradores|ALT_INV_registradores~50_combout\ <= NOT \Registradores|registradores~50_combout\;
\Registradores|ALT_INV_registradores~34_q\ <= NOT \Registradores|registradores~34_q\;
\Registradores|ALT_INV_registradores~42_q\ <= NOT \Registradores|registradores~42_q\;
\Registradores|ALT_INV_registradores~18_q\ <= NOT \Registradores|registradores~18_q\;
\Registradores|ALT_INV_registradores~26_q\ <= NOT \Registradores|registradores~26_q\;
\Registradores|ALT_INV_registradores~49_combout\ <= NOT \Registradores|registradores~49_combout\;
\Registradores|ALT_INV_registradores~33_q\ <= NOT \Registradores|registradores~33_q\;
\Registradores|ALT_INV_registradores~41_q\ <= NOT \Registradores|registradores~41_q\;
\Registradores|ALT_INV_registradores~17_q\ <= NOT \Registradores|registradores~17_q\;
\Registradores|ALT_INV_registradores~25_q\ <= NOT \Registradores|registradores~25_q\;
\Registradores|ALT_INV_registradores~48_combout\ <= NOT \Registradores|registradores~48_combout\;
\Registradores|ALT_INV_registradores~32_q\ <= NOT \Registradores|registradores~32_q\;
\Registradores|ALT_INV_registradores~40_q\ <= NOT \Registradores|registradores~40_q\;
\Registradores|ALT_INV_registradores~16_q\ <= NOT \Registradores|registradores~16_q\;
\Registradores|ALT_INV_registradores~24_q\ <= NOT \Registradores|registradores~24_q\;
\Registradores|ALT_INV_registradores~47_combout\ <= NOT \Registradores|registradores~47_combout\;
\Registradores|ALT_INV_registradores~31_q\ <= NOT \Registradores|registradores~31_q\;
\Registradores|ALT_INV_registradores~39_q\ <= NOT \Registradores|registradores~39_q\;
\Registradores|ALT_INV_registradores~15_q\ <= NOT \Registradores|registradores~15_q\;
\Registradores|ALT_INV_registradores~23_q\ <= NOT \Registradores|registradores~23_q\;
\Registradores|ALT_INV_registradores~46_combout\ <= NOT \Registradores|registradores~46_combout\;
\Registradores|ALT_INV_registradores~30_q\ <= NOT \Registradores|registradores~30_q\;
\Registradores|ALT_INV_registradores~38_q\ <= NOT \Registradores|registradores~38_q\;
\Registradores|ALT_INV_registradores~14_q\ <= NOT \Registradores|registradores~14_q\;
\Registradores|ALT_INV_registradores~22_q\ <= NOT \Registradores|registradores~22_q\;
\Registradores|ALT_INV_registradores~45_combout\ <= NOT \Registradores|registradores~45_combout\;
\Registradores|ALT_INV_registradores~29_q\ <= NOT \Registradores|registradores~29_q\;
\Registradores|ALT_INV_registradores~37_q\ <= NOT \Registradores|registradores~37_q\;
\Registradores|ALT_INV_registradores~13_q\ <= NOT \Registradores|registradores~13_q\;
\Registradores|ALT_INV_registradores~21_q\ <= NOT \Registradores|registradores~21_q\;
\Registradores|ALT_INV_registradores~44_combout\ <= NOT \Registradores|registradores~44_combout\;
\Registradores|ALT_INV_registradores~28_q\ <= NOT \Registradores|registradores~28_q\;
\Registradores|ALT_INV_registradores~36_q\ <= NOT \Registradores|registradores~36_q\;
\Registradores|ALT_INV_registradores~12_q\ <= NOT \Registradores|registradores~12_q\;
\Registradores|ALT_INV_registradores~20_q\ <= NOT \Registradores|registradores~20_q\;
\Registradores|ALT_INV_registradores~43_combout\ <= NOT \Registradores|registradores~43_combout\;
\Registradores|ALT_INV_registradores~27_q\ <= NOT \Registradores|registradores~27_q\;
\Registradores|ALT_INV_registradores~35_q\ <= NOT \Registradores|registradores~35_q\;
\ALU|ALT_INV_condition~combout\ <= NOT \ALU|condition~combout\;
\ALU|ALT_INV_zero~combout\ <= NOT \ALU|zero~combout\;
\ALU|ALT_INV_overflow~combout\ <= NOT \ALU|overflow~combout\;
\Mult4|ALT_INV_out_data[7]~8_combout\ <= NOT \Mult4|out_data[7]~8_combout\;
\ALU|ALT_INV_Mux9~2_combout\ <= NOT \ALU|Mux9~2_combout\;
\ALU|ALT_INV_Mux8~2_combout\ <= NOT \ALU|Mux8~2_combout\;
\ALU|ALT_INV_Mux7~4_combout\ <= NOT \ALU|Mux7~4_combout\;
\ALU|ALT_INV_Mux7~3_combout\ <= NOT \ALU|Mux7~3_combout\;
\ALU|ALT_INV_Mux6~6_combout\ <= NOT \ALU|Mux6~6_combout\;
\ALU|ALT_INV_Mux6~5_combout\ <= NOT \ALU|Mux6~5_combout\;
\ALU|ALT_INV_Mux6~4_combout\ <= NOT \ALU|Mux6~4_combout\;
\ALU|ALT_INV_Mux5~5_combout\ <= NOT \ALU|Mux5~5_combout\;
\ALU|ALT_INV_Mux5~4_combout\ <= NOT \ALU|Mux5~4_combout\;
\ALU|ALT_INV_Mux5~3_combout\ <= NOT \ALU|Mux5~3_combout\;
\ALU|ALT_INV_Mux4~2_combout\ <= NOT \ALU|Mux4~2_combout\;
\ALU|ALT_INV_Mux10~1_combout\ <= NOT \ALU|Mux10~1_combout\;
\ALU|ALT_INV_Mux1~0_combout\ <= NOT \ALU|Mux1~0_combout\;
\ALU|ALT_INV_Equal1~3_combout\ <= NOT \ALU|Equal1~3_combout\;
\ALU|ALT_INV_Equal1~2_combout\ <= NOT \ALU|Equal1~2_combout\;
\ALU|ALT_INV_Equal1~1_combout\ <= NOT \ALU|Equal1~1_combout\;
\ALU|ALT_INV_Equal1~0_combout\ <= NOT \ALU|Equal1~0_combout\;
\ALU|ALT_INV_Mux0~0_combout\ <= NOT \ALU|Mux0~0_combout\;

\outPC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|out_port\(0),
	devoe => ww_devoe,
	o => ww_outPC(0));

\outPC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|out_port\(1),
	devoe => ww_devoe,
	o => ww_outPC(1));

\outPC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|out_port\(2),
	devoe => ww_devoe,
	o => ww_outPC(2));

\outPC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|out_port\(3),
	devoe => ww_devoe,
	o => ww_outPC(3));

\outPC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|out_port\(4),
	devoe => ww_devoe,
	o => ww_outPC(4));

\outPC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|out_port\(5),
	devoe => ww_devoe,
	o => ww_outPC(5));

\outPC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|out_port\(6),
	devoe => ww_devoe,
	o => ww_outPC(6));

\outPC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|out_port\(7),
	devoe => ww_devoe,
	o => ww_outPC(7));

\outROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~2_combout\,
	devoe => ww_devoe,
	o => ww_outROM(0));

\outROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~4_combout\,
	devoe => ww_devoe,
	o => ww_outROM(1));

\outROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~6_combout\,
	devoe => ww_devoe,
	o => ww_outROM(2));

\outROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~7_combout\,
	devoe => ww_devoe,
	o => ww_outROM(3));

\outROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~9_combout\,
	devoe => ww_devoe,
	o => ww_outROM(4));

\outROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~11_combout\,
	devoe => ww_devoe,
	o => ww_outROM(5));

\outROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memoriaROM~13_combout\,
	devoe => ww_devoe,
	o => ww_outROM(6));

\outROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memoriaROM~15_combout\,
	devoe => ww_devoe,
	o => ww_outROM(7));

\Opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~9_combout\,
	devoe => ww_devoe,
	o => ww_Opcode(0));

\Opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~11_combout\,
	devoe => ww_devoe,
	o => ww_Opcode(1));

\Opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memoriaROM~13_combout\,
	devoe => ww_devoe,
	o => ww_Opcode(2));

\Opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memoriaROM~15_combout\,
	devoe => ww_devoe,
	o => ww_Opcode(3));

\JumpAddress[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~2_combout\,
	devoe => ww_devoe,
	o => ww_JumpAddress(0));

\JumpAddress[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~4_combout\,
	devoe => ww_devoe,
	o => ww_JumpAddress(1));

\JumpAddress[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~6_combout\,
	devoe => ww_devoe,
	o => ww_JumpAddress(2));

\JumpAddress[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~7_combout\,
	devoe => ww_devoe,
	o => ww_JumpAddress(3));

\Reg1Address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~6_combout\,
	devoe => ww_devoe,
	o => ww_Reg1Address(0));

\Reg1Address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~7_combout\,
	devoe => ww_devoe,
	o => ww_Reg1Address(1));

\Reg2Address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Reg2Address(0));

\Reg2Address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memoriaROM~4_combout\,
	devoe => ww_devoe,
	o => ww_Reg2Address(1));

\Reg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~43_combout\,
	devoe => ww_devoe,
	o => ww_Reg1(0));

\Reg1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~44_combout\,
	devoe => ww_devoe,
	o => ww_Reg1(1));

\Reg1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~45_combout\,
	devoe => ww_devoe,
	o => ww_Reg1(2));

\Reg1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~46_combout\,
	devoe => ww_devoe,
	o => ww_Reg1(3));

\Reg1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~47_combout\,
	devoe => ww_devoe,
	o => ww_Reg1(4));

\Reg1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~48_combout\,
	devoe => ww_devoe,
	o => ww_Reg1(5));

\Reg1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~49_combout\,
	devoe => ww_devoe,
	o => ww_Reg1(6));

\Reg1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~50_combout\,
	devoe => ww_devoe,
	o => ww_Reg1(7));

\Reg2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~51_combout\,
	devoe => ww_devoe,
	o => ww_Reg2(0));

\Reg2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~52_combout\,
	devoe => ww_devoe,
	o => ww_Reg2(1));

\Reg2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~53_combout\,
	devoe => ww_devoe,
	o => ww_Reg2(2));

\Reg2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~54_combout\,
	devoe => ww_devoe,
	o => ww_Reg2(3));

\Reg2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~55_combout\,
	devoe => ww_devoe,
	o => ww_Reg2(4));

\Reg2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~56_combout\,
	devoe => ww_devoe,
	o => ww_Reg2(5));

\Reg2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~57_combout\,
	devoe => ww_devoe,
	o => ww_Reg2(6));

\Reg2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registradores|registradores~58_combout\,
	devoe => ww_devoe,
	o => ww_Reg2(7));

\outULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux10~2_combout\,
	devoe => ww_devoe,
	o => ww_outULA(0));

\outULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux9~1_combout\,
	devoe => ww_devoe,
	o => ww_outULA(1));

\outULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux8~1_combout\,
	devoe => ww_devoe,
	o => ww_outULA(2));

\outULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux7~2_combout\,
	devoe => ww_devoe,
	o => ww_outULA(3));

\outULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux6~3_combout\,
	devoe => ww_devoe,
	o => ww_outULA(4));

\outULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux5~2_combout\,
	devoe => ww_devoe,
	o => ww_outULA(5));

\outULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_outULA(6));

\outULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux3~8_combout\,
	devoe => ww_devoe,
	o => ww_outULA(7));

\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|overflow~combout\,
	devoe => ww_devoe,
	o => ww_overflow);

\outRAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRAM(0));

\outRAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRAM(1));

\outRAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRAM(2));

\outRAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRAM(3));

\outRAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRAM(4));

\outRAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRAM(5));

\outRAM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRAM(6));

\outRAM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_outRAM(7));

\outSomaPC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SomaPC|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_outSomaPC(0));

\outSomaPC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SomaPC|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_outSomaPC(1));

\outSomaPC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SomaPC|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_outSomaPC(2));

\outSomaPC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SomaPC|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_outSomaPC(3));

\outSomaPC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SomaPC|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_outSomaPC(4));

\outSomaPC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SomaPC|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_outSomaPC(5));

\outSomaPC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SomaPC|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_outSomaPC(6));

\outSomaPC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SomaPC|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_outSomaPC(7));

\outAndPort~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AndPorta|out_port~combout\,
	devoe => ww_devoe,
	o => ww_outAndPort);

\Zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|zero~combout\,
	devoe => ww_devoe,
	o => ww_Zero);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\SomaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~1_sumout\ = SUM(( \ProgramCounter|out_port\(0) ) + ( VCC ) + ( !VCC ))
-- \SomaPC|Add0~2\ = CARRY(( \ProgramCounter|out_port\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_out_port\(0),
	cin => GND,
	sumout => \SomaPC|Add0~1_sumout\,
	cout => \SomaPC|Add0~2\);

\SomaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~5_sumout\ = SUM(( \ProgramCounter|out_port\(1) ) + ( GND ) + ( \SomaPC|Add0~2\ ))
-- \SomaPC|Add0~6\ = CARRY(( \ProgramCounter|out_port\(1) ) + ( GND ) + ( \SomaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_out_port\(1),
	cin => \SomaPC|Add0~2\,
	sumout => \SomaPC|Add0~5_sumout\,
	cout => \SomaPC|Add0~6\);

\ROM|memoriaROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~1_combout\ = (!\ProgramCounter|out_port\(4) & (!\ProgramCounter|out_port\(5) & !\ProgramCounter|out_port\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(4),
	datab => \ProgramCounter|ALT_INV_out_port\(5),
	datac => \ProgramCounter|ALT_INV_out_port\(6),
	combout => \ROM|memoriaROM~1_combout\);

\ROM|memoriaROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~3_combout\ = (!\ProgramCounter|out_port\(1) & (!\ProgramCounter|out_port\(3) & ((!\ProgramCounter|out_port\(2)) # (\ProgramCounter|out_port\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000000000110001000000000011000100000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(0),
	datab => \ProgramCounter|ALT_INV_out_port\(1),
	datac => \ProgramCounter|ALT_INV_out_port\(2),
	datad => \ProgramCounter|ALT_INV_out_port\(3),
	combout => \ROM|memoriaROM~3_combout\);

\ROM|memoriaROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~4_combout\ = (!\ProgramCounter|out_port\(7) & (\ROM|memoriaROM~1_combout\ & \ROM|memoriaROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(7),
	datab => \ROM|ALT_INV_memoriaROM~1_combout\,
	datac => \ROM|ALT_INV_memoriaROM~3_combout\,
	combout => \ROM|memoriaROM~4_combout\);

\ROM|memoriaROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~5_combout\ = (!\ProgramCounter|out_port\(4) & (!\ProgramCounter|out_port\(5) & (!\ProgramCounter|out_port\(6) & !\ProgramCounter|out_port\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(4),
	datab => \ProgramCounter|ALT_INV_out_port\(5),
	datac => \ProgramCounter|ALT_INV_out_port\(6),
	datad => \ProgramCounter|ALT_INV_out_port\(7),
	combout => \ROM|memoriaROM~5_combout\);

\ROM|memoriaROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~12_combout\ = (!\ProgramCounter|out_port\(3) & (((!\ProgramCounter|out_port\(2)) # (\ProgramCounter|out_port\(1))) # (\ProgramCounter|out_port\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111101110000000011110111000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(0),
	datab => \ProgramCounter|ALT_INV_out_port\(1),
	datac => \ProgramCounter|ALT_INV_out_port\(2),
	datad => \ProgramCounter|ALT_INV_out_port\(3),
	combout => \ROM|memoriaROM~12_combout\);

\ROM|memoriaROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~13_combout\ = (!\ROM|memoriaROM~5_combout\) # (!\ROM|memoriaROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~5_combout\,
	datab => \ROM|ALT_INV_memoriaROM~12_combout\,
	combout => \ROM|memoriaROM~13_combout\);

\ROM|memoriaROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~14_combout\ = (!\ProgramCounter|out_port\(3) & ((!\ProgramCounter|out_port\(1) & ((!\ProgramCounter|out_port\(0)) # (\ProgramCounter|out_port\(2)))) # (\ProgramCounter|out_port\(1) & ((!\ProgramCounter|out_port\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110000000000101111000000000010111100000000001011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(0),
	datab => \ProgramCounter|ALT_INV_out_port\(1),
	datac => \ProgramCounter|ALT_INV_out_port\(2),
	datad => \ProgramCounter|ALT_INV_out_port\(3),
	combout => \ROM|memoriaROM~14_combout\);

\ROM|memoriaROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~15_combout\ = (!\ROM|memoriaROM~5_combout\) # (!\ROM|memoriaROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~5_combout\,
	datab => \ROM|ALT_INV_memoriaROM~14_combout\,
	combout => \ROM|memoriaROM~15_combout\);

\ROM|memoriaROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~8_combout\ = (!\ProgramCounter|out_port\(3) & ((!\ProgramCounter|out_port\(0) & (\ProgramCounter|out_port\(1) & \ProgramCounter|out_port\(2))) # (\ProgramCounter|out_port\(0) & ((!\ProgramCounter|out_port\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001000000000010100100000000001010010000000000101001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(0),
	datab => \ProgramCounter|ALT_INV_out_port\(1),
	datac => \ProgramCounter|ALT_INV_out_port\(2),
	datad => \ProgramCounter|ALT_INV_out_port\(3),
	combout => \ROM|memoriaROM~8_combout\);

\ROM|memoriaROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~10_combout\ = (!\ProgramCounter|out_port\(3) & ((!\ProgramCounter|out_port\(1) & (\ProgramCounter|out_port\(0))) # (\ProgramCounter|out_port\(1) & ((\ProgramCounter|out_port\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000001000111000000000100011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(0),
	datab => \ProgramCounter|ALT_INV_out_port\(1),
	datac => \ProgramCounter|ALT_INV_out_port\(2),
	datad => \ProgramCounter|ALT_INV_out_port\(3),
	combout => \ROM|memoriaROM~10_combout\);

\Controle|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Mux6~0_combout\ = (!\ProgramCounter|out_port\(7) & (\ROM|memoriaROM~1_combout\ & ((\ROM|memoriaROM~10_combout\) # (\ROM|memoriaROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(7),
	datab => \ROM|ALT_INV_memoriaROM~1_combout\,
	datac => \ROM|ALT_INV_memoriaROM~8_combout\,
	datad => \ROM|ALT_INV_memoriaROM~10_combout\,
	combout => \Controle|Mux6~0_combout\);

\ROM|memoriaROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~9_combout\ = (!\ProgramCounter|out_port\(7) & (\ROM|memoriaROM~1_combout\ & \ROM|memoriaROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(7),
	datab => \ROM|ALT_INV_memoriaROM~1_combout\,
	datac => \ROM|ALT_INV_memoriaROM~8_combout\,
	combout => \ROM|memoriaROM~9_combout\);

\ROM|memoriaROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~6_combout\ = ( \ROM|memoriaROM~5_combout\ & ( (!\ProgramCounter|out_port\(3) & ((!\ProgramCounter|out_port\(1) $ (\ProgramCounter|out_port\(2))) # (\ProgramCounter|out_port\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110101110000000000000000000000001101011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(0),
	datab => \ProgramCounter|ALT_INV_out_port\(1),
	datac => \ProgramCounter|ALT_INV_out_port\(2),
	datad => \ProgramCounter|ALT_INV_out_port\(3),
	datae => \ROM|ALT_INV_memoriaROM~5_combout\,
	combout => \ROM|memoriaROM~6_combout\);

\ROM|memoriaROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~7_combout\ = (!\ProgramCounter|out_port\(1) & (!\ProgramCounter|out_port\(2) & (!\ProgramCounter|out_port\(3) & \ROM|memoriaROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(1),
	datab => \ProgramCounter|ALT_INV_out_port\(2),
	datac => \ProgramCounter|ALT_INV_out_port\(3),
	datad => \ROM|ALT_INV_memoriaROM~5_combout\,
	combout => \ROM|memoriaROM~7_combout\);

\ROM|memoriaROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~11_combout\ = (!\ProgramCounter|out_port\(7) & (\ROM|memoriaROM~1_combout\ & \ROM|memoriaROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(7),
	datab => \ROM|ALT_INV_memoriaROM~1_combout\,
	datac => \ROM|ALT_INV_memoriaROM~10_combout\,
	combout => \ROM|memoriaROM~11_combout\);

\Controle|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Mux1~0_combout\ = (!\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~13_combout\ & \ROM|memoriaROM~15_combout\)))) # (\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~13_combout\ $ (((\ROM|memoriaROM~9_combout\ & \ROM|memoriaROM~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011100001001100001110000100110000111000010011000011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~13_combout\,
	datad => \ROM|ALT_INV_memoriaROM~15_combout\,
	combout => \Controle|Mux1~0_combout\);

\Registradores|registradores~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~61_combout\ = (\ROM|memoriaROM~6_combout\ & (\ROM|memoriaROM~7_combout\ & !\Controle|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~6_combout\,
	datab => \ROM|ALT_INV_memoriaROM~7_combout\,
	datac => \Controle|ALT_INV_Mux1~0_combout\,
	combout => \Registradores|registradores~61_combout\);

\Registradores|registradores~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[1]~1_combout\,
	ena => \Registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~36_q\);

\Registradores|registradores~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~62_combout\ = (!\ROM|memoriaROM~6_combout\ & (\ROM|memoriaROM~7_combout\ & !\Controle|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~6_combout\,
	datab => \ROM|ALT_INV_memoriaROM~7_combout\,
	datac => \Controle|ALT_INV_Mux1~0_combout\,
	combout => \Registradores|registradores~62_combout\);

\Registradores|registradores~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[1]~1_combout\,
	ena => \Registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~28_q\);

\Registradores|registradores~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~60_combout\ = (!\ROM|memoriaROM~6_combout\ & (!\ROM|memoriaROM~7_combout\ & !\Controle|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~6_combout\,
	datab => \ROM|ALT_INV_memoriaROM~7_combout\,
	datac => \Controle|ALT_INV_Mux1~0_combout\,
	combout => \Registradores|registradores~60_combout\);

\Registradores|registradores~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[1]~1_combout\,
	ena => \Registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~12_q\);

\Registradores|registradores~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~52_combout\ = ( \ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~36_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~28_q\ ) ) ) 
-- # ( \ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~20_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~36_q\,
	datab => \Registradores|ALT_INV_registradores~28_q\,
	datac => \Registradores|ALT_INV_registradores~20_q\,
	datad => \Registradores|ALT_INV_registradores~12_q\,
	datae => \ROM|ALT_INV_memoriaROM~2_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~4_combout\,
	combout => \Registradores|registradores~52_combout\);

\Controle|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Mux0~0_combout\ = (!\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~9_combout\ & (!\ROM|memoriaROM~13_combout\ & !\ROM|memoriaROM~15_combout\))) # (\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & (!\ROM|memoriaROM~9_combout\ $ 
-- (!\ROM|memoriaROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010010100000000001001010000000000100101000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~13_combout\,
	datad => \ROM|ALT_INV_memoriaROM~15_combout\,
	combout => \Controle|Mux0~0_combout\);

\Mult1|out_data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1|out_data[1]~1_combout\ = (!\Controle|Mux0~0_combout\ & ((\Registradores|registradores~52_combout\))) # (\Controle|Mux0~0_combout\ & (\ROM|memoriaROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~4_combout\,
	datab => \Registradores|ALT_INV_registradores~52_combout\,
	datac => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \Mult1|out_data[1]~1_combout\);

\Registradores|registradores~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[0]~0_combout\,
	ena => \Registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~35_q\);

\Registradores|registradores~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[0]~0_combout\,
	ena => \Registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~27_q\);

\Registradores|registradores~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[0]~0_combout\,
	ena => \Registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~11_q\);

\Registradores|registradores~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~51_combout\ = ( \ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~35_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~27_q\ ) ) ) 
-- # ( \ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~19_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~11_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~35_q\,
	datab => \Registradores|ALT_INV_registradores~27_q\,
	datac => \Registradores|ALT_INV_registradores~19_q\,
	datad => \Registradores|ALT_INV_registradores~11_q\,
	datae => \ROM|ALT_INV_memoriaROM~2_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~4_combout\,
	combout => \Registradores|registradores~51_combout\);

\ALU|outULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|outULA~0_combout\ = (\Registradores|registradores~43_combout\ & ((!\Controle|Mux0~0_combout\ & ((\Registradores|registradores~51_combout\))) # (\Controle|Mux0~0_combout\ & (\ROM|memoriaROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000110001000100000011000100010000001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~2_combout\,
	datab => \Registradores|ALT_INV_registradores~43_combout\,
	datac => \Registradores|ALT_INV_registradores~51_combout\,
	datad => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \ALU|outULA~0_combout\);

\Registradores|registradores~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[2]~2_combout\,
	ena => \Registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~37_q\);

\Registradores|registradores~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[2]~2_combout\,
	ena => \Registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~29_q\);

\Registradores|registradores~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[2]~2_combout\,
	ena => \Registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~13_q\);

\Registradores|registradores~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~53_combout\ = ( \ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~37_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~29_q\ ) ) ) 
-- # ( \ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~21_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~37_q\,
	datab => \Registradores|ALT_INV_registradores~29_q\,
	datac => \Registradores|ALT_INV_registradores~21_q\,
	datad => \Registradores|ALT_INV_registradores~13_q\,
	datae => \ROM|ALT_INV_memoriaROM~2_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~4_combout\,
	combout => \Registradores|registradores~53_combout\);

\Mult1|out_data[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1|out_data[2]~2_combout\ = (\Registradores|registradores~53_combout\ & !\Controle|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~53_combout\,
	datab => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \Mult1|out_data[2]~2_combout\);

\ALU|soma|sum2|sum1|p_o|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|soma|sum2|sum1|p_o|out_port~0_combout\ = ( \Mult1|out_data[2]~2_combout\ & ( !\Registradores|registradores~45_combout\ $ (((!\Registradores|registradores~44_combout\ & (\ALU|outULA~0_combout\ & \Mult1|out_data[1]~1_combout\)) # 
-- (\Registradores|registradores~44_combout\ & ((\Mult1|out_data[1]~1_combout\) # (\ALU|outULA~0_combout\))))) ) ) # ( !\Mult1|out_data[2]~2_combout\ & ( !\Registradores|registradores~45_combout\ $ (((!\Registradores|registradores~44_combout\ & 
-- ((!\ALU|outULA~0_combout\) # (!\Mult1|out_data[1]~1_combout\))) # (\Registradores|registradores~44_combout\ & (!\ALU|outULA~0_combout\ & !\Mult1|out_data[1]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100110010011001001100110110011011001100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~44_combout\,
	datab => \Registradores|ALT_INV_registradores~45_combout\,
	datac => \ALU|ALT_INV_outULA~0_combout\,
	datad => \Mult1|ALT_INV_out_data[1]~1_combout\,
	datae => \Mult1|ALT_INV_out_data[2]~2_combout\,
	combout => \ALU|soma|sum2|sum1|p_o|out_port~0_combout\);

\ROM|memoriaROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~0_combout\ = (!\ProgramCounter|out_port\(3) & ((!\ProgramCounter|out_port\(0)) # ((!\ProgramCounter|out_port\(1) & \ProgramCounter|out_port\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111000000000101011100000000010101110000000001010111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(0),
	datab => \ProgramCounter|ALT_INV_out_port\(1),
	datac => \ProgramCounter|ALT_INV_out_port\(2),
	datad => \ProgramCounter|ALT_INV_out_port\(3),
	combout => \ROM|memoriaROM~0_combout\);

\ROM|memoriaROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~18_combout\ = (!\ROM|memoriaROM~0_combout\) # (!\ROM|memoriaROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~0_combout\,
	datab => \ROM|ALT_INV_memoriaROM~1_combout\,
	combout => \ROM|memoriaROM~18_combout\);

\ALU|sub|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|Add0~1_sumout\ = SUM(( (!\Controle|Mux0~0_combout\ & (((!\Registradores|registradores~51_combout\)))) # (\Controle|Mux0~0_combout\ & (((\ROM|memoriaROM~18_combout\)) # (\ProgramCounter|out_port\(7)))) ) + ( VCC ) + ( !VCC ))
-- \ALU|sub|Add0~2\ = CARRY(( (!\Controle|Mux0~0_combout\ & (((!\Registradores|registradores~51_combout\)))) # (\Controle|Mux0~0_combout\ & (((\ROM|memoriaROM~18_combout\)) # (\ProgramCounter|out_port\(7)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Mux0~0_combout\,
	datab => \ProgramCounter|ALT_INV_out_port\(7),
	datac => \ROM|ALT_INV_memoriaROM~18_combout\,
	datad => \Registradores|ALT_INV_registradores~51_combout\,
	cin => GND,
	sumout => \ALU|sub|Add0~1_sumout\,
	cout => \ALU|sub|Add0~2\);

\ROM|memoriaROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~19_combout\ = (!\ROM|memoriaROM~1_combout\) # (!\ROM|memoriaROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~1_combout\,
	datab => \ROM|ALT_INV_memoriaROM~3_combout\,
	combout => \ROM|memoriaROM~19_combout\);

\ALU|sub|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|Add0~5_sumout\ = SUM(( (!\Controle|Mux0~0_combout\ & (((!\Registradores|registradores~52_combout\)))) # (\Controle|Mux0~0_combout\ & (((\ROM|memoriaROM~19_combout\)) # (\ProgramCounter|out_port\(7)))) ) + ( GND ) + ( \ALU|sub|Add0~2\ ))
-- \ALU|sub|Add0~6\ = CARRY(( (!\Controle|Mux0~0_combout\ & (((!\Registradores|registradores~52_combout\)))) # (\Controle|Mux0~0_combout\ & (((\ROM|memoriaROM~19_combout\)) # (\ProgramCounter|out_port\(7)))) ) + ( GND ) + ( \ALU|sub|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Mux0~0_combout\,
	datab => \ProgramCounter|ALT_INV_out_port\(7),
	datac => \ROM|ALT_INV_memoriaROM~19_combout\,
	datad => \Registradores|ALT_INV_registradores~52_combout\,
	cin => \ALU|sub|Add0~2\,
	sumout => \ALU|sub|Add0~5_sumout\,
	cout => \ALU|sub|Add0~6\);

\ALU|sub|saia|sum1|saida|out_port\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|saia|sum1|saida|out_port~combout\ = (!\Registradores|registradores~44_combout\ & (\Registradores|registradores~43_combout\ & (\ALU|sub|Add0~1_sumout\ & \ALU|sub|Add0~5_sumout\))) # (\Registradores|registradores~44_combout\ & 
-- (((\Registradores|registradores~43_combout\ & \ALU|sub|Add0~1_sumout\)) # (\ALU|sub|Add0~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100000001001101110000000100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~43_combout\,
	datab => \Registradores|ALT_INV_registradores~44_combout\,
	datac => \ALU|sub|ALT_INV_Add0~1_sumout\,
	datad => \ALU|sub|ALT_INV_Add0~5_sumout\,
	combout => \ALU|sub|saia|sum1|saida|out_port~combout\);

\ALU|sub|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|Add0~9_sumout\ = SUM(( (!\Registradores|registradores~53_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~6\ ))
-- \ALU|sub|Add0~10\ = CARRY(( (!\Registradores|registradores~53_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Mux0~0_combout\,
	datad => \Registradores|ALT_INV_registradores~53_combout\,
	cin => \ALU|sub|Add0~6\,
	sumout => \ALU|sub|Add0~9_sumout\,
	cout => \ALU|sub|Add0~10\);

\ALU|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux8~2_combout\ = ( \Registradores|registradores~45_combout\ & ( \ALU|sub|Add0~9_sumout\ & ( (!\ROM|memoriaROM~15_combout\ & ((!\ROM|memoriaROM~9_combout\) # ((\Mult1|out_data[2]~2_combout\ & !\ROM|memoriaROM~11_combout\)))) # 
-- (\ROM|memoriaROM~15_combout\ & ((!\ROM|memoriaROM~11_combout\ & ((\ROM|memoriaROM~9_combout\))) # (\ROM|memoriaROM~11_combout\ & (\Mult1|out_data[2]~2_combout\)))) ) ) ) # ( !\Registradores|registradores~45_combout\ & ( \ALU|sub|Add0~9_sumout\ & ( 
-- (!\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~15_combout\ & !\ROM|memoriaROM~9_combout\)))) # (\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~15_combout\ & \ROM|memoriaROM~9_combout\)) # (\Mult1|out_data[2]~2_combout\))) ) ) ) # ( 
-- \Registradores|registradores~45_combout\ & ( !\ALU|sub|Add0~9_sumout\ & ( (!\ROM|memoriaROM~15_combout\ & ((!\ROM|memoriaROM~9_combout\) # ((\Mult1|out_data[2]~2_combout\ & !\ROM|memoriaROM~11_combout\)))) # (\ROM|memoriaROM~15_combout\ & 
-- (\Mult1|out_data[2]~2_combout\ & (\ROM|memoriaROM~11_combout\))) ) ) ) # ( !\Registradores|registradores~45_combout\ & ( !\ALU|sub|Add0~9_sumout\ & ( (!\ROM|memoriaROM~11_combout\ & ((!\ROM|memoriaROM~15_combout\ $ (\ROM|memoriaROM~9_combout\)))) # 
-- (\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~15_combout\ & \ROM|memoriaROM~9_combout\)) # (\Mult1|out_data[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000100111101111100010100000111010001001100011111000101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|ALT_INV_out_data[2]~2_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~15_combout\,
	datad => \ROM|ALT_INV_memoriaROM~9_combout\,
	datae => \Registradores|ALT_INV_registradores~45_combout\,
	dataf => \ALU|sub|ALT_INV_Add0~9_sumout\,
	combout => \ALU|Mux8~2_combout\);

\Registradores|registradores~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[6]~6_combout\,
	ena => \Registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~41_q\);

\Registradores|registradores~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[6]~6_combout\,
	ena => \Registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~33_q\);

\Registradores|registradores~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[6]~6_combout\,
	ena => \Registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~17_q\);

\Registradores|registradores~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~57_combout\ = ( \ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~41_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~33_q\ ) ) ) 
-- # ( \ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~25_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~41_q\,
	datab => \Registradores|ALT_INV_registradores~33_q\,
	datac => \Registradores|ALT_INV_registradores~25_q\,
	datad => \Registradores|ALT_INV_registradores~17_q\,
	datae => \ROM|ALT_INV_memoriaROM~2_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~4_combout\,
	combout => \Registradores|registradores~57_combout\);

\Registradores|registradores~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[5]~5_combout\,
	ena => \Registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~40_q\);

\Registradores|registradores~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[5]~5_combout\,
	ena => \Registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~32_q\);

\Registradores|registradores~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[5]~5_combout\,
	ena => \Registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~16_q\);

\Registradores|registradores~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~56_combout\ = ( \ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~40_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~32_q\ ) ) ) 
-- # ( \ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~24_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~40_q\,
	datab => \Registradores|ALT_INV_registradores~32_q\,
	datac => \Registradores|ALT_INV_registradores~24_q\,
	datad => \Registradores|ALT_INV_registradores~16_q\,
	datae => \ROM|ALT_INV_memoriaROM~2_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~4_combout\,
	combout => \Registradores|registradores~56_combout\);

\Registradores|registradores~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[4]~4_combout\,
	ena => \Registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~39_q\);

\Registradores|registradores~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[4]~4_combout\,
	ena => \Registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~31_q\);

\Registradores|registradores~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[4]~4_combout\,
	ena => \Registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~15_q\);

\Registradores|registradores~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~55_combout\ = ( \ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~39_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~31_q\ ) ) ) 
-- # ( \ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~23_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~39_q\,
	datab => \Registradores|ALT_INV_registradores~31_q\,
	datac => \Registradores|ALT_INV_registradores~23_q\,
	datad => \Registradores|ALT_INV_registradores~15_q\,
	datae => \ROM|ALT_INV_memoriaROM~2_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~4_combout\,
	combout => \Registradores|registradores~55_combout\);

\Registradores|registradores~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[3]~3_combout\,
	ena => \Registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~38_q\);

\Registradores|registradores~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[3]~3_combout\,
	ena => \Registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~30_q\);

\Registradores|registradores~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[3]~3_combout\,
	ena => \Registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~14_q\);

\Registradores|registradores~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~54_combout\ = ( \ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~38_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~30_q\ ) ) ) 
-- # ( \ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~22_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~38_q\,
	datab => \Registradores|ALT_INV_registradores~30_q\,
	datac => \Registradores|ALT_INV_registradores~22_q\,
	datad => \Registradores|ALT_INV_registradores~14_q\,
	datae => \ROM|ALT_INV_memoriaROM~2_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~4_combout\,
	combout => \Registradores|registradores~54_combout\);

\ALU|sub|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|Add0~13_sumout\ = SUM(( (!\Registradores|registradores~54_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~10\ ))
-- \ALU|sub|Add0~14\ = CARRY(( (!\Registradores|registradores~54_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Mux0~0_combout\,
	datad => \Registradores|ALT_INV_registradores~54_combout\,
	cin => \ALU|sub|Add0~10\,
	sumout => \ALU|sub|Add0~13_sumout\,
	cout => \ALU|sub|Add0~14\);

\ALU|sub|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|Add0~17_sumout\ = SUM(( (!\Registradores|registradores~55_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~14\ ))
-- \ALU|sub|Add0~18\ = CARRY(( (!\Registradores|registradores~55_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Mux0~0_combout\,
	datad => \Registradores|ALT_INV_registradores~55_combout\,
	cin => \ALU|sub|Add0~14\,
	sumout => \ALU|sub|Add0~17_sumout\,
	cout => \ALU|sub|Add0~18\);

\ALU|sub|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|Add0~21_sumout\ = SUM(( (!\Registradores|registradores~56_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~18\ ))
-- \ALU|sub|Add0~22\ = CARRY(( (!\Registradores|registradores~56_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Mux0~0_combout\,
	datad => \Registradores|ALT_INV_registradores~56_combout\,
	cin => \ALU|sub|Add0~18\,
	sumout => \ALU|sub|Add0~21_sumout\,
	cout => \ALU|sub|Add0~22\);

\ALU|sub|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|Add0~25_sumout\ = SUM(( (!\Registradores|registradores~57_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~22\ ))
-- \ALU|sub|Add0~26\ = CARRY(( (!\Registradores|registradores~57_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Mux0~0_combout\,
	datad => \Registradores|ALT_INV_registradores~57_combout\,
	cin => \ALU|sub|Add0~22\,
	sumout => \ALU|sub|Add0~25_sumout\,
	cout => \ALU|sub|Add0~26\);

\ALU|sub|saia|sum5|carryout|out_port\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|saia|sum5|carryout|out_port~combout\ = (\Registradores|registradores~48_combout\ & \ALU|sub|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~48_combout\,
	datab => \ALU|sub|ALT_INV_Add0~21_sumout\,
	combout => \ALU|sub|saia|sum5|carryout|out_port~combout\);

\Mult1|out_data[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1|out_data[6]~6_combout\ = (\Registradores|registradores~57_combout\ & !\Controle|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~57_combout\,
	datab => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \Mult1|out_data[6]~6_combout\);

\ALU|Mux4~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux4~7_combout\ = ( !\ROM|memoriaROM~15_combout\ & ( ((!\ROM|memoriaROM~11_combout\ & (((\Mult1|out_data[6]~6_combout\)))) # (\ROM|memoriaROM~11_combout\ & ((!\Registradores|registradores~49_combout\ & ((\Mult1|out_data[6]~6_combout\) # 
-- (\ROM|memoriaROM~9_combout\))) # (\Registradores|registradores~49_combout\ & (!\ROM|memoriaROM~9_combout\))))) ) ) # ( \ROM|memoriaROM~15_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (!\ALU|sub|Add0~25_sumout\ $ (!\Registradores|registradores~49_combout\ 
-- $ ((\ALU|sub|saia|sum5|carryout|out_port~combout\))))) # (\ROM|memoriaROM~11_combout\ & ((((\Mult1|out_data[6]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000111100011010010000000011111111111111000110100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|sub|ALT_INV_Add0~25_sumout\,
	datab => \Registradores|ALT_INV_registradores~49_combout\,
	datac => \ALU|sub|saia|sum5|carryout|ALT_INV_out_port~combout\,
	datad => \ROM|ALT_INV_memoriaROM~11_combout\,
	datae => \ROM|ALT_INV_memoriaROM~15_combout\,
	dataf => \Mult1|ALT_INV_out_data[6]~6_combout\,
	datag => \ROM|ALT_INV_memoriaROM~9_combout\,
	combout => \ALU|Mux4~7_combout\);

\ALU|sub|saia|sum2|saida|out_port\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|saia|sum2|saida|out_port~combout\ = ( \ALU|sub|Add0~5_sumout\ & ( \ALU|sub|Add0~9_sumout\ & ( (((\Registradores|registradores~43_combout\ & \ALU|sub|Add0~1_sumout\)) # (\Registradores|registradores~45_combout\)) # 
-- (\Registradores|registradores~44_combout\) ) ) ) # ( !\ALU|sub|Add0~5_sumout\ & ( \ALU|sub|Add0~9_sumout\ & ( ((\Registradores|registradores~43_combout\ & (\Registradores|registradores~44_combout\ & \ALU|sub|Add0~1_sumout\))) # 
-- (\Registradores|registradores~45_combout\) ) ) ) # ( \ALU|sub|Add0~5_sumout\ & ( !\ALU|sub|Add0~9_sumout\ & ( (\Registradores|registradores~45_combout\ & (((\Registradores|registradores~43_combout\ & \ALU|sub|Add0~1_sumout\)) # 
-- (\Registradores|registradores~44_combout\))) ) ) ) # ( !\ALU|sub|Add0~5_sumout\ & ( !\ALU|sub|Add0~9_sumout\ & ( (\Registradores|registradores~43_combout\ & (\Registradores|registradores~44_combout\ & (\Registradores|registradores~45_combout\ & 
-- \ALU|sub|Add0~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000110000011100001111000111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~43_combout\,
	datab => \Registradores|ALT_INV_registradores~44_combout\,
	datac => \Registradores|ALT_INV_registradores~45_combout\,
	datad => \ALU|sub|ALT_INV_Add0~1_sumout\,
	datae => \ALU|sub|ALT_INV_Add0~5_sumout\,
	dataf => \ALU|sub|ALT_INV_Add0~9_sumout\,
	combout => \ALU|sub|saia|sum2|saida|out_port~combout\);

\ALU|sub|saia|sum5|sum|p_o|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ = !\Registradores|registradores~48_combout\ $ (!\ALU|sub|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~48_combout\,
	datab => \ALU|sub|ALT_INV_Add0~21_sumout\,
	combout => \ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\);

\ALU|sub|saia|sum5|sum1|p_an|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|saia|sum5|sum1|p_an|out_port~0_combout\ = ( \ALU|sub|Add0~17_sumout\ & ( \ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ & ( ((!\Registradores|registradores~46_combout\ & (\ALU|sub|saia|sum2|saida|out_port~combout\ & \ALU|sub|Add0~13_sumout\)) # 
-- (\Registradores|registradores~46_combout\ & ((\ALU|sub|Add0~13_sumout\) # (\ALU|sub|saia|sum2|saida|out_port~combout\)))) # (\Registradores|registradores~47_combout\) ) ) ) # ( !\ALU|sub|Add0~17_sumout\ & ( \ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ & 
-- ( (\Registradores|registradores~47_combout\ & ((!\Registradores|registradores~46_combout\ & (\ALU|sub|saia|sum2|saida|out_port~combout\ & \ALU|sub|Add0~13_sumout\)) # (\Registradores|registradores~46_combout\ & ((\ALU|sub|Add0~13_sumout\) # 
-- (\ALU|sub|saia|sum2|saida|out_port~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~46_combout\,
	datab => \Registradores|ALT_INV_registradores~47_combout\,
	datac => \ALU|sub|saia|sum2|saida|ALT_INV_out_port~combout\,
	datad => \ALU|sub|ALT_INV_Add0~13_sumout\,
	datae => \ALU|sub|ALT_INV_Add0~17_sumout\,
	dataf => \ALU|sub|saia|sum5|sum|p_o|ALT_INV_out_port~0_combout\,
	combout => \ALU|sub|saia|sum5|sum1|p_an|out_port~0_combout\);

\ALU|sub|saia|sum6|sum|p_o|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|saia|sum6|sum|p_o|out_port~0_combout\ = !\Registradores|registradores~49_combout\ $ (!\ALU|sub|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~49_combout\,
	datab => \ALU|sub|ALT_INV_Add0~25_sumout\,
	combout => \ALU|sub|saia|sum6|sum|p_o|out_port~0_combout\);

\ALU|soma|sum3|sum|p_o|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|soma|sum3|sum|p_o|out_port~0_combout\ = (\Registradores|registradores~46_combout\ & (\Registradores|registradores~54_combout\ & !\Controle|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~46_combout\,
	datab => \Registradores|ALT_INV_registradores~54_combout\,
	datac => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \ALU|soma|sum3|sum|p_o|out_port~0_combout\);

\Mult1|out_data[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1|out_data[4]~4_combout\ = (\Registradores|registradores~55_combout\ & !\Controle|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~55_combout\,
	datab => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \Mult1|out_data[4]~4_combout\);

\ALU|soma|sum3|sum|p_o|out_port~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|soma|sum3|sum|p_o|out_port~1_combout\ = !\Registradores|registradores~46_combout\ $ (((!\Registradores|registradores~54_combout\) # (\Controle|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010101100101011001010110010101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~46_combout\,
	datab => \Registradores|ALT_INV_registradores~54_combout\,
	datac => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \ALU|soma|sum3|sum|p_o|out_port~1_combout\);

\ALU|soma|sum3|sum1|p_an|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|soma|sum3|sum1|p_an|out_port~0_combout\ = ( \Mult1|out_data[2]~2_combout\ & ( \ALU|soma|sum3|sum|p_o|out_port~1_combout\ & ( ((!\Registradores|registradores~44_combout\ & (\ALU|outULA~0_combout\ & \Mult1|out_data[1]~1_combout\)) # 
-- (\Registradores|registradores~44_combout\ & ((\Mult1|out_data[1]~1_combout\) # (\ALU|outULA~0_combout\)))) # (\Registradores|registradores~45_combout\) ) ) ) # ( !\Mult1|out_data[2]~2_combout\ & ( \ALU|soma|sum3|sum|p_o|out_port~1_combout\ & ( 
-- (\Registradores|registradores~45_combout\ & ((!\Registradores|registradores~44_combout\ & (\ALU|outULA~0_combout\ & \Mult1|out_data[1]~1_combout\)) # (\Registradores|registradores~44_combout\ & ((\Mult1|out_data[1]~1_combout\) # 
-- (\ALU|outULA~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~44_combout\,
	datab => \Registradores|ALT_INV_registradores~45_combout\,
	datac => \ALU|ALT_INV_outULA~0_combout\,
	datad => \Mult1|ALT_INV_out_data[1]~1_combout\,
	datae => \Mult1|ALT_INV_out_data[2]~2_combout\,
	dataf => \ALU|soma|sum3|sum|p_o|ALT_INV_out_port~1_combout\,
	combout => \ALU|soma|sum3|sum1|p_an|out_port~0_combout\);

\Mult1|out_data[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1|out_data[5]~5_combout\ = (\Registradores|registradores~56_combout\ & !\Controle|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~56_combout\,
	datab => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \Mult1|out_data[5]~5_combout\);

\ALU|soma|sum5|saida|out_port\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|soma|sum5|saida|out_port~combout\ = ( \ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( \Mult1|out_data[5]~5_combout\ & ( (!\Registradores|registradores~47_combout\ & (!\Registradores|registradores~48_combout\ & !\Mult1|out_data[4]~4_combout\)) ) ) ) 
-- # ( !\ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( \Mult1|out_data[5]~5_combout\ & ( (!\Registradores|registradores~48_combout\ & ((!\Registradores|registradores~47_combout\ & ((!\ALU|soma|sum3|sum|p_o|out_port~0_combout\) # 
-- (!\Mult1|out_data[4]~4_combout\))) # (\Registradores|registradores~47_combout\ & (!\ALU|soma|sum3|sum|p_o|out_port~0_combout\ & !\Mult1|out_data[4]~4_combout\)))) ) ) ) # ( \ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( !\Mult1|out_data[5]~5_combout\ & 
-- ( (!\Registradores|registradores~48_combout\) # ((!\Registradores|registradores~47_combout\ & !\Mult1|out_data[4]~4_combout\)) ) ) ) # ( !\ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( !\Mult1|out_data[5]~5_combout\ & ( 
-- (!\Registradores|registradores~48_combout\) # ((!\Registradores|registradores~47_combout\ & ((!\ALU|soma|sum3|sum|p_o|out_port~0_combout\) # (!\Mult1|out_data[4]~4_combout\))) # (\Registradores|registradores~47_combout\ & 
-- (!\ALU|soma|sum3|sum|p_o|out_port~0_combout\ & !\Mult1|out_data[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100111011101100110011001000100000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~47_combout\,
	datab => \Registradores|ALT_INV_registradores~48_combout\,
	datac => \ALU|soma|sum3|sum|p_o|ALT_INV_out_port~0_combout\,
	datad => \Mult1|ALT_INV_out_data[4]~4_combout\,
	datae => \ALU|soma|sum3|sum1|p_an|ALT_INV_out_port~0_combout\,
	dataf => \Mult1|ALT_INV_out_data[5]~5_combout\,
	combout => \ALU|soma|sum5|saida|out_port~combout\);

\ALU|soma|sum6|sum|p_o|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|soma|sum6|sum|p_o|out_port~0_combout\ = !\Registradores|registradores~49_combout\ $ (((!\Registradores|registradores~57_combout\) # (\Controle|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010101100101011001010110010101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~49_combout\,
	datab => \Registradores|ALT_INV_registradores~57_combout\,
	datac => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \ALU|soma|sum6|sum|p_o|out_port~0_combout\);

\ALU|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux4~2_combout\ = ( \ALU|soma|sum6|sum|p_o|out_port~0_combout\ & ( \ALU|Mux4~7_combout\ & ( (!\ROM|memoriaROM~9_combout\ & (((\ALU|soma|sum5|saida|out_port~combout\)))) # (\ROM|memoriaROM~9_combout\ & 
-- ((!\ALU|sub|saia|sum5|sum1|p_an|out_port~0_combout\) # ((!\ALU|sub|saia|sum6|sum|p_o|out_port~0_combout\)))) ) ) ) # ( !\ALU|soma|sum6|sum|p_o|out_port~0_combout\ & ( \ALU|Mux4~7_combout\ & ( (!\ROM|memoriaROM~9_combout\ & 
-- (((!\ALU|soma|sum5|saida|out_port~combout\)))) # (\ROM|memoriaROM~9_combout\ & ((!\ALU|sub|saia|sum5|sum1|p_an|out_port~0_combout\) # ((!\ALU|sub|saia|sum6|sum|p_o|out_port~0_combout\)))) ) ) ) # ( \ALU|soma|sum6|sum|p_o|out_port~0_combout\ & ( 
-- !\ALU|Mux4~7_combout\ & ( (!\ROM|memoriaROM~9_combout\ & (((\ALU|soma|sum5|saida|out_port~combout\)))) # (\ROM|memoriaROM~9_combout\ & (\ALU|sub|saia|sum5|sum1|p_an|out_port~0_combout\ & (!\ALU|sub|saia|sum6|sum|p_o|out_port~0_combout\))) ) ) ) # ( 
-- !\ALU|soma|sum6|sum|p_o|out_port~0_combout\ & ( !\ALU|Mux4~7_combout\ & ( (!\ROM|memoriaROM~9_combout\ & (((!\ALU|soma|sum5|saida|out_port~combout\)))) # (\ROM|memoriaROM~9_combout\ & (\ALU|sub|saia|sum5|sum1|p_an|out_port~0_combout\ & 
-- (!\ALU|sub|saia|sum6|sum|p_o|out_port~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101000010000000100001011101011111110010101000101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ALU|sub|saia|sum5|sum1|p_an|ALT_INV_out_port~0_combout\,
	datac => \ALU|sub|saia|sum6|sum|p_o|ALT_INV_out_port~0_combout\,
	datad => \ALU|soma|sum5|saida|ALT_INV_out_port~combout\,
	datae => \ALU|soma|sum6|sum|p_o|ALT_INV_out_port~0_combout\,
	dataf => \ALU|ALT_INV_Mux4~7_combout\,
	combout => \ALU|Mux4~2_combout\);

\Controle|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Mux3~0_combout\ = (\ROM|memoriaROM~11_combout\ & ((!\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~13_combout\ & \ROM|memoriaROM~15_combout\)) # (\ROM|memoriaROM~9_combout\ & (!\ROM|memoriaROM~13_combout\ & !\ROM|memoriaROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000010000100000000001000010000000000100001000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~13_combout\,
	datad => \ROM|ALT_INV_memoriaROM~15_combout\,
	combout => \Controle|Mux3~0_combout\);

\ROM|memoriaROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~16_combout\ = (\ROM|memoriaROM~1_combout\ & \ROM|memoriaROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~1_combout\,
	datab => \ROM|ALT_INV_memoriaROM~10_combout\,
	combout => \ROM|memoriaROM~16_combout\);

\ROM|memoriaROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~17_combout\ = (\ROM|memoriaROM~1_combout\ & \ROM|memoriaROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~1_combout\,
	datab => \ROM|ALT_INV_memoriaROM~8_combout\,
	combout => \ROM|memoriaROM~17_combout\);

\Registradores|registradores~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[7]~7_combout\,
	ena => \Registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~42_q\);

\Registradores|registradores~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[7]~7_combout\,
	ena => \Registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~34_q\);

\Registradores|registradores~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[7]~7_combout\,
	ena => \Registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~18_q\);

\Registradores|registradores~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~58_combout\ = ( \ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~42_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( \ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~34_q\ ) ) ) 
-- # ( \ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~26_q\ ) ) ) # ( !\ROM|memoriaROM~2_combout\ & ( !\ROM|memoriaROM~4_combout\ & ( \Registradores|registradores~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~42_q\,
	datab => \Registradores|ALT_INV_registradores~34_q\,
	datac => \Registradores|ALT_INV_registradores~26_q\,
	datad => \Registradores|ALT_INV_registradores~18_q\,
	datae => \ROM|ALT_INV_memoriaROM~2_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~4_combout\,
	combout => \Registradores|registradores~58_combout\);

\Mult1|out_data[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1|out_data[7]~7_combout\ = (\Registradores|registradores~58_combout\ & !\Controle|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~58_combout\,
	datab => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \Mult1|out_data[7]~7_combout\);

\Mult1|out_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1|out_data[0]~0_combout\ = (!\Controle|Mux0~0_combout\ & ((\Registradores|registradores~51_combout\))) # (\Controle|Mux0~0_combout\ & (\ROM|memoriaROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~2_combout\,
	datab => \Registradores|ALT_INV_registradores~51_combout\,
	datac => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \Mult1|out_data[0]~0_combout\);

\Mult1|out_data[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1|out_data[3]~3_combout\ = (\Registradores|registradores~54_combout\ & !\Controle|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~54_combout\,
	datab => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \Mult1|out_data[3]~3_combout\);

\ALU|multi|Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \ALU|multi|Mult0~mac_AX_bus\,
	ay => \ALU|multi|Mult0~mac_AY_bus\,
	resulta => \ALU|multi|Mult0~mac_RESULTA_bus\);

\ALU|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux3~2_combout\ = ( \Registradores|registradores~50_combout\ & ( \ALU|multi|Produto\(7) & ( ((!\ROM|memoriaROM~17_combout\) # ((!\ROM|memoriaROM~16_combout\ & \Mult1|out_data[7]~7_combout\))) # (\ProgramCounter|out_port\(7)) ) ) ) # ( 
-- !\Registradores|registradores~50_combout\ & ( \ALU|multi|Produto\(7) & ( ((!\ROM|memoriaROM~16_combout\ & (!\ROM|memoriaROM~17_combout\)) # (\ROM|memoriaROM~16_combout\ & ((\Mult1|out_data[7]~7_combout\) # (\ROM|memoriaROM~17_combout\)))) # 
-- (\ProgramCounter|out_port\(7)) ) ) ) # ( \Registradores|registradores~50_combout\ & ( !\ALU|multi|Produto\(7) & ( (!\ProgramCounter|out_port\(7) & ((!\ROM|memoriaROM~16_combout\ & (\ROM|memoriaROM~17_combout\ & \Mult1|out_data[7]~7_combout\)) # 
-- (\ROM|memoriaROM~16_combout\ & (!\ROM|memoriaROM~17_combout\)))) ) ) ) # ( !\Registradores|registradores~50_combout\ & ( !\ALU|multi|Produto\(7) & ( (\ROM|memoriaROM~16_combout\ & (!\ProgramCounter|out_port\(7) & ((\Mult1|out_data[7]~7_combout\) # 
-- (\ROM|memoriaROM~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100010000000100100010110111111101111111001111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~16_combout\,
	datab => \ProgramCounter|ALT_INV_out_port\(7),
	datac => \ROM|ALT_INV_memoriaROM~17_combout\,
	datad => \Mult1|ALT_INV_out_data[7]~7_combout\,
	datae => \Registradores|ALT_INV_registradores~50_combout\,
	dataf => \ALU|multi|ALT_INV_Produto\(7),
	combout => \ALU|Mux3~2_combout\);

\ALU|sub|saia|sum3|saida|out_port\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|saia|sum3|saida|out_port~combout\ = ( \ALU|sub|Add0~13_sumout\ & ( ((!\Registradores|registradores~45_combout\ & (\ALU|sub|saia|sum1|saida|out_port~combout\ & \ALU|sub|Add0~9_sumout\)) # (\Registradores|registradores~45_combout\ & 
-- ((\ALU|sub|Add0~9_sumout\) # (\ALU|sub|saia|sum1|saida|out_port~combout\)))) # (\Registradores|registradores~46_combout\) ) ) # ( !\ALU|sub|Add0~13_sumout\ & ( (\Registradores|registradores~46_combout\ & ((!\Registradores|registradores~45_combout\ & 
-- (\ALU|sub|saia|sum1|saida|out_port~combout\ & \ALU|sub|Add0~9_sumout\)) # (\Registradores|registradores~45_combout\ & ((\ALU|sub|Add0~9_sumout\) # (\ALU|sub|saia|sum1|saida|out_port~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011001101110111111100000001000100110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~45_combout\,
	datab => \Registradores|ALT_INV_registradores~46_combout\,
	datac => \ALU|sub|saia|sum1|saida|ALT_INV_out_port~combout\,
	datad => \ALU|sub|ALT_INV_Add0~9_sumout\,
	datae => \ALU|sub|ALT_INV_Add0~13_sumout\,
	combout => \ALU|sub|saia|sum3|saida|out_port~combout\);

\ALU|sub|saia|sum5|saida|out_port\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|saia|sum5|saida|out_port~combout\ = ( \ALU|sub|Add0~21_sumout\ & ( ((!\Registradores|registradores~47_combout\ & (\ALU|sub|saia|sum3|saida|out_port~combout\ & \ALU|sub|Add0~17_sumout\)) # (\Registradores|registradores~47_combout\ & 
-- ((\ALU|sub|Add0~17_sumout\) # (\ALU|sub|saia|sum3|saida|out_port~combout\)))) # (\Registradores|registradores~48_combout\) ) ) # ( !\ALU|sub|Add0~21_sumout\ & ( (\Registradores|registradores~48_combout\ & ((!\Registradores|registradores~47_combout\ & 
-- (\ALU|sub|saia|sum3|saida|out_port~combout\ & \ALU|sub|Add0~17_sumout\)) # (\Registradores|registradores~47_combout\ & ((\ALU|sub|Add0~17_sumout\) # (\ALU|sub|saia|sum3|saida|out_port~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011001101110111111100000001000100110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~47_combout\,
	datab => \Registradores|ALT_INV_registradores~48_combout\,
	datac => \ALU|sub|saia|sum3|saida|ALT_INV_out_port~combout\,
	datad => \ALU|sub|ALT_INV_Add0~17_sumout\,
	datae => \ALU|sub|ALT_INV_Add0~21_sumout\,
	combout => \ALU|sub|saia|sum5|saida|out_port~combout\);

\ALU|soma|sum7|sum|p_o|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|soma|sum7|sum|p_o|out_port~0_combout\ = !\Registradores|registradores~50_combout\ $ (((!\Registradores|registradores~58_combout\) # (\Controle|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010101100101011001010110010101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~50_combout\,
	datab => \Registradores|ALT_INV_registradores~58_combout\,
	datac => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \ALU|soma|sum7|sum|p_o|out_port~0_combout\);

\ALU|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux3~3_combout\ = (\ROM|memoriaROM~11_combout\ & (\Registradores|registradores~58_combout\ & !\Controle|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~11_combout\,
	datab => \Registradores|ALT_INV_registradores~58_combout\,
	datac => \Controle|ALT_INV_Mux0~0_combout\,
	combout => \ALU|Mux3~3_combout\);

\ALU|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux3~4_combout\ = ( !\ALU|Mux3~3_combout\ & ( \Controle|Mux6~0_combout\ ) ) # ( !\ALU|Mux3~3_combout\ & ( !\Controle|Mux6~0_combout\ & ( !\ALU|soma|sum7|sum|p_o|out_port~0_combout\ $ (((!\Registradores|registradores~49_combout\ & 
-- (\Mult1|out_data[6]~6_combout\ & !\ALU|soma|sum5|saida|out_port~combout\)) # (\Registradores|registradores~49_combout\ & ((!\ALU|soma|sum5|saida|out_port~combout\) # (\Mult1|out_data[6]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111001110001000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~49_combout\,
	datab => \Mult1|ALT_INV_out_data[6]~6_combout\,
	datac => \ALU|soma|sum5|saida|ALT_INV_out_port~combout\,
	datad => \ALU|soma|sum7|sum|p_o|ALT_INV_out_port~0_combout\,
	datae => \ALU|ALT_INV_Mux3~3_combout\,
	dataf => \Controle|ALT_INV_Mux6~0_combout\,
	combout => \ALU|Mux3~4_combout\);

\ALU|sub|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|sub|Add0~29_sumout\ = SUM(( (!\Registradores|registradores~58_combout\) # (\Controle|Mux0~0_combout\) ) + ( GND ) + ( \ALU|sub|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Mux0~0_combout\,
	datad => \Registradores|ALT_INV_registradores~58_combout\,
	cin => \ALU|sub|Add0~26\,
	sumout => \ALU|sub|Add0~29_sumout\);

\ALU|Mux3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux3~5_combout\ = (\ROM|memoriaROM~9_combout\ & (!\ROM|memoriaROM~11_combout\ & (!\Registradores|registradores~50_combout\ $ (!\ALU|sub|Add0~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000000001000100000000000100010000000000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \Registradores|ALT_INV_registradores~50_combout\,
	datad => \ALU|sub|ALT_INV_Add0~29_sumout\,
	combout => \ALU|Mux3~5_combout\);

\ALU|Mux3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux3~6_combout\ = (\ROM|memoriaROM~9_combout\ & (!\ROM|memoriaROM~11_combout\ & (!\Registradores|registradores~50_combout\ $ (\ALU|sub|Add0~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000100010000000000010001000000000001000100000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \Registradores|ALT_INV_registradores~50_combout\,
	datad => \ALU|sub|ALT_INV_Add0~29_sumout\,
	combout => \ALU|Mux3~6_combout\);

\ALU|Mux3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux3~7_combout\ = ( !\ALU|Mux3~5_combout\ & ( \ALU|Mux3~6_combout\ & ( (\ALU|Mux3~4_combout\ & ((!\Registradores|registradores~49_combout\ & ((!\ALU|sub|saia|sum5|saida|out_port~combout\) # (!\ALU|sub|Add0~25_sumout\))) # 
-- (\Registradores|registradores~49_combout\ & (!\ALU|sub|saia|sum5|saida|out_port~combout\ & !\ALU|sub|Add0~25_sumout\)))) ) ) ) # ( \ALU|Mux3~5_combout\ & ( !\ALU|Mux3~6_combout\ & ( (\ALU|Mux3~4_combout\ & ((!\Registradores|registradores~49_combout\ & 
-- (\ALU|sub|saia|sum5|saida|out_port~combout\ & \ALU|sub|Add0~25_sumout\)) # (\Registradores|registradores~49_combout\ & ((\ALU|sub|Add0~25_sumout\) # (\ALU|sub|saia|sum5|saida|out_port~combout\))))) ) ) ) # ( !\ALU|Mux3~5_combout\ & ( !\ALU|Mux3~6_combout\ 
-- & ( \ALU|Mux3~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000001011100000000111010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~49_combout\,
	datab => \ALU|sub|saia|sum5|saida|ALT_INV_out_port~combout\,
	datac => \ALU|sub|ALT_INV_Add0~25_sumout\,
	datad => \ALU|ALT_INV_Mux3~4_combout\,
	datae => \ALU|ALT_INV_Mux3~5_combout\,
	dataf => \ALU|ALT_INV_Mux3~6_combout\,
	combout => \ALU|Mux3~7_combout\);

\ALU|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux3~0_combout\ = (!\ROM|memoriaROM~11_combout\ & \Mult1|out_data[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~11_combout\,
	datab => \Mult1|ALT_INV_out_data[7]~7_combout\,
	combout => \ALU|Mux3~0_combout\);

\ALU|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux3~1_combout\ = ( \ALU|soma|sum5|saida|out_port~combout\ & ( \ALU|soma|sum7|sum|p_o|out_port~0_combout\ & ( (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~16_combout\ & ((!\Registradores|registradores~49_combout\) # 
-- (!\Mult1|out_data[6]~6_combout\)))) ) ) ) # ( !\ALU|soma|sum5|saida|out_port~combout\ & ( \ALU|soma|sum7|sum|p_o|out_port~0_combout\ & ( (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~16_combout\ & (!\Registradores|registradores~49_combout\ & 
-- !\Mult1|out_data[6]~6_combout\))) ) ) ) # ( \ALU|soma|sum5|saida|out_port~combout\ & ( !\ALU|soma|sum7|sum|p_o|out_port~0_combout\ & ( (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~16_combout\ & (\Registradores|registradores~49_combout\ & 
-- \Mult1|out_data[6]~6_combout\))) ) ) ) # ( !\ALU|soma|sum5|saida|out_port~combout\ & ( !\ALU|soma|sum7|sum|p_o|out_port~0_combout\ & ( (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~16_combout\ & ((\Mult1|out_data[6]~6_combout\) # 
-- (\Registradores|registradores~49_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000000000000100010000000000000001000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~16_combout\,
	datac => \Registradores|ALT_INV_registradores~49_combout\,
	datad => \Mult1|ALT_INV_out_data[6]~6_combout\,
	datae => \ALU|soma|sum5|saida|ALT_INV_out_port~combout\,
	dataf => \ALU|soma|sum7|sum|p_o|ALT_INV_out_port~0_combout\,
	combout => \ALU|Mux3~1_combout\);

\Mult4|out_data[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4|out_data[7]~8_combout\ = ( \ROM|memoriaROM~15_combout\ & ( (!\Controle|Mux3~0_combout\ & \ALU|Mux3~1_combout\) ) ) # ( !\ROM|memoriaROM~15_combout\ & ( (!\Controle|Mux3~0_combout\ & \ALU|Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000001100110000001100000011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Mux3~0_combout\,
	datac => \ALU|ALT_INV_Mux3~0_combout\,
	datad => \ALU|ALT_INV_Mux3~1_combout\,
	datae => \ROM|ALT_INV_memoriaROM~15_combout\,
	combout => \Mult4|out_data[7]~8_combout\);

\Mult4|out_data[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4|out_data[7]~7_combout\ = ( \ROM|memoriaROM~13_combout\ & ( \Mult4|out_data[7]~8_combout\ & ( ((!\ROM|memoriaROM~15_combout\ & (\ALU|Mux3~2_combout\)) # (\ROM|memoriaROM~15_combout\ & ((!\ALU|Mux3~7_combout\)))) # (\Controle|Mux3~0_combout\) ) ) ) # 
-- ( !\ROM|memoriaROM~13_combout\ & ( \Mult4|out_data[7]~8_combout\ ) ) # ( \ROM|memoriaROM~13_combout\ & ( !\Mult4|out_data[7]~8_combout\ & ( (!\Controle|Mux3~0_combout\ & ((!\ROM|memoriaROM~15_combout\ & (\ALU|Mux3~2_combout\)) # 
-- (\ROM|memoriaROM~15_combout\ & ((!\ALU|Mux3~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101010000011111111111111110111011111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Mux3~0_combout\,
	datab => \ALU|ALT_INV_Mux3~2_combout\,
	datac => \ALU|ALT_INV_Mux3~7_combout\,
	datad => \ROM|ALT_INV_memoriaROM~15_combout\,
	datae => \ROM|ALT_INV_memoriaROM~13_combout\,
	dataf => \Mult4|ALT_INV_out_data[7]~8_combout\,
	combout => \Mult4|out_data[7]~7_combout\);

\Registradores|registradores~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~59_combout\ = (\ROM|memoriaROM~6_combout\ & (!\ROM|memoriaROM~7_combout\ & !\Controle|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~6_combout\,
	datab => \ROM|ALT_INV_memoriaROM~7_combout\,
	datac => \Controle|ALT_INV_Mux1~0_combout\,
	combout => \Registradores|registradores~59_combout\);

\Registradores|registradores~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[7]~7_combout\,
	ena => \Registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~26_q\);

\Registradores|registradores~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~50_combout\ = ( \ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~42_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~34_q\ ) ) ) 
-- # ( \ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~26_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~26_q\,
	datab => \Registradores|ALT_INV_registradores~18_q\,
	datac => \Registradores|ALT_INV_registradores~42_q\,
	datad => \Registradores|ALT_INV_registradores~34_q\,
	datae => \ROM|ALT_INV_memoriaROM~6_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~7_combout\,
	combout => \Registradores|registradores~50_combout\);

\ALU|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux4~3_combout\ = ( !\ROM|memoriaROM~9_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~15_combout\ & ((\ALU|multi|Produto\(6)))) # (\ROM|memoriaROM~15_combout\ & (\ALU|Mux4~2_combout\))))) # (\ROM|memoriaROM~11_combout\ & 
-- (\ALU|Mux4~7_combout\)) ) ) # ( \ROM|memoriaROM~9_combout\ & ( (!\ROM|memoriaROM~11_combout\ & ((!\ROM|memoriaROM~15_combout\ & (\ALU|Mux4~7_combout\ & ((\Registradores|registradores~49_combout\)))) # (\ROM|memoriaROM~15_combout\ & 
-- (((\ALU|Mux4~2_combout\)))))) # (\ROM|memoriaROM~11_combout\ & (\ALU|Mux4~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000001010011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_Mux4~7_combout\,
	datab => \ALU|ALT_INV_Mux4~2_combout\,
	datac => \Registradores|ALT_INV_registradores~49_combout\,
	datad => \ROM|ALT_INV_memoriaROM~15_combout\,
	datae => \ROM|ALT_INV_memoriaROM~9_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~11_combout\,
	datag => \ALU|multi|ALT_INV_Produto\(6),
	combout => \ALU|Mux4~3_combout\);

\ALU|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux4~0_combout\ = ( \Mult1|out_data[6]~6_combout\ & ( \ALU|soma|sum5|saida|out_port~combout\ & ( (!\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~15_combout\)))) # (\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~9_combout\ & 
-- (\ROM|memoriaROM~15_combout\ & !\Registradores|registradores~49_combout\))) ) ) ) # ( !\Mult1|out_data[6]~6_combout\ & ( \ALU|soma|sum5|saida|out_port~combout\ & ( (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & 
-- \Registradores|registradores~49_combout\))) ) ) ) # ( \Mult1|out_data[6]~6_combout\ & ( !\ALU|soma|sum5|saida|out_port~combout\ & ( (!\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~15_combout\)))) # (\ROM|memoriaROM~11_combout\ & 
-- (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~15_combout\ & \Registradores|registradores~49_combout\))) ) ) ) # ( !\Mult1|out_data[6]~6_combout\ & ( !\ALU|soma|sum5|saida|out_port~combout\ & ( (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~11_combout\ & 
-- (\ROM|memoriaROM~15_combout\ & !\Registradores|registradores~49_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000110000001100000100000000000000011100000111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~15_combout\,
	datad => \Registradores|ALT_INV_registradores~49_combout\,
	datae => \Mult1|ALT_INV_out_data[6]~6_combout\,
	dataf => \ALU|soma|sum5|saida|ALT_INV_out_port~combout\,
	combout => \ALU|Mux4~0_combout\);

\Mult4|out_data[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4|out_data[6]~6_combout\ = ( !\Controle|Mux3~0_combout\ & ( (!\ROM|memoriaROM~13_combout\ & ((\ALU|Mux4~0_combout\))) # (\ROM|memoriaROM~13_combout\ & (\ALU|Mux4~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000000000000011011000110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux4~3_combout\,
	datac => \ALU|ALT_INV_Mux4~0_combout\,
	datae => \Controle|ALT_INV_Mux3~0_combout\,
	combout => \Mult4|out_data[6]~6_combout\);

\Registradores|registradores~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[6]~6_combout\,
	ena => \Registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~25_q\);

\Registradores|registradores~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~49_combout\ = ( \ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~41_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~33_q\ ) ) ) 
-- # ( \ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~25_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~25_q\,
	datab => \Registradores|ALT_INV_registradores~17_q\,
	datac => \Registradores|ALT_INV_registradores~41_q\,
	datad => \Registradores|ALT_INV_registradores~33_q\,
	datae => \ROM|ALT_INV_memoriaROM~6_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~7_combout\,
	combout => \Registradores|registradores~49_combout\);

\ALU|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux5~3_combout\ = ( \ALU|sub|Add0~17_sumout\ & ( \ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ & ( (\Mult1|out_data[5]~5_combout\ & (!\ROM|memoriaROM~11_combout\ $ (((!\Registradores|registradores~48_combout\) # (\ROM|memoriaROM~15_combout\))))) ) ) 
-- ) # ( !\ALU|sub|Add0~17_sumout\ & ( \ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ & ( (!\Mult1|out_data[5]~5_combout\ & (!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\))) # (\Mult1|out_data[5]~5_combout\ & ((!\ROM|memoriaROM~11_combout\ $ 
-- (!\Registradores|registradores~48_combout\)) # (\ROM|memoriaROM~15_combout\))) ) ) ) # ( \ALU|sub|Add0~17_sumout\ & ( !\ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ & ( (!\Mult1|out_data[5]~5_combout\ & (!\ROM|memoriaROM~11_combout\ & 
-- (\ROM|memoriaROM~15_combout\))) # (\Mult1|out_data[5]~5_combout\ & ((!\ROM|memoriaROM~11_combout\ $ (!\Registradores|registradores~48_combout\)) # (\ROM|memoriaROM~15_combout\))) ) ) ) # ( !\ALU|sub|Add0~17_sumout\ & ( 
-- !\ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ & ( (\Mult1|out_data[5]~5_combout\ & (!\ROM|memoriaROM~11_combout\ $ (((!\Registradores|registradores~48_combout\) # (\ROM|memoriaROM~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000001000111010100110100011101010011010001000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|ALT_INV_out_data[5]~5_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~15_combout\,
	datad => \Registradores|ALT_INV_registradores~48_combout\,
	datae => \ALU|sub|ALT_INV_Add0~17_sumout\,
	dataf => \ALU|sub|saia|sum5|sum|p_o|ALT_INV_out_port~0_combout\,
	combout => \ALU|Mux5~3_combout\);

\ALU|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux5~4_combout\ = ( \ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ & ( \ALU|Mux5~3_combout\ & ( (!\ROM|memoriaROM~15_combout\) # ((\ROM|memoriaROM~9_combout\ & ((!\Registradores|registradores~47_combout\) # 
-- (!\ALU|sub|saia|sum3|saida|out_port~combout\)))) ) ) ) # ( !\ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ & ( \ALU|Mux5~3_combout\ & ( (!\ROM|memoriaROM~15_combout\) # ((\ROM|memoriaROM~9_combout\ & ((\ALU|sub|saia|sum3|saida|out_port~combout\) # 
-- (\Registradores|registradores~47_combout\)))) ) ) ) # ( \ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ & ( !\ALU|Mux5~3_combout\ & ( (!\ROM|memoriaROM~15_combout\ & (!\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~15_combout\ & 
-- (\ROM|memoriaROM~9_combout\ & (!\Registradores|registradores~47_combout\ & !\ALU|sub|saia|sum3|saida|out_port~combout\))) ) ) ) # ( !\ALU|sub|saia|sum5|sum|p_o|out_port~0_combout\ & ( !\ALU|Mux5~3_combout\ & ( (!\ROM|memoriaROM~15_combout\ & 
-- (!\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~15_combout\ & (\ROM|memoriaROM~9_combout\ & (\Registradores|registradores~47_combout\ & \ALU|sub|saia|sum3|saida|out_port~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001001100110001000100010101011101110111011101110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~15_combout\,
	datab => \ROM|ALT_INV_memoriaROM~9_combout\,
	datac => \Registradores|ALT_INV_registradores~47_combout\,
	datad => \ALU|sub|saia|sum3|saida|ALT_INV_out_port~combout\,
	datae => \ALU|sub|saia|sum5|sum|p_o|ALT_INV_out_port~0_combout\,
	dataf => \ALU|ALT_INV_Mux5~3_combout\,
	combout => \ALU|Mux5~4_combout\);

\ALU|soma|sum5|sum1|p_o|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|soma|sum5|sum1|p_o|out_port~0_combout\ = ( \ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( \Mult1|out_data[5]~5_combout\ & ( !\Registradores|registradores~48_combout\ $ (((\Mult1|out_data[4]~4_combout\) # (\Registradores|registradores~47_combout\))) 
-- ) ) ) # ( !\ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( \Mult1|out_data[5]~5_combout\ & ( !\Registradores|registradores~48_combout\ $ (((!\Registradores|registradores~47_combout\ & (\ALU|soma|sum3|sum|p_o|out_port~0_combout\ & 
-- \Mult1|out_data[4]~4_combout\)) # (\Registradores|registradores~47_combout\ & ((\Mult1|out_data[4]~4_combout\) # (\ALU|soma|sum3|sum|p_o|out_port~0_combout\))))) ) ) ) # ( \ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( !\Mult1|out_data[5]~5_combout\ & ( 
-- !\Registradores|registradores~48_combout\ $ (((!\Registradores|registradores~47_combout\ & !\Mult1|out_data[4]~4_combout\))) ) ) ) # ( !\ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( !\Mult1|out_data[5]~5_combout\ & ( 
-- !\Registradores|registradores~48_combout\ $ (((!\Registradores|registradores~47_combout\ & ((!\ALU|soma|sum3|sum|p_o|out_port~0_combout\) # (!\Mult1|out_data[4]~4_combout\))) # (\Registradores|registradores~47_combout\ & 
-- (!\ALU|soma|sum3|sum|p_o|out_port~0_combout\ & !\Mult1|out_data[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100011001101100110011001001100100111001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~47_combout\,
	datab => \Registradores|ALT_INV_registradores~48_combout\,
	datac => \ALU|soma|sum3|sum|p_o|ALT_INV_out_port~0_combout\,
	datad => \Mult1|ALT_INV_out_data[4]~4_combout\,
	datae => \ALU|soma|sum3|sum1|p_an|ALT_INV_out_port~0_combout\,
	dataf => \Mult1|ALT_INV_out_data[5]~5_combout\,
	combout => \ALU|soma|sum5|sum1|p_o|out_port~0_combout\);

\ALU|Mux5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux5~5_combout\ = (!\ROM|memoriaROM~11_combout\ & (((\ALU|soma|sum5|sum1|p_o|out_port~0_combout\)))) # (\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & (!\Registradores|registradores~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011101010010000001110101001000000111010100100000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~11_combout\,
	datab => \ROM|ALT_INV_memoriaROM~15_combout\,
	datac => \Registradores|ALT_INV_registradores~48_combout\,
	datad => \ALU|soma|sum5|sum1|p_o|ALT_INV_out_port~0_combout\,
	combout => \ALU|Mux5~5_combout\);

\ALU|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux5~0_combout\ = ( \ALU|Mux5~4_combout\ & ( \ALU|Mux5~5_combout\ & ( (!\ROM|memoriaROM~9_combout\ & ((!\ROM|memoriaROM~11_combout\ & (!\ALU|multi|Produto\(5))) # (\ROM|memoriaROM~11_combout\ & ((!\ALU|Mux5~3_combout\))))) ) ) ) # ( 
-- !\ALU|Mux5~4_combout\ & ( \ALU|Mux5~5_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~9_combout\ & !\ALU|Mux5~3_combout\)) ) ) ) # ( \ALU|Mux5~4_combout\ & ( 
-- !\ALU|Mux5~5_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~9_combout\ & (!\ALU|multi|Produto\(5)))) # (\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~9_combout\ & ((!\ALU|Mux5~3_combout\)))) ) ) ) # ( !\ALU|Mux5~4_combout\ & ( 
-- !\ALU|Mux5~5_combout\ & ( (!\ROM|memoriaROM~11_combout\) # (!\ALU|Mux5~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010100100011000000001100110001000101100010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~11_combout\,
	datab => \ROM|ALT_INV_memoriaROM~9_combout\,
	datac => \ALU|multi|ALT_INV_Produto\(5),
	datad => \ALU|ALT_INV_Mux5~3_combout\,
	datae => \ALU|ALT_INV_Mux5~4_combout\,
	dataf => \ALU|ALT_INV_Mux5~5_combout\,
	combout => \ALU|Mux5~0_combout\);

\ALU|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux5~1_combout\ = ( \ALU|soma|sum5|sum1|p_o|out_port~0_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~15_combout\ & \Mult1|out_data[5]~5_combout\)))) # (\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~9_combout\ & 
-- (\ROM|memoriaROM~15_combout\))) ) ) # ( !\ALU|soma|sum5|sum1|p_o|out_port~0_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & \Mult1|out_data[5]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000011100000100000000110000000000000111000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~15_combout\,
	datad => \Mult1|ALT_INV_out_data[5]~5_combout\,
	datae => \ALU|soma|sum5|sum1|p_o|ALT_INV_out_port~0_combout\,
	combout => \ALU|Mux5~1_combout\);

\Mult4|out_data[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4|out_data[5]~5_combout\ = ( !\Controle|Mux3~0_combout\ & ( (!\ROM|memoriaROM~13_combout\ & ((\ALU|Mux5~1_combout\))) # (\ROM|memoriaROM~13_combout\ & (!\ALU|Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110000000000000000001001110010011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux5~0_combout\,
	datac => \ALU|ALT_INV_Mux5~1_combout\,
	datae => \Controle|ALT_INV_Mux3~0_combout\,
	combout => \Mult4|out_data[5]~5_combout\);

\Registradores|registradores~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[5]~5_combout\,
	ena => \Registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~24_q\);

\Registradores|registradores~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~48_combout\ = ( \ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~40_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~32_q\ ) ) ) 
-- # ( \ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~24_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~24_q\,
	datab => \Registradores|ALT_INV_registradores~16_q\,
	datac => \Registradores|ALT_INV_registradores~40_q\,
	datad => \Registradores|ALT_INV_registradores~32_q\,
	datae => \ROM|ALT_INV_memoriaROM~6_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~7_combout\,
	combout => \Registradores|registradores~48_combout\);

\ALU|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux6~4_combout\ = ( \ALU|sub|saia|sum2|saida|out_port~combout\ & ( \ALU|sub|Add0~13_sumout\ & ( (\ROM|memoriaROM~9_combout\ & !\Registradores|registradores~47_combout\) ) ) ) # ( !\ALU|sub|saia|sum2|saida|out_port~combout\ & ( 
-- \ALU|sub|Add0~13_sumout\ & ( (\ROM|memoriaROM~9_combout\ & (!\Registradores|registradores~47_combout\ $ (((\ROM|memoriaROM~15_combout\ & !\Registradores|registradores~46_combout\))))) ) ) ) # ( \ALU|sub|saia|sum2|saida|out_port~combout\ & ( 
-- !\ALU|sub|Add0~13_sumout\ & ( (\ROM|memoriaROM~9_combout\ & (!\Registradores|registradores~47_combout\ $ (((\ROM|memoriaROM~15_combout\ & !\Registradores|registradores~46_combout\))))) ) ) ) # ( !\ALU|sub|saia|sum2|saida|out_port~combout\ & ( 
-- !\ALU|sub|Add0~13_sumout\ & ( (\ROM|memoriaROM~9_combout\ & (!\ROM|memoriaROM~15_combout\ $ (\Registradores|registradores~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010011000000100001001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~15_combout\,
	datab => \ROM|ALT_INV_memoriaROM~9_combout\,
	datac => \Registradores|ALT_INV_registradores~47_combout\,
	datad => \Registradores|ALT_INV_registradores~46_combout\,
	datae => \ALU|sub|saia|sum2|saida|ALT_INV_out_port~combout\,
	dataf => \ALU|sub|ALT_INV_Add0~13_sumout\,
	combout => \ALU|Mux6~4_combout\);

\ALU|Mux6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux6~5_combout\ = ( \ALU|soma|sum3|sum|p_o|out_port~0_combout\ & ( \ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( (!\Mult1|out_data[4]~4_combout\ & (((!\ROM|memoriaROM~15_combout\ & \ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~11_combout\))) # 
-- (\Mult1|out_data[4]~4_combout\ & ((!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & !\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & \ROM|memoriaROM~9_combout\)))) ) ) ) # ( 
-- !\ALU|soma|sum3|sum|p_o|out_port~0_combout\ & ( \ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( (!\Mult1|out_data[4]~4_combout\ & (((!\ROM|memoriaROM~15_combout\ & \ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~11_combout\))) # 
-- (\Mult1|out_data[4]~4_combout\ & ((!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & !\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & \ROM|memoriaROM~9_combout\)))) ) ) ) # ( 
-- \ALU|soma|sum3|sum|p_o|out_port~0_combout\ & ( !\ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( (!\Mult1|out_data[4]~4_combout\ & (((!\ROM|memoriaROM~15_combout\ & \ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~11_combout\))) # 
-- (\Mult1|out_data[4]~4_combout\ & ((!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & !\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & \ROM|memoriaROM~9_combout\)))) ) ) ) # ( 
-- !\ALU|soma|sum3|sum|p_o|out_port~0_combout\ & ( !\ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( (!\Mult1|out_data[4]~4_combout\ & ((!\ROM|memoriaROM~15_combout\ $ (!\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~11_combout\))) # 
-- (\Mult1|out_data[4]~4_combout\ & (\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & \ROM|memoriaROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010110010001001101011001000100110101100100010011010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|ALT_INV_out_data[4]~4_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~15_combout\,
	datad => \ROM|ALT_INV_memoriaROM~9_combout\,
	datae => \ALU|soma|sum3|sum|p_o|ALT_INV_out_port~0_combout\,
	dataf => \ALU|soma|sum3|sum1|p_an|ALT_INV_out_port~0_combout\,
	combout => \ALU|Mux6~5_combout\);

\ALU|Mux6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux6~6_combout\ = ( \ALU|sub|Add0~17_sumout\ & ( \ALU|Mux6~5_combout\ & ( (!\ROM|memoriaROM~15_combout\ & (((\ROM|memoriaROM~11_combout\ & !\Registradores|registradores~47_combout\)) # (\ROM|memoriaROM~9_combout\))) # (\ROM|memoriaROM~15_combout\ & 
-- (((!\ROM|memoriaROM~9_combout\ & !\Registradores|registradores~47_combout\)) # (\ROM|memoriaROM~11_combout\))) ) ) ) # ( !\ALU|sub|Add0~17_sumout\ & ( \ALU|Mux6~5_combout\ & ( ((!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & 
-- !\Registradores|registradores~47_combout\)) # (\ROM|memoriaROM~11_combout\ & ((!\Registradores|registradores~47_combout\) # (\ROM|memoriaROM~15_combout\)))) # (\ROM|memoriaROM~9_combout\) ) ) ) # ( \ALU|sub|Add0~17_sumout\ & ( !\ALU|Mux6~5_combout\ & ( 
-- (!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & (!\ROM|memoriaROM~9_combout\ & \Registradores|registradores~47_combout\))) # (\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & (\ROM|memoriaROM~9_combout\))) ) ) ) # ( 
-- !\ALU|sub|Add0~17_sumout\ & ( !\ALU|Mux6~5_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & ((\Registradores|registradores~47_combout\) # (\ROM|memoriaROM~9_combout\)))) # (\ROM|memoriaROM~11_combout\ & 
-- (!\ROM|memoriaROM~15_combout\ & (\ROM|memoriaROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100110000001000010010001111111000111110111110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~11_combout\,
	datab => \ROM|ALT_INV_memoriaROM~15_combout\,
	datac => \ROM|ALT_INV_memoriaROM~9_combout\,
	datad => \Registradores|ALT_INV_registradores~47_combout\,
	datae => \ALU|sub|ALT_INV_Add0~17_sumout\,
	dataf => \ALU|ALT_INV_Mux6~5_combout\,
	combout => \ALU|Mux6~6_combout\);

\ALU|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux6~0_combout\ = ( \ALU|Mux6~4_combout\ & ( \ALU|Mux6~6_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & ((!\ALU|multi|Produto\(4)) # (\ROM|memoriaROM~9_combout\)))) # (\ROM|memoriaROM~11_combout\ & 
-- (\ROM|memoriaROM~15_combout\)) ) ) ) # ( !\ALU|Mux6~4_combout\ & ( \ALU|Mux6~6_combout\ & ( (((!\ALU|multi|Produto\(4)) # (\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~15_combout\)) # (\ROM|memoriaROM~11_combout\) ) ) ) # ( \ALU|Mux6~4_combout\ & ( 
-- !\ALU|Mux6~6_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (((!\ALU|multi|Produto\(4)) # (\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~15_combout\))) ) ) ) # ( !\ALU|Mux6~4_combout\ & ( !\ALU|Mux6~6_combout\ & ( (!\ROM|memoriaROM~11_combout\ & 
-- (!\ROM|memoriaROM~15_combout\ & (!\ROM|memoriaROM~9_combout\ & !\ALU|multi|Produto\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000101010100010101011111111011111111001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~11_combout\,
	datab => \ROM|ALT_INV_memoriaROM~15_combout\,
	datac => \ROM|ALT_INV_memoriaROM~9_combout\,
	datad => \ALU|multi|ALT_INV_Produto\(4),
	datae => \ALU|ALT_INV_Mux6~4_combout\,
	dataf => \ALU|ALT_INV_Mux6~6_combout\,
	combout => \ALU|Mux6~0_combout\);

\ALU|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux6~1_combout\ = (!\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & \Mult1|out_data[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~11_combout\,
	datab => \ROM|ALT_INV_memoriaROM~15_combout\,
	datac => \Mult1|ALT_INV_out_data[4]~4_combout\,
	combout => \ALU|Mux6~1_combout\);

\Controle|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Mux2~0_combout\ = ( !\ROM|memoriaROM~14_combout\ & ( (!\ProgramCounter|out_port\(7) & (\ROM|memoriaROM~1_combout\ & (\ROM|memoriaROM~8_combout\ & \ROM|memoriaROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(7),
	datab => \ROM|ALT_INV_memoriaROM~1_combout\,
	datac => \ROM|ALT_INV_memoriaROM~8_combout\,
	datad => \ROM|ALT_INV_memoriaROM~10_combout\,
	datae => \ROM|ALT_INV_memoriaROM~14_combout\,
	combout => \Controle|Mux2~0_combout\);

\ALU|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux6~2_combout\ = ( \ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( (\Controle|Mux2~0_combout\ & (!\Registradores|registradores~47_combout\ $ (\Mult1|out_data[4]~4_combout\))) ) ) # ( !\ALU|soma|sum3|sum1|p_an|out_port~0_combout\ & ( 
-- (\Controle|Mux2~0_combout\ & (!\Registradores|registradores~47_combout\ $ (!\ALU|soma|sum3|sum|p_o|out_port~0_combout\ $ (\Mult1|out_data[4]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001001000100001000100010010001000010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~47_combout\,
	datab => \Controle|ALT_INV_Mux2~0_combout\,
	datac => \ALU|soma|sum3|sum|p_o|ALT_INV_out_port~0_combout\,
	datad => \Mult1|ALT_INV_out_data[4]~4_combout\,
	datae => \ALU|soma|sum3|sum1|p_an|ALT_INV_out_port~0_combout\,
	combout => \ALU|Mux6~2_combout\);

\Mult4|out_data[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4|out_data[4]~4_combout\ = ( !\Controle|Mux3~0_combout\ & ( (!\ROM|memoriaROM~13_combout\ & (((\ALU|Mux6~2_combout\) # (\ALU|Mux6~1_combout\)))) # (\ROM|memoriaROM~13_combout\ & (!\ALU|Mux6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111011101110010011101110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux6~0_combout\,
	datac => \ALU|ALT_INV_Mux6~1_combout\,
	datad => \ALU|ALT_INV_Mux6~2_combout\,
	dataf => \Controle|ALT_INV_Mux3~0_combout\,
	combout => \Mult4|out_data[4]~4_combout\);

\Registradores|registradores~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[4]~4_combout\,
	ena => \Registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~23_q\);

\Registradores|registradores~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~47_combout\ = ( \ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~39_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~31_q\ ) ) ) 
-- # ( \ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~23_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~23_q\,
	datab => \Registradores|ALT_INV_registradores~15_q\,
	datac => \Registradores|ALT_INV_registradores~39_q\,
	datad => \Registradores|ALT_INV_registradores~31_q\,
	datae => \ROM|ALT_INV_memoriaROM~6_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~7_combout\,
	combout => \Registradores|registradores~47_combout\);

\ALU|soma|sum2|saida|out_port\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|soma|sum2|saida|out_port~combout\ = ( \Mult1|out_data[2]~2_combout\ & ( ((!\Registradores|registradores~44_combout\ & (\ALU|outULA~0_combout\ & \Mult1|out_data[1]~1_combout\)) # (\Registradores|registradores~44_combout\ & 
-- ((\Mult1|out_data[1]~1_combout\) # (\ALU|outULA~0_combout\)))) # (\Registradores|registradores~45_combout\) ) ) # ( !\Mult1|out_data[2]~2_combout\ & ( (\Registradores|registradores~45_combout\ & ((!\Registradores|registradores~44_combout\ & 
-- (\ALU|outULA~0_combout\ & \Mult1|out_data[1]~1_combout\)) # (\Registradores|registradores~44_combout\ & ((\Mult1|out_data[1]~1_combout\) # (\ALU|outULA~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011001101110111111100000001000100110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~44_combout\,
	datab => \Registradores|ALT_INV_registradores~45_combout\,
	datac => \ALU|ALT_INV_outULA~0_combout\,
	datad => \Mult1|ALT_INV_out_data[1]~1_combout\,
	datae => \Mult1|ALT_INV_out_data[2]~2_combout\,
	combout => \ALU|soma|sum2|saida|out_port~combout\);

\ALU|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux7~3_combout\ = ( \Registradores|registradores~46_combout\ & ( \ALU|sub|Add0~13_sumout\ & ( (!\ROM|memoriaROM~15_combout\ & (((\ROM|memoriaROM~11_combout\ & \ROM|memoriaROM~9_combout\)))) # (\ROM|memoriaROM~15_combout\ & 
-- (!\Mult1|out_data[3]~3_combout\ & ((!\ROM|memoriaROM~9_combout\) # (\ROM|memoriaROM~11_combout\)))) ) ) ) # ( !\Registradores|registradores~46_combout\ & ( \ALU|sub|Add0~13_sumout\ & ( (!\Mult1|out_data[3]~3_combout\ & ((!\ROM|memoriaROM~9_combout\ & 
-- (\ROM|memoriaROM~11_combout\)) # (\ROM|memoriaROM~9_combout\ & ((\ROM|memoriaROM~15_combout\))))) # (\Mult1|out_data[3]~3_combout\ & (!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\))) ) ) ) # ( \Registradores|registradores~46_combout\ & ( 
-- !\ALU|sub|Add0~13_sumout\ & ( (!\ROM|memoriaROM~15_combout\ & (((\ROM|memoriaROM~11_combout\ & \ROM|memoriaROM~9_combout\)))) # (\ROM|memoriaROM~15_combout\ & ((!\Mult1|out_data[3]~3_combout\) # ((!\ROM|memoriaROM~11_combout\ & 
-- \ROM|memoriaROM~9_combout\)))) ) ) ) # ( !\Registradores|registradores~46_combout\ & ( !\ALU|sub|Add0~13_sumout\ & ( (!\Mult1|out_data[3]~3_combout\ & (\ROM|memoriaROM~11_combout\ & ((!\ROM|memoriaROM~9_combout\) # (\ROM|memoriaROM~15_combout\)))) # 
-- (\Mult1|out_data[3]~3_combout\ & (!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & !\ROM|memoriaROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000000010000010100011111000100110000011100000101000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|ALT_INV_out_data[3]~3_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~15_combout\,
	datad => \ROM|ALT_INV_memoriaROM~9_combout\,
	datae => \Registradores|ALT_INV_registradores~46_combout\,
	dataf => \ALU|sub|ALT_INV_Add0~13_sumout\,
	combout => \ALU|Mux7~3_combout\);

\ALU|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux7~4_combout\ = (!\ROM|memoriaROM~15_combout\ & ((!\ROM|memoriaROM~9_combout\) # ((\ALU|soma|sum3|sum|p_o|out_port~0_combout\)))) # (\ROM|memoriaROM~15_combout\ & (\ROM|memoriaROM~9_combout\ & ((\ALU|sub|saia|sum2|saida|out_port~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010011011100010101001101110001010100110111000101010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~15_combout\,
	datab => \ROM|ALT_INV_memoriaROM~9_combout\,
	datac => \ALU|soma|sum3|sum|p_o|ALT_INV_out_port~0_combout\,
	datad => \ALU|sub|saia|sum2|saida|ALT_INV_out_port~combout\,
	combout => \ALU|Mux7~4_combout\);

\ALU|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux7~0_combout\ = ( \ALU|Mux7~3_combout\ & ( \ALU|Mux7~4_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~9_combout\ & !\ALU|soma|sum2|saida|out_port~combout\)) ) ) ) # ( !\ALU|Mux7~3_combout\ & ( \ALU|Mux7~4_combout\ & ( 
-- ((\ALU|multi|Produto\(3)) # (\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~11_combout\) ) ) ) # ( \ALU|Mux7~3_combout\ & ( !\ALU|Mux7~4_combout\ & ( (!\ROM|memoriaROM~11_combout\ & ((!\ALU|soma|sum2|saida|out_port~combout\) # 
-- (\ROM|memoriaROM~9_combout\))) ) ) ) # ( !\ALU|Mux7~3_combout\ & ( !\ALU|Mux7~4_combout\ & ( ((!\ROM|memoriaROM~9_combout\ & \ALU|soma|sum2|saida|out_port~combout\)) # (\ROM|memoriaROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011101101010100010001001111111011111111000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~11_combout\,
	datab => \ROM|ALT_INV_memoriaROM~9_combout\,
	datac => \ALU|multi|ALT_INV_Produto\(3),
	datad => \ALU|soma|sum2|saida|ALT_INV_out_port~combout\,
	datae => \ALU|ALT_INV_Mux7~3_combout\,
	dataf => \ALU|ALT_INV_Mux7~4_combout\,
	combout => \ALU|Mux7~0_combout\);

\ALU|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux7~1_combout\ = ( \Mult1|out_data[3]~3_combout\ & ( \ALU|soma|sum2|saida|out_port~combout\ & ( (!\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~15_combout\)))) # (\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~9_combout\ & 
-- (\ROM|memoriaROM~15_combout\ & \Registradores|registradores~46_combout\))) ) ) ) # ( !\Mult1|out_data[3]~3_combout\ & ( \ALU|soma|sum2|saida|out_port~combout\ & ( (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & 
-- !\Registradores|registradores~46_combout\))) ) ) ) # ( \Mult1|out_data[3]~3_combout\ & ( !\ALU|soma|sum2|saida|out_port~combout\ & ( (!\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~15_combout\)))) # (\ROM|memoriaROM~11_combout\ & 
-- (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~15_combout\ & !\Registradores|registradores~46_combout\))) ) ) ) # ( !\Mult1|out_data[3]~3_combout\ & ( !\ALU|soma|sum2|saida|out_port~combout\ & ( (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~11_combout\ & 
-- (\ROM|memoriaROM~15_combout\ & \Registradores|registradores~46_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000011100000000000001000000001100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~15_combout\,
	datad => \Registradores|ALT_INV_registradores~46_combout\,
	datae => \Mult1|ALT_INV_out_data[3]~3_combout\,
	dataf => \ALU|soma|sum2|saida|ALT_INV_out_port~combout\,
	combout => \ALU|Mux7~1_combout\);

\Mult4|out_data[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4|out_data[3]~3_combout\ = ( !\Controle|Mux3~0_combout\ & ( (!\ROM|memoriaROM~13_combout\ & ((\ALU|Mux7~1_combout\))) # (\ROM|memoriaROM~13_combout\ & (\ALU|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000000000000011011000110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux7~0_combout\,
	datac => \ALU|ALT_INV_Mux7~1_combout\,
	datae => \Controle|ALT_INV_Mux3~0_combout\,
	combout => \Mult4|out_data[3]~3_combout\);

\Registradores|registradores~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[3]~3_combout\,
	ena => \Registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~22_q\);

\Registradores|registradores~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~46_combout\ = ( \ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~38_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~30_q\ ) ) ) 
-- # ( \ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~22_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~22_q\,
	datab => \Registradores|ALT_INV_registradores~14_q\,
	datac => \Registradores|ALT_INV_registradores~38_q\,
	datad => \Registradores|ALT_INV_registradores~30_q\,
	datae => \ROM|ALT_INV_memoriaROM~6_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~7_combout\,
	combout => \Registradores|registradores~46_combout\);

\ALU|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux8~3_combout\ = ( !\ROM|memoriaROM~9_combout\ & ( (!\ALU|Mux8~2_combout\ & (((!\ROM|memoriaROM~11_combout\ & ((!\ROM|memoriaROM~15_combout\) # (\ALU|soma|sum2|sum1|p_o|out_port~0_combout\)))))) # (\ALU|Mux8~2_combout\ & (((\ALU|multi|Produto\(2) & 
-- ((!\ROM|memoriaROM~15_combout\) # (\ALU|soma|sum2|sum1|p_o|out_port~0_combout\)))) # (\ROM|memoriaROM~11_combout\))) ) ) # ( \ROM|memoriaROM~9_combout\ & ( (!\ALU|Mux8~2_combout\ $ (((!\ROM|memoriaROM~15_combout\) # ((\ROM|memoriaROM~11_combout\) # 
-- (\ALU|sub|saia|sum1|saida|out_port~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1101110100001101001100001100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|soma|sum2|sum1|p_o|ALT_INV_out_port~0_combout\,
	datab => \ROM|ALT_INV_memoriaROM~15_combout\,
	datac => \ALU|sub|saia|sum1|saida|ALT_INV_out_port~combout\,
	datad => \ALU|ALT_INV_Mux8~2_combout\,
	datae => \ROM|ALT_INV_memoriaROM~9_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~11_combout\,
	datag => \ALU|multi|ALT_INV_Produto\(2),
	combout => \ALU|Mux8~3_combout\);

\ALU|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux8~0_combout\ = ( \ALU|soma|sum2|sum1|p_o|out_port~0_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (((!\ROM|memoriaROM~15_combout\ & \Mult1|out_data[2]~2_combout\)))) # (\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~9_combout\ & 
-- (\ROM|memoriaROM~15_combout\))) ) ) # ( !\ALU|soma|sum2|sum1|p_o|out_port~0_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & \Mult1|out_data[2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000011100000100000000110000000000000111000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~15_combout\,
	datad => \Mult1|ALT_INV_out_data[2]~2_combout\,
	datae => \ALU|soma|sum2|sum1|p_o|ALT_INV_out_port~0_combout\,
	combout => \ALU|Mux8~0_combout\);

\Mult4|out_data[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4|out_data[2]~2_combout\ = ( !\Controle|Mux3~0_combout\ & ( (!\ROM|memoriaROM~13_combout\ & ((\ALU|Mux8~0_combout\))) # (\ROM|memoriaROM~13_combout\ & (\ALU|Mux8~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000000000000011011000110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux8~3_combout\,
	datac => \ALU|ALT_INV_Mux8~0_combout\,
	datae => \Controle|ALT_INV_Mux3~0_combout\,
	combout => \Mult4|out_data[2]~2_combout\);

\Registradores|registradores~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[2]~2_combout\,
	ena => \Registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~21_q\);

\Registradores|registradores~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~45_combout\ = ( \ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~37_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~29_q\ ) ) ) 
-- # ( \ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~21_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~21_q\,
	datab => \Registradores|ALT_INV_registradores~13_q\,
	datac => \Registradores|ALT_INV_registradores~37_q\,
	datad => \Registradores|ALT_INV_registradores~29_q\,
	datae => \ROM|ALT_INV_memoriaROM~6_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~7_combout\,
	combout => \Registradores|registradores~45_combout\);

\ALU|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux10~1_combout\ = ( \Registradores|registradores~43_combout\ & ( \ALU|sub|Add0~1_sumout\ & ( (!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & ((\ROM|memoriaROM~9_combout\) # (\Mult1|out_data[0]~0_combout\)))) # 
-- (\ROM|memoriaROM~11_combout\ & ((!\ROM|memoriaROM~15_combout\ & ((\ROM|memoriaROM~9_combout\))) # (\ROM|memoriaROM~15_combout\ & (!\Mult1|out_data[0]~0_combout\)))) ) ) ) # ( !\Registradores|registradores~43_combout\ & ( \ALU|sub|Add0~1_sumout\ & ( 
-- (!\Mult1|out_data[0]~0_combout\ & ((!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & !\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~11_combout\ & ((!\ROM|memoriaROM~9_combout\) # (\ROM|memoriaROM~15_combout\))))) ) ) ) # ( 
-- \Registradores|registradores~43_combout\ & ( !\ALU|sub|Add0~1_sumout\ & ( (!\ROM|memoriaROM~11_combout\ & (\Mult1|out_data[0]~0_combout\ & (\ROM|memoriaROM~15_combout\ & !\ROM|memoriaROM~9_combout\))) # (\ROM|memoriaROM~11_combout\ & 
-- ((!\ROM|memoriaROM~15_combout\ & ((\ROM|memoriaROM~9_combout\))) # (\ROM|memoriaROM~15_combout\ & (!\Mult1|out_data[0]~0_combout\)))) ) ) ) # ( !\Registradores|registradores~43_combout\ & ( !\ALU|sub|Add0~1_sumout\ & ( (!\Mult1|out_data[0]~0_combout\ & 
-- (((\ROM|memoriaROM~11_combout\ & !\ROM|memoriaROM~9_combout\)) # (\ROM|memoriaROM~15_combout\))) # (\Mult1|out_data[0]~0_combout\ & (!\ROM|memoriaROM~11_combout\ & (\ROM|memoriaROM~15_combout\ & \ROM|memoriaROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000001110000001100011001000101010000000100000011000111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|ALT_INV_out_data[0]~0_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~15_combout\,
	datad => \ROM|ALT_INV_memoriaROM~9_combout\,
	datae => \Registradores|ALT_INV_registradores~43_combout\,
	dataf => \ALU|sub|ALT_INV_Add0~1_sumout\,
	combout => \ALU|Mux10~1_combout\);

\ALU|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux10~0_combout\ = ( \ALU|multi|Produto\(0) & ( \ALU|Mux10~1_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & ((!\ROM|memoriaROM~9_combout\) # (\ALU|outULA~0_combout\)))) ) ) ) # ( !\ALU|multi|Produto\(0) & ( 
-- \ALU|Mux10~1_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~15_combout\ & (\ROM|memoriaROM~9_combout\ & \ALU|outULA~0_combout\))) ) ) ) # ( \ALU|multi|Produto\(0) & ( !\ALU|Mux10~1_combout\ & ( (((!\ROM|memoriaROM~9_combout\) # 
-- (\ALU|outULA~0_combout\)) # (\ROM|memoriaROM~15_combout\)) # (\ROM|memoriaROM~11_combout\) ) ) ) # ( !\ALU|multi|Produto\(0) & ( !\ALU|Mux10~1_combout\ & ( (((\ROM|memoriaROM~9_combout\ & \ALU|outULA~0_combout\)) # (\ROM|memoriaROM~15_combout\)) # 
-- (\ROM|memoriaROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111111101111111111100000000000010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~11_combout\,
	datab => \ROM|ALT_INV_memoriaROM~15_combout\,
	datac => \ROM|ALT_INV_memoriaROM~9_combout\,
	datad => \ALU|ALT_INV_outULA~0_combout\,
	datae => \ALU|multi|ALT_INV_Produto\(0),
	dataf => \ALU|ALT_INV_Mux10~1_combout\,
	combout => \ALU|Mux10~0_combout\);

\ALU|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux10~2_combout\ = ( !\ROM|memoriaROM~13_combout\ & ( (!\ROM|memoriaROM~15_combout\ & ((((\Mult1|out_data[0]~0_combout\ & !\ROM|memoriaROM~11_combout\))))) # (\ROM|memoriaROM~15_combout\ & (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~11_combout\ & 
-- (!\Registradores|registradores~43_combout\ $ (!\Mult1|out_data[0]~0_combout\))))) ) ) # ( \ROM|memoriaROM~13_combout\ & ( (((\ALU|Mux10~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000111100000000000100100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~43_combout\,
	datab => \ROM|ALT_INV_memoriaROM~9_combout\,
	datac => \ALU|ALT_INV_Mux10~0_combout\,
	datad => \ROM|ALT_INV_memoriaROM~15_combout\,
	datae => \ROM|ALT_INV_memoriaROM~13_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~11_combout\,
	datag => \Mult1|ALT_INV_out_data[0]~0_combout\,
	combout => \ALU|Mux10~2_combout\);

\Mult4|out_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4|out_data[0]~0_combout\ = (\ALU|Mux10~2_combout\ & !\Controle|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_Mux10~2_combout\,
	datac => \Controle|ALT_INV_Mux3~0_combout\,
	combout => \Mult4|out_data[0]~0_combout\);

\Registradores|registradores~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[0]~0_combout\,
	ena => \Registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~19_q\);

\Registradores|registradores~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~43_combout\ = ( \ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~35_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~27_q\ ) ) ) 
-- # ( \ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~19_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~11_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~19_q\,
	datab => \Registradores|ALT_INV_registradores~11_q\,
	datac => \Registradores|ALT_INV_registradores~35_q\,
	datad => \Registradores|ALT_INV_registradores~27_q\,
	datae => \ROM|ALT_INV_memoriaROM~6_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~7_combout\,
	combout => \Registradores|registradores~43_combout\);

\ALU|soma|sum1|sum1|p_o|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|soma|sum1|sum1|p_o|out_port~0_combout\ = !\Registradores|registradores~44_combout\ $ (!\ALU|outULA~0_combout\ $ (\Mult1|out_data[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~44_combout\,
	datab => \ALU|ALT_INV_outULA~0_combout\,
	datac => \Mult1|ALT_INV_out_data[1]~1_combout\,
	combout => \ALU|soma|sum1|sum1|p_o|out_port~0_combout\);

\ALU|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux9~2_combout\ = ( \ALU|soma|sum1|sum1|p_o|out_port~0_combout\ & ( (!\ROM|memoriaROM~9_combout\) # (!\ALU|sub|Add0~5_sumout\ $ (((\Registradores|registradores~43_combout\ & \ALU|sub|Add0~1_sumout\)))) ) ) # ( 
-- !\ALU|soma|sum1|sum1|p_o|out_port~0_combout\ & ( (\ROM|memoriaROM~9_combout\ & (!\ALU|sub|Add0~5_sumout\ $ (((\Registradores|registradores~43_combout\ & \ALU|sub|Add0~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000001111111101010101101010100000000011111111010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \Registradores|ALT_INV_registradores~43_combout\,
	datac => \ALU|sub|ALT_INV_Add0~1_sumout\,
	datad => \ALU|sub|ALT_INV_Add0~5_sumout\,
	datae => \ALU|soma|sum1|sum1|p_o|ALT_INV_out_port~0_combout\,
	combout => \ALU|Mux9~2_combout\);

\ALU|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux9~3_combout\ = ( !\ROM|memoriaROM~15_combout\ & ( (!\ROM|memoriaROM~9_combout\ & ((!\ROM|memoriaROM~11_combout\ & (((\ALU|multi|Produto\(1))))) # (\ROM|memoriaROM~11_combout\ & (((\Mult1|out_data[1]~1_combout\)) # 
-- (\Registradores|registradores~44_combout\))))) # (\ROM|memoriaROM~9_combout\ & ((!\Registradores|registradores~44_combout\ & (((\ROM|memoriaROM~11_combout\)))) # (\Registradores|registradores~44_combout\ & (\Mult1|out_data[1]~1_combout\ & 
-- ((!\ROM|memoriaROM~11_combout\)))))) ) ) # ( \ROM|memoriaROM~15_combout\ & ( (!\ROM|memoriaROM~11_combout\ & ((!\ALU|Mux9~2_combout\ $ (((!\ROM|memoriaROM~9_combout\) # (\Registradores|registradores~44_combout\)))))) # (\ROM|memoriaROM~11_combout\ & 
-- (((\Mult1|out_data[1]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100010001000011111010010101110111101010100011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~44_combout\,
	datab => \Mult1|ALT_INV_out_data[1]~1_combout\,
	datac => \ALU|ALT_INV_Mux9~2_combout\,
	datad => \ROM|ALT_INV_memoriaROM~9_combout\,
	datae => \ROM|ALT_INV_memoriaROM~15_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~11_combout\,
	datag => \ALU|multi|ALT_INV_Produto\(1),
	combout => \ALU|Mux9~3_combout\);

\ALU|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux9~0_combout\ = ( \Mult1|out_data[1]~1_combout\ & ( \ALU|soma|sum1|sum1|p_o|out_port~0_combout\ & ( (!\ROM|memoriaROM~13_combout\ & ((!\ROM|memoriaROM~11_combout\ & ((!\ROM|memoriaROM~15_combout\))) # (\ROM|memoriaROM~11_combout\ & 
-- (\ROM|memoriaROM~9_combout\ & \ROM|memoriaROM~15_combout\)))) ) ) ) # ( !\Mult1|out_data[1]~1_combout\ & ( \ALU|soma|sum1|sum1|p_o|out_port~0_combout\ & ( (\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~13_combout\ & 
-- \ROM|memoriaROM~15_combout\))) ) ) ) # ( \Mult1|out_data[1]~1_combout\ & ( !\ALU|soma|sum1|sum1|p_o|out_port~0_combout\ & ( (!\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~13_combout\ & !\ROM|memoriaROM~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000100001100000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~13_combout\,
	datad => \ROM|ALT_INV_memoriaROM~15_combout\,
	datae => \Mult1|ALT_INV_out_data[1]~1_combout\,
	dataf => \ALU|soma|sum1|sum1|p_o|ALT_INV_out_port~0_combout\,
	combout => \ALU|Mux9~0_combout\);

\Mult4|out_data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4|out_data[1]~1_combout\ = ( !\Controle|Mux3~0_combout\ & ( ((\ROM|memoriaROM~13_combout\ & \ALU|Mux9~3_combout\)) # (\ALU|Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000000000000000000011111000111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux9~3_combout\,
	datac => \ALU|ALT_INV_Mux9~0_combout\,
	datae => \Controle|ALT_INV_Mux3~0_combout\,
	combout => \Mult4|out_data[1]~1_combout\);

\Registradores|registradores~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Mult4|out_data[1]~1_combout\,
	ena => \Registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registradores|registradores~20_q\);

\Registradores|registradores~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registradores|registradores~44_combout\ = ( \ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~36_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( \ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~28_q\ ) ) ) 
-- # ( \ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~20_q\ ) ) ) # ( !\ROM|memoriaROM~6_combout\ & ( !\ROM|memoriaROM~7_combout\ & ( \Registradores|registradores~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~20_q\,
	datab => \Registradores|ALT_INV_registradores~12_q\,
	datac => \Registradores|ALT_INV_registradores~36_q\,
	datad => \Registradores|ALT_INV_registradores~28_q\,
	datae => \ROM|ALT_INV_memoriaROM~6_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~7_combout\,
	combout => \Registradores|registradores~44_combout\);

\ALU|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Equal1~0_combout\ = (!\Registradores|registradores~43_combout\ & (!\Mult1|out_data[0]~0_combout\ & (!\Registradores|registradores~45_combout\ $ (\Mult1|out_data[2]~2_combout\)))) # (\Registradores|registradores~43_combout\ & 
-- (\Mult1|out_data[0]~0_combout\ & (!\Registradores|registradores~45_combout\ $ (\Mult1|out_data[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000110000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~43_combout\,
	datab => \Registradores|ALT_INV_registradores~45_combout\,
	datac => \Mult1|ALT_INV_out_data[0]~0_combout\,
	datad => \Mult1|ALT_INV_out_data[2]~2_combout\,
	combout => \ALU|Equal1~0_combout\);

\ALU|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Equal1~1_combout\ = (!\Registradores|registradores~47_combout\ & (!\Mult1|out_data[4]~4_combout\ & (!\Registradores|registradores~48_combout\ $ (\Mult1|out_data[5]~5_combout\)))) # (\Registradores|registradores~47_combout\ & 
-- (\Mult1|out_data[4]~4_combout\ & (!\Registradores|registradores~48_combout\ $ (\Mult1|out_data[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000110000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~47_combout\,
	datab => \Registradores|ALT_INV_registradores~48_combout\,
	datac => \Mult1|ALT_INV_out_data[4]~4_combout\,
	datad => \Mult1|ALT_INV_out_data[5]~5_combout\,
	combout => \ALU|Equal1~1_combout\);

\ALU|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Equal1~2_combout\ = (!\ALU|soma|sum6|sum|p_o|out_port~0_combout\ & !\ALU|soma|sum7|sum|p_o|out_port~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|soma|sum6|sum|p_o|ALT_INV_out_port~0_combout\,
	datab => \ALU|soma|sum7|sum|p_o|ALT_INV_out_port~0_combout\,
	combout => \ALU|Equal1~2_combout\);

\ALU|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Equal1~3_combout\ = ( \ALU|Equal1~1_combout\ & ( \ALU|Equal1~2_combout\ & ( (!\ALU|soma|sum3|sum|p_o|out_port~1_combout\ & (\ALU|Equal1~0_combout\ & (!\Registradores|registradores~44_combout\ $ (\Mult1|out_data[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~44_combout\,
	datab => \Mult1|ALT_INV_out_data[1]~1_combout\,
	datac => \ALU|soma|sum3|sum|p_o|ALT_INV_out_port~1_combout\,
	datad => \ALU|ALT_INV_Equal1~0_combout\,
	datae => \ALU|ALT_INV_Equal1~1_combout\,
	dataf => \ALU|ALT_INV_Equal1~2_combout\,
	combout => \ALU|Equal1~3_combout\);

\ALU|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux1~0_combout\ = (!\ROM|memoriaROM~9_combout\ & (\ROM|memoriaROM~11_combout\ & (!\ROM|memoriaROM~13_combout\ & !\ROM|memoriaROM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~13_combout\,
	datad => \ROM|ALT_INV_memoriaROM~15_combout\,
	combout => \ALU|Mux1~0_combout\);

\ALU|condition\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|condition~combout\ = ( \ALU|condition~combout\ & ( \ALU|Mux1~0_combout\ & ( \ALU|Equal1~3_combout\ ) ) ) # ( !\ALU|condition~combout\ & ( \ALU|Mux1~0_combout\ & ( \ALU|Equal1~3_combout\ ) ) ) # ( \ALU|condition~combout\ & ( !\ALU|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALU|ALT_INV_Equal1~3_combout\,
	datae => \ALU|ALT_INV_condition~combout\,
	dataf => \ALU|ALT_INV_Mux1~0_combout\,
	combout => \ALU|condition~combout\);

\ALU|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux0~0_combout\ = !\ROM|memoriaROM~9_combout\ $ (!\ALU|condition~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ALU|ALT_INV_condition~combout\,
	combout => \ALU|Mux0~0_combout\);

\Controle|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Mux5~0_combout\ = (!\ROM|memoriaROM~13_combout\ & (\ROM|memoriaROM~15_combout\ & (!\ROM|memoriaROM~9_combout\ $ (!\ROM|memoriaROM~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100000000000000110000000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~13_combout\,
	datad => \ROM|ALT_INV_memoriaROM~15_combout\,
	combout => \Controle|Mux5~0_combout\);

\ALU|zero\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|zero~combout\ = ( \ALU|zero~combout\ & ( \Controle|Mux5~0_combout\ & ( !\ALU|Mux0~0_combout\ ) ) ) # ( !\ALU|zero~combout\ & ( \Controle|Mux5~0_combout\ & ( !\ALU|Mux0~0_combout\ ) ) ) # ( \ALU|zero~combout\ & ( !\Controle|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALU|ALT_INV_Mux0~0_combout\,
	datae => \ALU|ALT_INV_zero~combout\,
	dataf => \Controle|ALT_INV_Mux5~0_combout\,
	combout => \ALU|zero~combout\);

\Mult3|out_data[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3|out_data[3]~0_combout\ = ( \Controle|Mux5~0_combout\ & ( ((!\ROM|memoriaROM~13_combout\ & (\ROM|memoriaROM~15_combout\ & !\Controle|Mux6~0_combout\))) # (\ALU|zero~combout\) ) ) # ( !\Controle|Mux5~0_combout\ & ( (!\ROM|memoriaROM~13_combout\ & 
-- (\ROM|memoriaROM~15_combout\ & !\Controle|Mux6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000001111111100100000001000000010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ROM|ALT_INV_memoriaROM~15_combout\,
	datac => \Controle|ALT_INV_Mux6~0_combout\,
	datad => \ALU|ALT_INV_zero~combout\,
	datae => \Controle|ALT_INV_Mux5~0_combout\,
	combout => \Mult3|out_data[3]~0_combout\);

\ProgramCounter|out_port[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SomaPC|Add0~5_sumout\,
	asdata => \ROM|memoriaROM~4_combout\,
	sload => \Mult3|out_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|out_port\(1));

\SomaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~9_sumout\ = SUM(( \ProgramCounter|out_port\(2) ) + ( GND ) + ( \SomaPC|Add0~6\ ))
-- \SomaPC|Add0~10\ = CARRY(( \ProgramCounter|out_port\(2) ) + ( GND ) + ( \SomaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_out_port\(2),
	cin => \SomaPC|Add0~6\,
	sumout => \SomaPC|Add0~9_sumout\,
	cout => \SomaPC|Add0~10\);

\ProgramCounter|out_port[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SomaPC|Add0~9_sumout\,
	asdata => \ROM|memoriaROM~6_combout\,
	sload => \Mult3|out_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|out_port\(2));

\SomaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~13_sumout\ = SUM(( \ProgramCounter|out_port\(3) ) + ( GND ) + ( \SomaPC|Add0~10\ ))
-- \SomaPC|Add0~14\ = CARRY(( \ProgramCounter|out_port\(3) ) + ( GND ) + ( \SomaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_out_port\(3),
	cin => \SomaPC|Add0~10\,
	sumout => \SomaPC|Add0~13_sumout\,
	cout => \SomaPC|Add0~14\);

\ProgramCounter|out_port[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SomaPC|Add0~13_sumout\,
	asdata => \ROM|memoriaROM~7_combout\,
	sload => \Mult3|out_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|out_port\(3));

\SomaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~17_sumout\ = SUM(( \ProgramCounter|out_port\(4) ) + ( GND ) + ( \SomaPC|Add0~14\ ))
-- \SomaPC|Add0~18\ = CARRY(( \ProgramCounter|out_port\(4) ) + ( GND ) + ( \SomaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_out_port\(4),
	cin => \SomaPC|Add0~14\,
	sumout => \SomaPC|Add0~17_sumout\,
	cout => \SomaPC|Add0~18\);

\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\ProgramCounter|out_port[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SomaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \Mult3|out_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|out_port\(4));

\SomaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~21_sumout\ = SUM(( \ProgramCounter|out_port\(5) ) + ( GND ) + ( \SomaPC|Add0~18\ ))
-- \SomaPC|Add0~22\ = CARRY(( \ProgramCounter|out_port\(5) ) + ( GND ) + ( \SomaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_out_port\(5),
	cin => \SomaPC|Add0~18\,
	sumout => \SomaPC|Add0~21_sumout\,
	cout => \SomaPC|Add0~22\);

\ProgramCounter|out_port[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SomaPC|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \Mult3|out_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|out_port\(5));

\SomaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~25_sumout\ = SUM(( \ProgramCounter|out_port\(6) ) + ( GND ) + ( \SomaPC|Add0~22\ ))
-- \SomaPC|Add0~26\ = CARRY(( \ProgramCounter|out_port\(6) ) + ( GND ) + ( \SomaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_out_port\(6),
	cin => \SomaPC|Add0~22\,
	sumout => \SomaPC|Add0~25_sumout\,
	cout => \SomaPC|Add0~26\);

\ProgramCounter|out_port[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SomaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \Mult3|out_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|out_port\(6));

\SomaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomaPC|Add0~29_sumout\ = SUM(( \ProgramCounter|out_port\(7) ) + ( GND ) + ( \SomaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_out_port\(7),
	cin => \SomaPC|Add0~26\,
	sumout => \SomaPC|Add0~29_sumout\);

\ProgramCounter|out_port[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SomaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \Mult3|out_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|out_port\(7));

\ROM|memoriaROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memoriaROM~2_combout\ = (!\ProgramCounter|out_port\(7) & (\ROM|memoriaROM~0_combout\ & \ROM|memoriaROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_out_port\(7),
	datab => \ROM|ALT_INV_memoriaROM~0_combout\,
	datac => \ROM|ALT_INV_memoriaROM~1_combout\,
	combout => \ROM|memoriaROM~2_combout\);

\ProgramCounter|out_port[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SomaPC|Add0~1_sumout\,
	asdata => \ROM|memoriaROM~2_combout\,
	sload => \Mult3|out_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|out_port\(0));

\ALU|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux9~1_combout\ = ((\ROM|memoriaROM~13_combout\ & \ALU|Mux9~3_combout\)) # (\ALU|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux9~3_combout\,
	datac => \ALU|ALT_INV_Mux9~0_combout\,
	combout => \ALU|Mux9~1_combout\);

\ALU|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux8~1_combout\ = (!\ROM|memoriaROM~13_combout\ & ((\ALU|Mux8~0_combout\))) # (\ROM|memoriaROM~13_combout\ & (\ALU|Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux8~3_combout\,
	datac => \ALU|ALT_INV_Mux8~0_combout\,
	combout => \ALU|Mux8~1_combout\);

\ALU|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux7~2_combout\ = (!\ROM|memoriaROM~13_combout\ & ((\ALU|Mux7~1_combout\))) # (\ROM|memoriaROM~13_combout\ & (\ALU|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux7~0_combout\,
	datac => \ALU|ALT_INV_Mux7~1_combout\,
	combout => \ALU|Mux7~2_combout\);

\ALU|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux6~3_combout\ = (!\ROM|memoriaROM~13_combout\ & (((\ALU|Mux6~2_combout\) # (\ALU|Mux6~1_combout\)))) # (\ROM|memoriaROM~13_combout\ & (!\ALU|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111011101110010011101110111001001110111011100100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux6~0_combout\,
	datac => \ALU|ALT_INV_Mux6~1_combout\,
	datad => \ALU|ALT_INV_Mux6~2_combout\,
	combout => \ALU|Mux6~3_combout\);

\ALU|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux5~2_combout\ = (!\ROM|memoriaROM~13_combout\ & ((\ALU|Mux5~1_combout\))) # (\ROM|memoriaROM~13_combout\ & (!\ALU|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux5~0_combout\,
	datac => \ALU|ALT_INV_Mux5~1_combout\,
	combout => \ALU|Mux5~2_combout\);

\ALU|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux4~1_combout\ = (!\ROM|memoriaROM~13_combout\ & ((\ALU|Mux4~0_combout\))) # (\ROM|memoriaROM~13_combout\ & (\ALU|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~13_combout\,
	datab => \ALU|ALT_INV_Mux4~3_combout\,
	datac => \ALU|ALT_INV_Mux4~0_combout\,
	combout => \ALU|Mux4~1_combout\);

\ALU|Mux3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux3~8_combout\ = ( \ROM|memoriaROM~15_combout\ & ( \ROM|memoriaROM~13_combout\ & ( !\ALU|Mux3~7_combout\ ) ) ) # ( !\ROM|memoriaROM~15_combout\ & ( \ROM|memoriaROM~13_combout\ & ( \ALU|Mux3~2_combout\ ) ) ) # ( \ROM|memoriaROM~15_combout\ & ( 
-- !\ROM|memoriaROM~13_combout\ & ( \ALU|Mux3~1_combout\ ) ) ) # ( !\ROM|memoriaROM~15_combout\ & ( !\ROM|memoriaROM~13_combout\ & ( \ALU|Mux3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_Mux3~0_combout\,
	datab => \ALU|ALT_INV_Mux3~1_combout\,
	datac => \ALU|ALT_INV_Mux3~2_combout\,
	datad => \ALU|ALT_INV_Mux3~7_combout\,
	datae => \ROM|ALT_INV_memoriaROM~15_combout\,
	dataf => \ROM|ALT_INV_memoriaROM~13_combout\,
	combout => \ALU|Mux3~8_combout\);

\ALU|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Equal0~0_combout\ = ( !\ALU|multi|Produto\(12) & ( (!\ALU|multi|Produto\(8) & (!\ALU|multi|Produto\(9) & (!\ALU|multi|Produto\(10) & !\ALU|multi|Produto\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|multi|ALT_INV_Produto\(8),
	datab => \ALU|multi|ALT_INV_Produto\(9),
	datac => \ALU|multi|ALT_INV_Produto\(10),
	datad => \ALU|multi|ALT_INV_Produto\(11),
	datae => \ALU|multi|ALT_INV_Produto\(12),
	combout => \ALU|Equal0~0_combout\);

\ALU|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux12~0_combout\ = ( \Mult1|out_data[7]~7_combout\ & ( ((!\Registradores|registradores~49_combout\ & (\Mult1|out_data[6]~6_combout\ & !\ALU|soma|sum5|saida|out_port~combout\)) # (\Registradores|registradores~49_combout\ & 
-- ((!\ALU|soma|sum5|saida|out_port~combout\) # (\Mult1|out_data[6]~6_combout\)))) # (\Registradores|registradores~50_combout\) ) ) # ( !\Mult1|out_data[7]~7_combout\ & ( (\Registradores|registradores~50_combout\ & ((!\Registradores|registradores~49_combout\ 
-- & (\Mult1|out_data[6]~6_combout\ & !\ALU|soma|sum5|saida|out_port~combout\)) # (\Registradores|registradores~49_combout\ & ((!\ALU|soma|sum5|saida|out_port~combout\) # (\Mult1|out_data[6]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000001011111110011011100010011000000010111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registradores|ALT_INV_registradores~49_combout\,
	datab => \Registradores|ALT_INV_registradores~50_combout\,
	datac => \Mult1|ALT_INV_out_data[6]~6_combout\,
	datad => \ALU|soma|sum5|saida|ALT_INV_out_port~combout\,
	datae => \Mult1|ALT_INV_out_data[7]~7_combout\,
	combout => \ALU|Mux12~0_combout\);

\ALU|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux12~1_combout\ = ( \ALU|Equal0~0_combout\ & ( \ALU|Mux12~0_combout\ & ( (((\ALU|multi|Produto\(15)) # (\ALU|multi|Produto\(14))) # (\ALU|multi|Produto\(13))) # (\ROM|memoriaROM~15_combout\) ) ) ) # ( !\ALU|Equal0~0_combout\ & ( 
-- \ALU|Mux12~0_combout\ ) ) # ( \ALU|Equal0~0_combout\ & ( !\ALU|Mux12~0_combout\ & ( (!\ROM|memoriaROM~15_combout\ & (((\ALU|multi|Produto\(15)) # (\ALU|multi|Produto\(14))) # (\ALU|multi|Produto\(13)))) ) ) ) # ( !\ALU|Equal0~0_combout\ & ( 
-- !\ALU|Mux12~0_combout\ & ( !\ROM|memoriaROM~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001010101010101011111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~15_combout\,
	datab => \ALU|multi|ALT_INV_Produto\(13),
	datac => \ALU|multi|ALT_INV_Produto\(14),
	datad => \ALU|multi|ALT_INV_Produto\(15),
	datae => \ALU|ALT_INV_Equal0~0_combout\,
	dataf => \ALU|ALT_INV_Mux12~0_combout\,
	combout => \ALU|Mux12~1_combout\);

\ALU|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux13~0_combout\ = (!\ROM|memoriaROM~9_combout\ & (((!\ROM|memoriaROM~13_combout\)) # (\ROM|memoriaROM~11_combout\))) # (\ROM|memoriaROM~9_combout\ & ((!\ROM|memoriaROM~11_combout\) # ((!\ROM|memoriaROM~15_combout\) # (\ROM|memoriaROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111100111111101111110011111110111111001111111011111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memoriaROM~9_combout\,
	datab => \ROM|ALT_INV_memoriaROM~11_combout\,
	datac => \ROM|ALT_INV_memoriaROM~13_combout\,
	datad => \ROM|ALT_INV_memoriaROM~15_combout\,
	combout => \ALU|Mux13~0_combout\);

\ALU|overflow\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|overflow~combout\ = ( \ALU|overflow~combout\ & ( \ALU|Mux13~0_combout\ ) ) # ( \ALU|overflow~combout\ & ( !\ALU|Mux13~0_combout\ & ( \ALU|Mux12~1_combout\ ) ) ) # ( !\ALU|overflow~combout\ & ( !\ALU|Mux13~0_combout\ & ( \ALU|Mux12~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALU|ALT_INV_Mux12~1_combout\,
	datae => \ALU|ALT_INV_overflow~combout\,
	dataf => \ALU|ALT_INV_Mux13~0_combout\,
	combout => \ALU|overflow~combout\);

\AndPorta|out_port\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndPorta|out_port~combout\ = (\ALU|zero~combout\ & \Controle|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|ALT_INV_zero~combout\,
	datab => \Controle|ALT_INV_Mux5~0_combout\,
	combout => \AndPorta|out_port~combout\);
END structure;


