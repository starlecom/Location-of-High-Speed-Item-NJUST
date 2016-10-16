-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "10/13/2016 16:44:31"

-- 
-- Device: Altera EPM570T144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	topdesign IS
    PORT (
	Lsignalin : IN std_logic_vector(63 DOWNTO 0);
	address : IN std_logic_vector(7 DOWNTO 0);
	clkin : IN std_logic;
	dataout : BUFFER std_logic_vector(7 DOWNTO 0);
	cs : BUFFER std_logic;
	cs_led : BUFFER std_logic;
	enwipe_led : BUFFER std_logic
	);
END topdesign;

-- Design Ports Information


ARCHITECTURE structure OF topdesign IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Lsignalin : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clkin : std_logic;
SIGNAL ww_dataout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cs : std_logic;
SIGNAL ww_cs_led : std_logic;
SIGNAL ww_enwipe_led : std_logic;
SIGNAL \U0|Add60~35\ : std_logic;
SIGNAL \U0|Add23~30\ : std_logic;
SIGNAL \U0|Add32~15\ : std_logic;
SIGNAL \U0|Add22~25\ : std_logic;
SIGNAL \U0|Add21~25\ : std_logic;
SIGNAL \U0|Add20~25\ : std_logic;
SIGNAL \U0|Add19~25\ : std_logic;
SIGNAL \U0|Add10~25\ : std_logic;
SIGNAL \U0|Add9~25\ : std_logic;
SIGNAL \U0|Add8~25\ : std_logic;
SIGNAL \U0|Add7~25\ : std_logic;
SIGNAL \U0|Add6~20\ : std_logic;
SIGNAL \U0|Add5~20\ : std_logic;
SIGNAL \U0|Add4~20\ : std_logic;
SIGNAL \U0|Add3~20\ : std_logic;
SIGNAL \clkin~combout\ : std_logic;
SIGNAL \U0|WideNand0~7_combout\ : std_logic;
SIGNAL \U0|WideNand0~8_combout\ : std_logic;
SIGNAL \U0|WideNand0~6_combout\ : std_logic;
SIGNAL \U0|WideNand0~5_combout\ : std_logic;
SIGNAL \U0|WideNand0~9_combout\ : std_logic;
SIGNAL \U0|WideNand0~10_combout\ : std_logic;
SIGNAL \U0|WideNand0~13_combout\ : std_logic;
SIGNAL \U0|WideNand0~12_combout\ : std_logic;
SIGNAL \U0|WideNand0~11_combout\ : std_logic;
SIGNAL \U0|WideNand0~14_combout\ : std_logic;
SIGNAL \U0|WideNand0~15_combout\ : std_logic;
SIGNAL \U0|WideNand0~18_combout\ : std_logic;
SIGNAL \U0|WideNand0~17_combout\ : std_logic;
SIGNAL \U0|WideNand0~16_combout\ : std_logic;
SIGNAL \U0|WideNand0~19_combout\ : std_logic;
SIGNAL \U0|WideNand0~3_combout\ : std_logic;
SIGNAL \U0|WideNand0~1_combout\ : std_logic;
SIGNAL \U0|WideNand0~2_combout\ : std_logic;
SIGNAL \U0|WideNand0~0_combout\ : std_logic;
SIGNAL \U0|WideNand0~4_combout\ : std_logic;
SIGNAL \U0|WideNand0~20_combout\ : std_logic;
SIGNAL \U0|Equal1~1_combout\ : std_logic;
SIGNAL \U0|Equal1~0_combout\ : std_logic;
SIGNAL \U0|Equal1~2_combout\ : std_logic;
SIGNAL \U0|Ldiff~25\ : std_logic;
SIGNAL \U0|Ldiff~23\ : std_logic;
SIGNAL \U0|Ldiff~24\ : std_logic;
SIGNAL \U0|Ldiff~22\ : std_logic;
SIGNAL \U0|Add40~0_combout\ : std_logic;
SIGNAL \U0|Ldiff~19\ : std_logic;
SIGNAL \U0|Ldiff~20\ : std_logic;
SIGNAL \U0|Ldiff~18\ : std_logic;
SIGNAL \U0|Ldiff~21\ : std_logic;
SIGNAL \U0|Add36~0_combout\ : std_logic;
SIGNAL \U0|Add40~2_combout\ : std_logic;
SIGNAL \U0|Add36~2_combout\ : std_logic;
SIGNAL \U0|Add36~1_combout\ : std_logic;
SIGNAL \U0|Add40~1_combout\ : std_logic;
SIGNAL \U0|Add38~12\ : std_logic;
SIGNAL \U0|Add38~12COUT1_21\ : std_logic;
SIGNAL \U0|Add38~17\ : std_logic;
SIGNAL \U0|Add38~17COUT1_22\ : std_logic;
SIGNAL \U0|Add38~7\ : std_logic;
SIGNAL \U0|Add38~7COUT1_23\ : std_logic;
SIGNAL \U0|Add38~0_combout\ : std_logic;
SIGNAL \U0|Add38~5_combout\ : std_logic;
SIGNAL \U0|Add31~1\ : std_logic;
SIGNAL \U0|Add33~1\ : std_logic;
SIGNAL \U0|Add33~0\ : std_logic;
SIGNAL \U0|Add31~0\ : std_logic;
SIGNAL \U0|Add32~17_cout0\ : std_logic;
SIGNAL \U0|Add32~17COUT1_21\ : std_logic;
SIGNAL \U0|Add32~7\ : std_logic;
SIGNAL \U0|Add32~7COUT1_22\ : std_logic;
SIGNAL \U0|Add32~12\ : std_logic;
SIGNAL \U0|Add32~12COUT1_23\ : std_logic;
SIGNAL \U0|Add32~0_combout\ : std_logic;
SIGNAL \U0|Add32~10_combout\ : std_logic;
SIGNAL \U0|Add38~15_combout\ : std_logic;
SIGNAL \U0|Add38~10_combout\ : std_logic;
SIGNAL \U0|Add32~5_combout\ : std_logic;
SIGNAL \U0|Add34~12\ : std_logic;
SIGNAL \U0|Add34~12COUT1_26\ : std_logic;
SIGNAL \U0|Add34~17\ : std_logic;
SIGNAL \U0|Add34~17COUT1_27\ : std_logic;
SIGNAL \U0|Add34~7\ : std_logic;
SIGNAL \U0|Add34~7COUT1_28\ : std_logic;
SIGNAL \U0|Add34~2\ : std_logic;
SIGNAL \U0|Add34~2COUT1_29\ : std_logic;
SIGNAL \U0|Add34~20_combout\ : std_logic;
SIGNAL \U0|Ldiff~14\ : std_logic;
SIGNAL \U0|Ldiff~15\ : std_logic;
SIGNAL \U0|Ldiff~17\ : std_logic;
SIGNAL \U0|Ldiff~16\ : std_logic;
SIGNAL \U0|Add48~0_combout\ : std_logic;
SIGNAL \U0|Ldiff~13\ : std_logic;
SIGNAL \U0|Ldiff~10\ : std_logic;
SIGNAL \U0|Ldiff~11\ : std_logic;
SIGNAL \U0|Ldiff~12\ : std_logic;
SIGNAL \U0|Add44~0_combout\ : std_logic;
SIGNAL \U0|Add48~2_combout\ : std_logic;
SIGNAL \U0|Add44~2_combout\ : std_logic;
SIGNAL \U0|Add48~1_combout\ : std_logic;
SIGNAL \U0|Add44~1_combout\ : std_logic;
SIGNAL \U0|Add46~12\ : std_logic;
SIGNAL \U0|Add46~12COUT1_21\ : std_logic;
SIGNAL \U0|Add46~17\ : std_logic;
SIGNAL \U0|Add46~17COUT1_22\ : std_logic;
SIGNAL \U0|Add46~7\ : std_logic;
SIGNAL \U0|Add46~7COUT1_23\ : std_logic;
SIGNAL \U0|Add46~0_combout\ : std_logic;
SIGNAL \U0|Ldiff~4\ : std_logic;
SIGNAL \U0|Ldiff~2\ : std_logic;
SIGNAL \U0|Ldiff~5\ : std_logic;
SIGNAL \U0|Ldiff~3\ : std_logic;
SIGNAL \U0|Add52~0_combout\ : std_logic;
SIGNAL \U0|Ldiff~7\ : std_logic;
SIGNAL \U0|Ldiff~8\ : std_logic;
SIGNAL \U0|Ldiff~9\ : std_logic;
SIGNAL \U0|Ldiff~6\ : std_logic;
SIGNAL \U0|Add56~0_combout\ : std_logic;
SIGNAL \U0|Add52~2_combout\ : std_logic;
SIGNAL \U0|Add56~2_combout\ : std_logic;
SIGNAL \U0|Add56~1_combout\ : std_logic;
SIGNAL \U0|Add52~1_combout\ : std_logic;
SIGNAL \U0|Add54~12\ : std_logic;
SIGNAL \U0|Add54~12COUT1_21\ : std_logic;
SIGNAL \U0|Add54~17\ : std_logic;
SIGNAL \U0|Add54~17COUT1_22\ : std_logic;
SIGNAL \U0|Add54~7\ : std_logic;
SIGNAL \U0|Add54~7COUT1_23\ : std_logic;
SIGNAL \U0|Add54~0_combout\ : std_logic;
SIGNAL \U0|Add54~5_combout\ : std_logic;
SIGNAL \U0|Add46~5_combout\ : std_logic;
SIGNAL \U0|Add54~15_combout\ : std_logic;
SIGNAL \U0|Add46~15_combout\ : std_logic;
SIGNAL \U0|Add54~10_combout\ : std_logic;
SIGNAL \U0|Add46~10_combout\ : std_logic;
SIGNAL \U0|Add50~12\ : std_logic;
SIGNAL \U0|Add50~12COUT1_26\ : std_logic;
SIGNAL \U0|Add50~17\ : std_logic;
SIGNAL \U0|Add50~17COUT1_27\ : std_logic;
SIGNAL \U0|Add50~7\ : std_logic;
SIGNAL \U0|Add50~7COUT1_28\ : std_logic;
SIGNAL \U0|Add50~2\ : std_logic;
SIGNAL \U0|Add50~2COUT1_29\ : std_logic;
SIGNAL \U0|Add50~20_combout\ : std_logic;
SIGNAL \U0|Add34~0_combout\ : std_logic;
SIGNAL \U0|Add50~0_combout\ : std_logic;
SIGNAL \U0|Add50~5_combout\ : std_logic;
SIGNAL \U0|Add34~5_combout\ : std_logic;
SIGNAL \U0|Add50~15_combout\ : std_logic;
SIGNAL \U0|Add34~15_combout\ : std_logic;
SIGNAL \U0|Add34~10_combout\ : std_logic;
SIGNAL \U0|Add50~10_combout\ : std_logic;
SIGNAL \U0|Add42~12\ : std_logic;
SIGNAL \U0|Add42~12COUT1_31\ : std_logic;
SIGNAL \U0|Add42~17\ : std_logic;
SIGNAL \U0|Add42~17COUT1_32\ : std_logic;
SIGNAL \U0|Add42~7\ : std_logic;
SIGNAL \U0|Add42~7COUT1_33\ : std_logic;
SIGNAL \U0|Add42~2\ : std_logic;
SIGNAL \U0|Add42~20_combout\ : std_logic;
SIGNAL \U0|Ldiff~37\ : std_logic;
SIGNAL \U0|Ldiff~40\ : std_logic;
SIGNAL \U0|Ldiff~39\ : std_logic;
SIGNAL \U0|Add2~6_combout\ : std_logic;
SIGNAL \U0|Ldiff~38\ : std_logic;
SIGNAL \U0|num~1_combout\ : std_logic;
SIGNAL \U0|Ldiff~41\ : std_logic;
SIGNAL \U0|num~0_combout\ : std_logic;
SIGNAL \U0|Add3~22_cout0\ : std_logic;
SIGNAL \U0|Add3~22COUT1_26\ : std_logic;
SIGNAL \U0|Add3~12\ : std_logic;
SIGNAL \U0|Add3~12COUT1_27\ : std_logic;
SIGNAL \U0|Add3~17\ : std_logic;
SIGNAL \U0|Add3~17COUT1_28\ : std_logic;
SIGNAL \U0|Add3~5_combout\ : std_logic;
SIGNAL \U0|Add3~15_combout\ : std_logic;
SIGNAL \U0|Add3~10_combout\ : std_logic;
SIGNAL \U0|Ldiff~36\ : std_logic;
SIGNAL \U0|Add4~22_cout0\ : std_logic;
SIGNAL \U0|Add4~22COUT1_26\ : std_logic;
SIGNAL \U0|Add4~12\ : std_logic;
SIGNAL \U0|Add4~12COUT1_27\ : std_logic;
SIGNAL \U0|Add4~17\ : std_logic;
SIGNAL \U0|Add4~17COUT1_28\ : std_logic;
SIGNAL \U0|Add4~5_combout\ : std_logic;
SIGNAL \U0|Add4~15_combout\ : std_logic;
SIGNAL \U0|Ldiff~35\ : std_logic;
SIGNAL \U0|Add4~10_combout\ : std_logic;
SIGNAL \U0|Add5~22_cout0\ : std_logic;
SIGNAL \U0|Add5~22COUT1_26\ : std_logic;
SIGNAL \U0|Add5~12\ : std_logic;
SIGNAL \U0|Add5~12COUT1_27\ : std_logic;
SIGNAL \U0|Add5~17\ : std_logic;
SIGNAL \U0|Add5~17COUT1_28\ : std_logic;
SIGNAL \U0|Add5~5_combout\ : std_logic;
SIGNAL \U0|Add5~15_combout\ : std_logic;
SIGNAL \U0|Ldiff~34\ : std_logic;
SIGNAL \U0|Add5~10_combout\ : std_logic;
SIGNAL \U0|Add6~22_cout0\ : std_logic;
SIGNAL \U0|Add6~22COUT1_26\ : std_logic;
SIGNAL \U0|Add6~12\ : std_logic;
SIGNAL \U0|Add6~12COUT1_27\ : std_logic;
SIGNAL \U0|Add6~17\ : std_logic;
SIGNAL \U0|Add6~17COUT1_28\ : std_logic;
SIGNAL \U0|Add6~5_combout\ : std_logic;
SIGNAL \U0|Add6~15_combout\ : std_logic;
SIGNAL \U0|Ldiff~33\ : std_logic;
SIGNAL \U0|Add6~10_combout\ : std_logic;
SIGNAL \U0|Add7~27_cout0\ : std_logic;
SIGNAL \U0|Add7~27COUT1_31\ : std_logic;
SIGNAL \U0|Add7~12\ : std_logic;
SIGNAL \U0|Add7~12COUT1_32\ : std_logic;
SIGNAL \U0|Add7~17\ : std_logic;
SIGNAL \U0|Add7~17COUT1_33\ : std_logic;
SIGNAL \U0|Add7~7\ : std_logic;
SIGNAL \U0|Add3~7\ : std_logic;
SIGNAL \U0|Add3~7COUT1_29\ : std_logic;
SIGNAL \U0|Add3~0_combout\ : std_logic;
SIGNAL \U0|Add4~7\ : std_logic;
SIGNAL \U0|Add4~7COUT1_29\ : std_logic;
SIGNAL \U0|Add4~0_combout\ : std_logic;
SIGNAL \U0|Add5~7\ : std_logic;
SIGNAL \U0|Add5~7COUT1_29\ : std_logic;
SIGNAL \U0|Add5~0_combout\ : std_logic;
SIGNAL \U0|Add6~7\ : std_logic;
SIGNAL \U0|Add6~7COUT1_29\ : std_logic;
SIGNAL \U0|Add6~0_combout\ : std_logic;
SIGNAL \U0|Add7~2\ : std_logic;
SIGNAL \U0|Add7~2COUT1_34\ : std_logic;
SIGNAL \U0|Add7~20_combout\ : std_logic;
SIGNAL \U0|Add7~5_combout\ : std_logic;
SIGNAL \U0|Add7~15_combout\ : std_logic;
SIGNAL \U0|Ldiff~32\ : std_logic;
SIGNAL \U0|Add7~10_combout\ : std_logic;
SIGNAL \U0|Add8~27_cout0\ : std_logic;
SIGNAL \U0|Add8~27COUT1_31\ : std_logic;
SIGNAL \U0|Add8~12\ : std_logic;
SIGNAL \U0|Add8~12COUT1_32\ : std_logic;
SIGNAL \U0|Add8~17\ : std_logic;
SIGNAL \U0|Add8~17COUT1_33\ : std_logic;
SIGNAL \U0|Add8~7\ : std_logic;
SIGNAL \U0|Add7~0_combout\ : std_logic;
SIGNAL \U0|Add8~2\ : std_logic;
SIGNAL \U0|Add8~2COUT1_34\ : std_logic;
SIGNAL \U0|Add8~20_combout\ : std_logic;
SIGNAL \U0|Add8~5_combout\ : std_logic;
SIGNAL \U0|Add8~15_combout\ : std_logic;
SIGNAL \U0|Ldiff~31\ : std_logic;
SIGNAL \U0|Add8~10_combout\ : std_logic;
SIGNAL \U0|Mux6~2\ : std_logic;
SIGNAL \U0|Add9~27_cout0\ : std_logic;
SIGNAL \U0|Add9~27COUT1_31\ : std_logic;
SIGNAL \U0|Add9~12\ : std_logic;
SIGNAL \U0|Add9~12COUT1_32\ : std_logic;
SIGNAL \U0|Add9~17\ : std_logic;
SIGNAL \U0|Add9~17COUT1_33\ : std_logic;
SIGNAL \U0|Add9~7\ : std_logic;
SIGNAL \U0|Add8~0_combout\ : std_logic;
SIGNAL \U0|Add9~2\ : std_logic;
SIGNAL \U0|Add9~2COUT1_34\ : std_logic;
SIGNAL \U0|Add9~20_combout\ : std_logic;
SIGNAL \U0|Add9~5_combout\ : std_logic;
SIGNAL \U0|Add9~15_combout\ : std_logic;
SIGNAL \U0|Ldiff~30\ : std_logic;
SIGNAL \U0|Add9~10_combout\ : std_logic;
SIGNAL \U0|Mux4~2\ : std_logic;
SIGNAL \U0|Add10~27_cout0\ : std_logic;
SIGNAL \U0|Add10~27COUT1_31\ : std_logic;
SIGNAL \U0|Add10~12\ : std_logic;
SIGNAL \U0|Add10~12COUT1_32\ : std_logic;
SIGNAL \U0|Add10~17\ : std_logic;
SIGNAL \U0|Add10~17COUT1_33\ : std_logic;
SIGNAL \U0|Add10~7\ : std_logic;
SIGNAL \U0|Add9~0_combout\ : std_logic;
SIGNAL \U0|Add10~2\ : std_logic;
SIGNAL \U0|Add10~2COUT1_34\ : std_logic;
SIGNAL \U0|Add10~20_combout\ : std_logic;
SIGNAL \U0|Add10~15_combout\ : std_logic;
SIGNAL \U0|Ldiff~29\ : std_logic;
SIGNAL \U0|Add10~10_combout\ : std_logic;
SIGNAL \U0|Mux2~2\ : std_logic;
SIGNAL \U0|Add19~27_cout0\ : std_logic;
SIGNAL \U0|Add19~27COUT1_31\ : std_logic;
SIGNAL \U0|Add19~12\ : std_logic;
SIGNAL \U0|Add19~12COUT1_32\ : std_logic;
SIGNAL \U0|Add19~17\ : std_logic;
SIGNAL \U0|Add10~0_combout\ : std_logic;
SIGNAL \U0|Add10~5_combout\ : std_logic;
SIGNAL \U0|Add19~7\ : std_logic;
SIGNAL \U0|Add19~7COUT1\ : std_logic;
SIGNAL \U0|Add19~2\ : std_logic;
SIGNAL \U0|Add19~2COUT1_33\ : std_logic;
SIGNAL \U0|Add19~20_combout\ : std_logic;
SIGNAL \U0|Add19~5_combout\ : std_logic;
SIGNAL \U0|Add19~15_combout\ : std_logic;
SIGNAL \U0|Add19~10_combout\ : std_logic;
SIGNAL \U0|Ldiff~28\ : std_logic;
SIGNAL \U0|Mux0~2\ : std_logic;
SIGNAL \U0|Add20~27_cout0\ : std_logic;
SIGNAL \U0|Add20~27COUT1_31\ : std_logic;
SIGNAL \U0|Add20~12\ : std_logic;
SIGNAL \U0|Add20~12COUT1_32\ : std_logic;
SIGNAL \U0|Add20~17\ : std_logic;
SIGNAL \U0|Add20~17COUT1_33\ : std_logic;
SIGNAL \U0|Add20~7\ : std_logic;
SIGNAL \U0|Add19~0_combout\ : std_logic;
SIGNAL \U0|Add20~2\ : std_logic;
SIGNAL \U0|Add20~2COUT1_34\ : std_logic;
SIGNAL \U0|Add20~20_combout\ : std_logic;
SIGNAL \U0|Add20~5_combout\ : std_logic;
SIGNAL \U0|Add20~15_combout\ : std_logic;
SIGNAL \U0|Ldiff~27\ : std_logic;
SIGNAL \U0|Add20~10_combout\ : std_logic;
SIGNAL \U0|Add21~27_cout0\ : std_logic;
SIGNAL \U0|Add21~27COUT1_31\ : std_logic;
SIGNAL \U0|Add21~12\ : std_logic;
SIGNAL \U0|Add21~12COUT1_32\ : std_logic;
SIGNAL \U0|Add21~17\ : std_logic;
SIGNAL \U0|Add21~17COUT1_33\ : std_logic;
SIGNAL \U0|Add21~7\ : std_logic;
SIGNAL \U0|Add20~0_combout\ : std_logic;
SIGNAL \U0|Add21~2\ : std_logic;
SIGNAL \U0|Add21~2COUT1_34\ : std_logic;
SIGNAL \U0|Add21~20_combout\ : std_logic;
SIGNAL \U0|Add21~15_combout\ : std_logic;
SIGNAL \U0|Ldiff~26\ : std_logic;
SIGNAL \U0|Add21~10_combout\ : std_logic;
SIGNAL \U0|Add22~27_cout0\ : std_logic;
SIGNAL \U0|Add22~27COUT1_31\ : std_logic;
SIGNAL \U0|Add22~12\ : std_logic;
SIGNAL \U0|Add22~12COUT1_32\ : std_logic;
SIGNAL \U0|Add22~17\ : std_logic;
SIGNAL \U0|Add21~0_combout\ : std_logic;
SIGNAL \U0|Add21~5_combout\ : std_logic;
SIGNAL \U0|Add22~7\ : std_logic;
SIGNAL \U0|Add22~7COUT1_33\ : std_logic;
SIGNAL \U0|Add22~2\ : std_logic;
SIGNAL \U0|Add22~2COUT1_34\ : std_logic;
SIGNAL \U0|Add22~20_combout\ : std_logic;
SIGNAL \U0|Add22~5_combout\ : std_logic;
SIGNAL \U0|Add22~15_combout\ : std_logic;
SIGNAL \U0|Add22~10_combout\ : std_logic;
SIGNAL \U0|Ldiff~1\ : std_logic;
SIGNAL \U0|Add23~32_cout0\ : std_logic;
SIGNAL \U0|Add23~32COUT1_36\ : std_logic;
SIGNAL \U0|Add23~12\ : std_logic;
SIGNAL \U0|Add23~12COUT1_37\ : std_logic;
SIGNAL \U0|Add23~17\ : std_logic;
SIGNAL \U0|Add23~17COUT1_38\ : std_logic;
SIGNAL \U0|Add23~7\ : std_logic;
SIGNAL \U0|Add22~0_combout\ : std_logic;
SIGNAL \U0|Add23~2\ : std_logic;
SIGNAL \U0|Add23~2COUT1_39\ : std_logic;
SIGNAL \U0|Add23~20_combout\ : std_logic;
SIGNAL \U0|Add23~0_combout\ : std_logic;
SIGNAL \U0|Add23~5_combout\ : std_logic;
SIGNAL \U0|Add23~15_combout\ : std_logic;
SIGNAL \U0|Ldiff~0\ : std_logic;
SIGNAL \U0|Add23~10_combout\ : std_logic;
SIGNAL \U0|Add24~12\ : std_logic;
SIGNAL \U0|Add24~12COUT1_31\ : std_logic;
SIGNAL \U0|Add24~17\ : std_logic;
SIGNAL \U0|Add24~17COUT1_32\ : std_logic;
SIGNAL \U0|Add24~7\ : std_logic;
SIGNAL \U0|Add24~7COUT1\ : std_logic;
SIGNAL \U0|Add24~2\ : std_logic;
SIGNAL \U0|Add24~20_combout\ : std_logic;
SIGNAL \U0|Add42~0_combout\ : std_logic;
SIGNAL \U0|Add24~0_combout\ : std_logic;
SIGNAL \U0|Add24~5_combout\ : std_logic;
SIGNAL \U0|Add42~5_combout\ : std_logic;
SIGNAL \U0|Add42~15_combout\ : std_logic;
SIGNAL \U0|Add24~15_combout\ : std_logic;
SIGNAL \U0|Add24~10_combout\ : std_logic;
SIGNAL \U0|Add42~10_combout\ : std_logic;
SIGNAL \U0|Add58~12\ : std_logic;
SIGNAL \U0|Add58~12COUT1_36\ : std_logic;
SIGNAL \U0|Add58~17\ : std_logic;
SIGNAL \U0|Add58~17COUT1_37\ : std_logic;
SIGNAL \U0|Add58~7\ : std_logic;
SIGNAL \U0|Add58~7COUT1_38\ : std_logic;
SIGNAL \U0|Add58~2\ : std_logic;
SIGNAL \U0|Add58~20_combout\ : std_logic;
SIGNAL \U0|Add58~0_combout\ : std_logic;
SIGNAL \U0|Add58~5_combout\ : std_logic;
SIGNAL \U0|Add59~1\ : std_logic;
SIGNAL \U0|Add58~15_combout\ : std_logic;
SIGNAL \U0|Add58~10_combout\ : std_logic;
SIGNAL \U0|Add59~0\ : std_logic;
SIGNAL \U0|Mux1~0_combout\ : std_logic;
SIGNAL \U0|Add60~37_cout0\ : std_logic;
SIGNAL \U0|Add60~37COUT1_41\ : std_logic;
SIGNAL \U0|Add60~12\ : std_logic;
SIGNAL \U0|Add60~12COUT1_42\ : std_logic;
SIGNAL \U0|Add60~17\ : std_logic;
SIGNAL \U0|Add60~17COUT1_43\ : std_logic;
SIGNAL \U0|Add60~7\ : std_logic;
SIGNAL \U0|Add60~7COUT1_44\ : std_logic;
SIGNAL \U0|Add60~2\ : std_logic;
SIGNAL \U0|Add60~20_combout\ : std_logic;
SIGNAL \U0|Add60~5_combout\ : std_logic;
SIGNAL \U0|Add60~10_combout\ : std_logic;
SIGNAL \U0|Add60~0_combout\ : std_logic;
SIGNAL \U0|Add60~15_combout\ : std_logic;
SIGNAL \U0|LessThan0~2_combout\ : std_logic;
SIGNAL \U0|Add23~22\ : std_logic;
SIGNAL \U0|Add23~22COUT1_40\ : std_logic;
SIGNAL \U0|Add23~25_combout\ : std_logic;
SIGNAL \U0|Add24~22\ : std_logic;
SIGNAL \U0|Add24~22COUT1_33\ : std_logic;
SIGNAL \U0|Add24~25_combout\ : std_logic;
SIGNAL \U0|Add42~22\ : std_logic;
SIGNAL \U0|Add42~22COUT1_34\ : std_logic;
SIGNAL \U0|Add42~25_combout\ : std_logic;
SIGNAL \U0|Add58~22\ : std_logic;
SIGNAL \U0|Add58~22COUT1_39\ : std_logic;
SIGNAL \U0|Add58~25_combout\ : std_logic;
SIGNAL \U0|Add60~22\ : std_logic;
SIGNAL \U0|Add60~22COUT1_45\ : std_logic;
SIGNAL \U0|Add60~25_combout\ : std_logic;
SIGNAL \U0|Add58~27\ : std_logic;
SIGNAL \U0|Add58~27COUT1_40\ : std_logic;
SIGNAL \U0|Add58~30_combout\ : std_logic;
SIGNAL \U0|Add60~27\ : std_logic;
SIGNAL \U0|Add60~27COUT1_46\ : std_logic;
SIGNAL \U0|Add60~30_combout\ : std_logic;
SIGNAL \U0|LessThan0~3_combout\ : std_logic;
SIGNAL \U0|Add62~12\ : std_logic;
SIGNAL \U0|Add62~12COUT1_36\ : std_logic;
SIGNAL \U0|Add62~17\ : std_logic;
SIGNAL \U0|Add62~17COUT1_37\ : std_logic;
SIGNAL \U0|Add62~7\ : std_logic;
SIGNAL \U0|Add62~7COUT1_38\ : std_logic;
SIGNAL \U0|Add62~2\ : std_logic;
SIGNAL \U0|Add62~20_combout\ : std_logic;
SIGNAL \U0|Add62~10_combout\ : std_logic;
SIGNAL \U0|Add62~15_combout\ : std_logic;
SIGNAL \U0|Add62~0_combout\ : std_logic;
SIGNAL \U0|Add62~5_combout\ : std_logic;
SIGNAL \U0|LessThan0~0_combout\ : std_logic;
SIGNAL \U0|Add62~22\ : std_logic;
SIGNAL \U0|Add62~22COUT1_39\ : std_logic;
SIGNAL \U0|Add62~25_combout\ : std_logic;
SIGNAL \U0|Add62~27\ : std_logic;
SIGNAL \U0|Add62~27COUT1_40\ : std_logic;
SIGNAL \U0|Add62~30_combout\ : std_logic;
SIGNAL \U0|LessThan0~1_combout\ : std_logic;
SIGNAL \U0|LessThan0~4\ : std_logic;
SIGNAL \U0|enwipe~regout\ : std_logic;
SIGNAL \U0|LsignalNow[62]~0_combout\ : std_logic;
SIGNAL \U0|Mux7~0_combout\ : std_logic;
SIGNAL \U0|Mux7~1_combout\ : std_logic;
SIGNAL \U0|Mux7~2_combout\ : std_logic;
SIGNAL \U0|Mux7~3_combout\ : std_logic;
SIGNAL \U0|data[7]~0_combout\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|Mux6~3\ : std_logic;
SIGNAL \U0|Mux6~0_combout\ : std_logic;
SIGNAL \U0|Mux6~1_combout\ : std_logic;
SIGNAL \U0|Mux5~0_combout\ : std_logic;
SIGNAL \U0|Mux5~1_combout\ : std_logic;
SIGNAL \U0|Mux5~2_combout\ : std_logic;
SIGNAL \U0|Mux5~3_combout\ : std_logic;
SIGNAL \U0|Mux4~3\ : std_logic;
SIGNAL \U0|Mux4~0_combout\ : std_logic;
SIGNAL \U0|Mux4~1_combout\ : std_logic;
SIGNAL \U0|Mux3~0_combout\ : std_logic;
SIGNAL \U0|Mux3~1_combout\ : std_logic;
SIGNAL \U0|Mux3~2_combout\ : std_logic;
SIGNAL \U0|Mux3~3_combout\ : std_logic;
SIGNAL \U0|Mux2~3\ : std_logic;
SIGNAL \U0|Mux2~0_combout\ : std_logic;
SIGNAL \U0|Mux2~1_combout\ : std_logic;
SIGNAL \U0|Mux1~2_combout\ : std_logic;
SIGNAL \U0|Mux1~3_combout\ : std_logic;
SIGNAL \U0|Mux1~1\ : std_logic;
SIGNAL \U0|Mux0~3\ : std_logic;
SIGNAL \U0|Mux0~0_combout\ : std_logic;
SIGNAL \U0|Mux0~1_combout\ : std_logic;
SIGNAL \U0|csreg~regout\ : std_logic;
SIGNAL \U0|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \address~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lsignalin~combout\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \U0|LsignalNow\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \U0|ALT_INV_csreg~regout\ : std_logic;

BEGIN

ww_Lsignalin <= Lsignalin;
ww_address <= address;
ww_clkin <= clkin;
dataout <= ww_dataout;
cs <= ww_cs;
cs_led <= ww_cs_led;
enwipe_led <= ww_enwipe_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U0|ALT_INV_csreg~regout\ <= NOT \U0|csreg~regout\;

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clkin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clkin,
	combout => \clkin~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[48]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(48),
	combout => \Lsignalin~combout\(48));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[26]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(26),
	combout => \Lsignalin~combout\(26));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[25]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(25),
	combout => \Lsignalin~combout\(25));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[24]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(24),
	combout => \Lsignalin~combout\(24));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[27]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(27),
	combout => \Lsignalin~combout\(27));

-- Location: LC_X9_Y4_N0
\U0|WideNand0~7\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~7_combout\ = (\Lsignalin~combout\(26) & (\Lsignalin~combout\(25) & (\Lsignalin~combout\(24) & \Lsignalin~combout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(26),
	datab => \Lsignalin~combout\(25),
	datac => \Lsignalin~combout\(24),
	datad => \Lsignalin~combout\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~7_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[28]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(28),
	combout => \Lsignalin~combout\(28));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[29]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(29),
	combout => \Lsignalin~combout\(29));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[31]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(31),
	combout => \Lsignalin~combout\(31));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[30]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(30),
	combout => \Lsignalin~combout\(30));

-- Location: LC_X8_Y4_N9
\U0|WideNand0~8\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~8_combout\ = (\Lsignalin~combout\(28) & (\Lsignalin~combout\(29) & (\Lsignalin~combout\(31) & \Lsignalin~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(28),
	datab => \Lsignalin~combout\(29),
	datac => \Lsignalin~combout\(31),
	datad => \Lsignalin~combout\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~8_combout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[22]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(22),
	combout => \Lsignalin~combout\(22));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[21]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(21),
	combout => \Lsignalin~combout\(21));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[20]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(20),
	combout => \Lsignalin~combout\(20));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[23]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(23),
	combout => \Lsignalin~combout\(23));

-- Location: LC_X8_Y4_N7
\U0|WideNand0~6\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~6_combout\ = (\Lsignalin~combout\(22) & (\Lsignalin~combout\(21) & (\Lsignalin~combout\(20) & \Lsignalin~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(22),
	datab => \Lsignalin~combout\(21),
	datac => \Lsignalin~combout\(20),
	datad => \Lsignalin~combout\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~6_combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[19]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(19),
	combout => \Lsignalin~combout\(19));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[17]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(17),
	combout => \Lsignalin~combout\(17));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[16]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(16),
	combout => \Lsignalin~combout\(16));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[18]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(18),
	combout => \Lsignalin~combout\(18));

-- Location: LC_X8_Y5_N8
\U0|WideNand0~5\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~5_combout\ = (\Lsignalin~combout\(19) & (\Lsignalin~combout\(17) & (\Lsignalin~combout\(16) & \Lsignalin~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(19),
	datab => \Lsignalin~combout\(17),
	datac => \Lsignalin~combout\(16),
	datad => \Lsignalin~combout\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~5_combout\);

-- Location: LC_X8_Y4_N8
\U0|WideNand0~9\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~9_combout\ = (\U0|WideNand0~7_combout\ & (\U0|WideNand0~8_combout\ & (\U0|WideNand0~6_combout\ & \U0|WideNand0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideNand0~7_combout\,
	datab => \U0|WideNand0~8_combout\,
	datac => \U0|WideNand0~6_combout\,
	datad => \U0|WideNand0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~9_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[33]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(33),
	combout => \Lsignalin~combout\(33));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[32]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(32),
	combout => \Lsignalin~combout\(32));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[35]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(35),
	combout => \Lsignalin~combout\(35));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[34]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(34),
	combout => \Lsignalin~combout\(34));

-- Location: LC_X6_Y4_N8
\U0|WideNand0~10\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~10_combout\ = (\Lsignalin~combout\(33) & (\Lsignalin~combout\(32) & (\Lsignalin~combout\(35) & \Lsignalin~combout\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(33),
	datab => \Lsignalin~combout\(32),
	datac => \Lsignalin~combout\(35),
	datad => \Lsignalin~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~10_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[44]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(44),
	combout => \Lsignalin~combout\(44));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[45]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(45),
	combout => \Lsignalin~combout\(45));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[47]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(47),
	combout => \Lsignalin~combout\(47));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[46]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(46),
	combout => \Lsignalin~combout\(46));

-- Location: LC_X5_Y7_N1
\U0|WideNand0~13\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~13_combout\ = (\Lsignalin~combout\(44) & (\Lsignalin~combout\(45) & (\Lsignalin~combout\(47) & \Lsignalin~combout\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(44),
	datab => \Lsignalin~combout\(45),
	datac => \Lsignalin~combout\(47),
	datad => \Lsignalin~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~13_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[40]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(40),
	combout => \Lsignalin~combout\(40));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[41]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(41),
	combout => \Lsignalin~combout\(41));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[43]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(43),
	combout => \Lsignalin~combout\(43));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[42]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(42),
	combout => \Lsignalin~combout\(42));

-- Location: LC_X5_Y7_N4
\U0|WideNand0~12\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~12_combout\ = (\Lsignalin~combout\(40) & (\Lsignalin~combout\(41) & (\Lsignalin~combout\(43) & \Lsignalin~combout\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(40),
	datab => \Lsignalin~combout\(41),
	datac => \Lsignalin~combout\(43),
	datad => \Lsignalin~combout\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~12_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[38]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(38),
	combout => \Lsignalin~combout\(38));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[36]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(36),
	combout => \Lsignalin~combout\(36));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[39]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(39),
	combout => \Lsignalin~combout\(39));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[37]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(37),
	combout => \Lsignalin~combout\(37));

-- Location: LC_X6_Y7_N1
\U0|WideNand0~11\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~11_combout\ = (\Lsignalin~combout\(38) & (\Lsignalin~combout\(36) & (\Lsignalin~combout\(39) & \Lsignalin~combout\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(38),
	datab => \Lsignalin~combout\(36),
	datac => \Lsignalin~combout\(39),
	datad => \Lsignalin~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~11_combout\);

-- Location: LC_X5_Y7_N2
\U0|WideNand0~14\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~14_combout\ = (\U0|WideNand0~10_combout\ & (\U0|WideNand0~13_combout\ & (\U0|WideNand0~12_combout\ & \U0|WideNand0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideNand0~10_combout\,
	datab => \U0|WideNand0~13_combout\,
	datac => \U0|WideNand0~12_combout\,
	datad => \U0|WideNand0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~14_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[49]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(49),
	combout => \Lsignalin~combout\(49));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[51]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(51),
	combout => \Lsignalin~combout\(51));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[50]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(50),
	combout => \Lsignalin~combout\(50));

-- Location: LC_X4_Y4_N5
\U0|WideNand0~15\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~15_combout\ = (\Lsignalin~combout\(48) & (\Lsignalin~combout\(49) & (\Lsignalin~combout\(51) & \Lsignalin~combout\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(48),
	datab => \Lsignalin~combout\(49),
	datac => \Lsignalin~combout\(51),
	datad => \Lsignalin~combout\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~15_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[62]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(62),
	combout => \Lsignalin~combout\(62));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[63]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(63),
	combout => \Lsignalin~combout\(63));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[60]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(60),
	combout => \Lsignalin~combout\(60));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[61]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(61),
	combout => \Lsignalin~combout\(61));

-- Location: LC_X3_Y5_N9
\U0|WideNand0~18\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~18_combout\ = (\Lsignalin~combout\(62) & (\Lsignalin~combout\(63) & (\Lsignalin~combout\(60) & \Lsignalin~combout\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(62),
	datab => \Lsignalin~combout\(63),
	datac => \Lsignalin~combout\(60),
	datad => \Lsignalin~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~18_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[59]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(59),
	combout => \Lsignalin~combout\(59));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[56]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(56),
	combout => \Lsignalin~combout\(56));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[57]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(57),
	combout => \Lsignalin~combout\(57));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[58]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(58),
	combout => \Lsignalin~combout\(58));

-- Location: LC_X4_Y4_N6
\U0|WideNand0~17\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~17_combout\ = (\Lsignalin~combout\(59) & (\Lsignalin~combout\(56) & (\Lsignalin~combout\(57) & \Lsignalin~combout\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(59),
	datab => \Lsignalin~combout\(56),
	datac => \Lsignalin~combout\(57),
	datad => \Lsignalin~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~17_combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[55]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(55),
	combout => \Lsignalin~combout\(55));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[52]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(52),
	combout => \Lsignalin~combout\(52));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[54]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(54),
	combout => \Lsignalin~combout\(54));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[53]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(53),
	combout => \Lsignalin~combout\(53));

-- Location: LC_X4_Y4_N7
\U0|WideNand0~16\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~16_combout\ = (\Lsignalin~combout\(55) & (\Lsignalin~combout\(52) & (\Lsignalin~combout\(54) & \Lsignalin~combout\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(55),
	datab => \Lsignalin~combout\(52),
	datac => \Lsignalin~combout\(54),
	datad => \Lsignalin~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~16_combout\);

-- Location: LC_X4_Y4_N8
\U0|WideNand0~19\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~19_combout\ = (\U0|WideNand0~15_combout\ & (\U0|WideNand0~18_combout\ & (\U0|WideNand0~17_combout\ & \U0|WideNand0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideNand0~15_combout\,
	datab => \U0|WideNand0~18_combout\,
	datac => \U0|WideNand0~17_combout\,
	datad => \U0|WideNand0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~19_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(15),
	combout => \Lsignalin~combout\(15));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(13),
	combout => \Lsignalin~combout\(13));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(12),
	combout => \Lsignalin~combout\(12));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(14),
	combout => \Lsignalin~combout\(14));

-- Location: LC_X7_Y6_N0
\U0|WideNand0~3\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~3_combout\ = (\Lsignalin~combout\(15) & (\Lsignalin~combout\(13) & (\Lsignalin~combout\(12) & \Lsignalin~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(15),
	datab => \Lsignalin~combout\(13),
	datac => \Lsignalin~combout\(12),
	datad => \Lsignalin~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~3_combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(4),
	combout => \Lsignalin~combout\(4));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(5),
	combout => \Lsignalin~combout\(5));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(6),
	combout => \Lsignalin~combout\(6));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(7),
	combout => \Lsignalin~combout\(7));

-- Location: LC_X9_Y6_N8
\U0|WideNand0~1\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~1_combout\ = (\Lsignalin~combout\(4) & (\Lsignalin~combout\(5) & (\Lsignalin~combout\(6) & \Lsignalin~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(4),
	datab => \Lsignalin~combout\(5),
	datac => \Lsignalin~combout\(6),
	datad => \Lsignalin~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~1_combout\);

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(9),
	combout => \Lsignalin~combout\(9));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(10),
	combout => \Lsignalin~combout\(10));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(11),
	combout => \Lsignalin~combout\(11));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(8),
	combout => \Lsignalin~combout\(8));

-- Location: LC_X8_Y6_N4
\U0|WideNand0~2\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~2_combout\ = (\Lsignalin~combout\(9) & (\Lsignalin~combout\(10) & (\Lsignalin~combout\(11) & \Lsignalin~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(9),
	datab => \Lsignalin~combout\(10),
	datac => \Lsignalin~combout\(11),
	datad => \Lsignalin~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~2_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(1),
	combout => \Lsignalin~combout\(1));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(3),
	combout => \Lsignalin~combout\(3));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(0),
	combout => \Lsignalin~combout\(0));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Lsignalin[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Lsignalin(2),
	combout => \Lsignalin~combout\(2));

-- Location: LC_X2_Y6_N1
\U0|WideNand0~0\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~0_combout\ = (\Lsignalin~combout\(1) & (\Lsignalin~combout\(3) & (\Lsignalin~combout\(0) & \Lsignalin~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(1),
	datab => \Lsignalin~combout\(3),
	datac => \Lsignalin~combout\(0),
	datad => \Lsignalin~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~0_combout\);

-- Location: LC_X8_Y6_N3
\U0|WideNand0~4\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~4_combout\ = (\U0|WideNand0~3_combout\ & (\U0|WideNand0~1_combout\ & (\U0|WideNand0~2_combout\ & \U0|WideNand0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideNand0~3_combout\,
	datab => \U0|WideNand0~1_combout\,
	datac => \U0|WideNand0~2_combout\,
	datad => \U0|WideNand0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~4_combout\);

-- Location: LC_X5_Y4_N8
\U0|WideNand0~20\ : maxii_lcell
-- Equation(s):
-- \U0|WideNand0~20_combout\ = (\U0|WideNand0~9_combout\ & (\U0|WideNand0~14_combout\ & (\U0|WideNand0~19_combout\ & \U0|WideNand0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideNand0~9_combout\,
	datab => \U0|WideNand0~14_combout\,
	datac => \U0|WideNand0~19_combout\,
	datad => \U0|WideNand0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|WideNand0~20_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_address(2),
	combout => \address~combout\(2));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_address(7),
	combout => \address~combout\(7));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_address(5),
	combout => \address~combout\(5));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_address(4),
	combout => \address~combout\(4));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_address(6),
	combout => \address~combout\(6));

-- Location: LC_X1_Y7_N4
\U0|Equal1~1\ : maxii_lcell
-- Equation(s):
-- \U0|Equal1~1_combout\ = (\address~combout\(7) & (\address~combout\(5) & (\address~combout\(4) & \address~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(7),
	datab => \address~combout\(5),
	datac => \address~combout\(4),
	datad => \address~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Equal1~1_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_address(3),
	combout => \address~combout\(3));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_address(0),
	combout => \address~combout\(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_address(1),
	combout => \address~combout\(1));

-- Location: LC_X7_Y7_N4
\U0|Equal1~0\ : maxii_lcell
-- Equation(s):
-- \U0|Equal1~0_combout\ = (\address~combout\(0) & (((\address~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datad => \address~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Equal1~0_combout\);

-- Location: LC_X8_Y7_N1
\U0|Equal1~2\ : maxii_lcell
-- Equation(s):
-- \U0|Equal1~2_combout\ = (\address~combout\(2) & (\U0|Equal1~1_combout\ & (\address~combout\(3) & \U0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(2),
	datab => \U0|Equal1~1_combout\,
	datac => \address~combout\(3),
	datad => \U0|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Equal1~2_combout\);

-- Location: LC_X3_Y5_N0
\U0|LsignalNow[43]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~25\ = \Lsignalin~combout\(43) $ ((((B1_LsignalNow[43]))))
-- \U0|LsignalNow\(43) = DFFEAS(\U0|Ldiff~25\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(43), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(43),
	datac => \Lsignalin~combout\(43),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~25\,
	regout => \U0|LsignalNow\(43));

-- Location: LC_X5_Y5_N8
\U0|LsignalNow[41]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~23\ = ((B1_LsignalNow[41] $ (\Lsignalin~combout\(41))))
-- \U0|LsignalNow\(41) = DFFEAS(\U0|Ldiff~23\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(41), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(41),
	datad => \Lsignalin~combout\(41),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~23\,
	regout => \U0|LsignalNow\(41));

-- Location: LC_X5_Y7_N5
\U0|LsignalNow[42]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~24\ = ((B1_LsignalNow[42] $ (\Lsignalin~combout\(42))))
-- \U0|LsignalNow\(42) = DFFEAS(\U0|Ldiff~24\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(42), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(42),
	datad => \Lsignalin~combout\(42),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~24\,
	regout => \U0|LsignalNow\(42));

-- Location: LC_X5_Y7_N7
\U0|LsignalNow[40]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~22\ = ((B1_LsignalNow[40] $ (\Lsignalin~combout\(40))))
-- \U0|LsignalNow\(40) = DFFEAS(\U0|Ldiff~22\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(40), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(40),
	datad => \Lsignalin~combout\(40),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~22\,
	regout => \U0|LsignalNow\(40));

-- Location: LC_X3_Y7_N4
\U0|Add40~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add40~0_combout\ = (\U0|Ldiff~25\ & (\U0|Ldiff~23\ & (\U0|Ldiff~24\ & \U0|Ldiff~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~25\,
	datab => \U0|Ldiff~23\,
	datac => \U0|Ldiff~24\,
	datad => \U0|Ldiff~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add40~0_combout\);

-- Location: LC_X6_Y5_N5
\U0|LsignalNow[37]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~19\ = \Lsignalin~combout\(37) $ ((((B1_LsignalNow[37]))))
-- \U0|LsignalNow\(37) = DFFEAS(\U0|Ldiff~19\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(37), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(37),
	datac => \Lsignalin~combout\(37),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~19\,
	regout => \U0|LsignalNow\(37));

-- Location: LC_X6_Y7_N9
\U0|LsignalNow[38]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~20\ = ((B1_LsignalNow[38] $ (\Lsignalin~combout\(38))))
-- \U0|LsignalNow\(38) = DFFEAS(\U0|Ldiff~20\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(38), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(38),
	datad => \Lsignalin~combout\(38),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~20\,
	regout => \U0|LsignalNow\(38));

-- Location: LC_X6_Y5_N2
\U0|LsignalNow[36]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~18\ = \Lsignalin~combout\(36) $ ((((B1_LsignalNow[36]))))
-- \U0|LsignalNow\(36) = DFFEAS(\U0|Ldiff~18\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(36), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(36),
	datac => \Lsignalin~combout\(36),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~18\,
	regout => \U0|LsignalNow\(36));

-- Location: LC_X6_Y7_N8
\U0|LsignalNow[39]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~21\ = ((B1_LsignalNow[39] $ (\Lsignalin~combout\(39))))
-- \U0|LsignalNow\(39) = DFFEAS(\U0|Ldiff~21\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(39), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(39),
	datad => \Lsignalin~combout\(39),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~21\,
	regout => \U0|LsignalNow\(39));

-- Location: LC_X6_Y7_N6
\U0|Add36~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add36~0_combout\ = (\U0|Ldiff~19\ & (\U0|Ldiff~20\ & (\U0|Ldiff~18\ & \U0|Ldiff~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~19\,
	datab => \U0|Ldiff~20\,
	datac => \U0|Ldiff~18\,
	datad => \U0|Ldiff~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add36~0_combout\);

-- Location: LC_X3_Y7_N5
\U0|Add40~2\ : maxii_lcell
-- Equation(s):
-- \U0|Add40~2_combout\ = (\U0|Ldiff~25\ & ((\U0|Ldiff~23\ & ((!\U0|Ldiff~22\) # (!\U0|Ldiff~24\))) # (!\U0|Ldiff~23\ & ((\U0|Ldiff~24\) # (\U0|Ldiff~22\))))) # (!\U0|Ldiff~25\ & ((\U0|Ldiff~23\ & ((\U0|Ldiff~24\) # (\U0|Ldiff~22\))) # (!\U0|Ldiff~23\ & 
-- (\U0|Ldiff~24\ & \U0|Ldiff~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~25\,
	datab => \U0|Ldiff~23\,
	datac => \U0|Ldiff~24\,
	datad => \U0|Ldiff~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add40~2_combout\);

-- Location: LC_X6_Y7_N0
\U0|Add36~2\ : maxii_lcell
-- Equation(s):
-- \U0|Add36~2_combout\ = (\U0|Ldiff~21\ & ((\U0|Ldiff~20\ & ((!\U0|Ldiff~19\) # (!\U0|Ldiff~18\))) # (!\U0|Ldiff~20\ & ((\U0|Ldiff~18\) # (\U0|Ldiff~19\))))) # (!\U0|Ldiff~21\ & ((\U0|Ldiff~20\ & ((\U0|Ldiff~18\) # (\U0|Ldiff~19\))) # (!\U0|Ldiff~20\ & 
-- (\U0|Ldiff~18\ & \U0|Ldiff~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~21\,
	datab => \U0|Ldiff~20\,
	datac => \U0|Ldiff~18\,
	datad => \U0|Ldiff~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add36~2_combout\);

-- Location: LC_X6_Y7_N2
\U0|Add36~1\ : maxii_lcell
-- Equation(s):
-- \U0|Add36~1_combout\ = \U0|Ldiff~21\ $ (\U0|Ldiff~20\ $ (\U0|Ldiff~18\ $ (\U0|Ldiff~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~21\,
	datab => \U0|Ldiff~20\,
	datac => \U0|Ldiff~18\,
	datad => \U0|Ldiff~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add36~1_combout\);

-- Location: LC_X3_Y7_N2
\U0|Add40~1\ : maxii_lcell
-- Equation(s):
-- \U0|Add40~1_combout\ = \U0|Ldiff~25\ $ (\U0|Ldiff~23\ $ (\U0|Ldiff~24\ $ (\U0|Ldiff~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~25\,
	datab => \U0|Ldiff~23\,
	datac => \U0|Ldiff~24\,
	datad => \U0|Ldiff~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add40~1_combout\);

-- Location: LC_X9_Y7_N6
\U0|Add38~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add38~10_combout\ = \U0|Add36~1_combout\ $ ((\U0|Add40~1_combout\))
-- \U0|Add38~12\ = CARRY((\U0|Add36~1_combout\ & (\U0|Add40~1_combout\)))
-- \U0|Add38~12COUT1_21\ = CARRY((\U0|Add36~1_combout\ & (\U0|Add40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add36~1_combout\,
	datab => \U0|Add40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add38~10_combout\,
	cout0 => \U0|Add38~12\,
	cout1 => \U0|Add38~12COUT1_21\);

-- Location: LC_X9_Y7_N7
\U0|Add38~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add38~15_combout\ = \U0|Add40~2_combout\ $ (\U0|Add36~2_combout\ $ ((\U0|Add38~12\)))
-- \U0|Add38~17\ = CARRY((\U0|Add40~2_combout\ & (!\U0|Add36~2_combout\ & !\U0|Add38~12\)) # (!\U0|Add40~2_combout\ & ((!\U0|Add38~12\) # (!\U0|Add36~2_combout\))))
-- \U0|Add38~17COUT1_22\ = CARRY((\U0|Add40~2_combout\ & (!\U0|Add36~2_combout\ & !\U0|Add38~12COUT1_21\)) # (!\U0|Add40~2_combout\ & ((!\U0|Add38~12COUT1_21\) # (!\U0|Add36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add40~2_combout\,
	datab => \U0|Add36~2_combout\,
	cin0 => \U0|Add38~12\,
	cin1 => \U0|Add38~12COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add38~15_combout\,
	cout0 => \U0|Add38~17\,
	cout1 => \U0|Add38~17COUT1_22\);

-- Location: LC_X9_Y7_N8
\U0|Add38~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add38~5_combout\ = \U0|Add40~0_combout\ $ (\U0|Add36~0_combout\ $ ((!\U0|Add38~17\)))
-- \U0|Add38~7\ = CARRY((\U0|Add40~0_combout\ & ((\U0|Add36~0_combout\) # (!\U0|Add38~17\))) # (!\U0|Add40~0_combout\ & (\U0|Add36~0_combout\ & !\U0|Add38~17\)))
-- \U0|Add38~7COUT1_23\ = CARRY((\U0|Add40~0_combout\ & ((\U0|Add36~0_combout\) # (!\U0|Add38~17COUT1_22\))) # (!\U0|Add40~0_combout\ & (\U0|Add36~0_combout\ & !\U0|Add38~17COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add40~0_combout\,
	datab => \U0|Add36~0_combout\,
	cin0 => \U0|Add38~17\,
	cin1 => \U0|Add38~17COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add38~5_combout\,
	cout0 => \U0|Add38~7\,
	cout1 => \U0|Add38~7COUT1_23\);

-- Location: LC_X9_Y7_N9
\U0|Add38~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add38~0_combout\ = (((\U0|Add38~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \U0|Add38~7\,
	cin1 => \U0|Add38~7COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add38~0_combout\);

-- Location: LC_X5_Y5_N9
\U0|LsignalNow[33]\ : maxii_lcell
-- Equation(s):
-- \U0|Add31~1\ = (\Lsignalin~combout\(33) & (!B1_LsignalNow[33] & (\Lsignalin~combout\(32) $ (\U0|LsignalNow\(32))))) # (!\Lsignalin~combout\(33) & (B1_LsignalNow[33] & (\Lsignalin~combout\(32) $ (\U0|LsignalNow\(32)))))
-- \U0|LsignalNow\(33) = DFFEAS(\U0|Add31~1\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(33), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(33),
	datab => \Lsignalin~combout\(32),
	datac => \Lsignalin~combout\(33),
	datad => \U0|LsignalNow\(32),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add31~1\,
	regout => \U0|LsignalNow\(33));

-- Location: LC_X5_Y5_N2
\U0|LsignalNow[32]\ : maxii_lcell
-- Equation(s):
-- \U0|Add31~0\ = \Lsignalin~combout\(33) $ (\Lsignalin~combout\(32) $ (B1_LsignalNow[32] $ (\U0|LsignalNow\(33))))
-- \U0|LsignalNow\(32) = DFFEAS(\U0|Add31~0\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(32), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(33),
	datab => \Lsignalin~combout\(32),
	datac => \Lsignalin~combout\(32),
	datad => \U0|LsignalNow\(33),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add31~0\,
	regout => \U0|LsignalNow\(32));

-- Location: LC_X5_Y5_N1
\U0|LsignalNow[35]\ : maxii_lcell
-- Equation(s):
-- \U0|Add33~1\ = (\Lsignalin~combout\(35) & (!B1_LsignalNow[35] & (\U0|LsignalNow\(34) $ (\Lsignalin~combout\(34))))) # (!\Lsignalin~combout\(35) & (B1_LsignalNow[35] & (\U0|LsignalNow\(34) $ (\Lsignalin~combout\(34)))))
-- \U0|LsignalNow\(35) = DFFEAS(\U0|Add33~1\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(35), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(35),
	datab => \U0|LsignalNow\(34),
	datac => \Lsignalin~combout\(35),
	datad => \Lsignalin~combout\(34),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add33~1\,
	regout => \U0|LsignalNow\(35));

-- Location: LC_X5_Y5_N7
\U0|LsignalNow[34]\ : maxii_lcell
-- Equation(s):
-- \U0|Add33~0\ = \Lsignalin~combout\(34) $ (\U0|LsignalNow\(35) $ (B1_LsignalNow[34] $ (\Lsignalin~combout\(35))))
-- \U0|LsignalNow\(34) = DFFEAS(\U0|Add33~0\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(34), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(34),
	datab => \U0|LsignalNow\(35),
	datac => \Lsignalin~combout\(34),
	datad => \Lsignalin~combout\(35),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add33~0\,
	regout => \U0|LsignalNow\(34));

-- Location: LC_X4_Y4_N0
\U0|LsignalNow[31]\ : maxii_lcell
-- Equation(s):
-- \U0|LsignalNow\(31) = DFFEAS(GND, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(31), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(31),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|LsignalNow\(31));

-- Location: LC_X3_Y4_N1
\U0|Add32~17\ : maxii_lcell
-- Equation(s):
-- \U0|Add32~17_cout0\ = CARRY(\U0|LsignalNow\(31) $ ((\Lsignalin~combout\(31))))
-- \U0|Add32~17COUT1_21\ = CARRY(\U0|LsignalNow\(31) $ ((\Lsignalin~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(31),
	datab => \Lsignalin~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add32~15\,
	cout0 => \U0|Add32~17_cout0\,
	cout1 => \U0|Add32~17COUT1_21\);

-- Location: LC_X3_Y4_N2
\U0|Add32~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add32~5_combout\ = \U0|Add33~0\ $ (\U0|Add31~0\ $ ((\U0|Add32~17_cout0\)))
-- \U0|Add32~7\ = CARRY((\U0|Add33~0\ & (!\U0|Add31~0\ & !\U0|Add32~17_cout0\)) # (!\U0|Add33~0\ & ((!\U0|Add32~17_cout0\) # (!\U0|Add31~0\))))
-- \U0|Add32~7COUT1_22\ = CARRY((\U0|Add33~0\ & (!\U0|Add31~0\ & !\U0|Add32~17COUT1_21\)) # (!\U0|Add33~0\ & ((!\U0|Add32~17COUT1_21\) # (!\U0|Add31~0\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add33~0\,
	datab => \U0|Add31~0\,
	cin0 => \U0|Add32~17_cout0\,
	cin1 => \U0|Add32~17COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add32~5_combout\,
	cout0 => \U0|Add32~7\,
	cout1 => \U0|Add32~7COUT1_22\);

-- Location: LC_X3_Y4_N3
\U0|Add32~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add32~10_combout\ = \U0|Add31~1\ $ (\U0|Add33~1\ $ ((!\U0|Add32~7\)))
-- \U0|Add32~12\ = CARRY((\U0|Add31~1\ & ((\U0|Add33~1\) # (!\U0|Add32~7\))) # (!\U0|Add31~1\ & (\U0|Add33~1\ & !\U0|Add32~7\)))
-- \U0|Add32~12COUT1_23\ = CARRY((\U0|Add31~1\ & ((\U0|Add33~1\) # (!\U0|Add32~7COUT1_22\))) # (!\U0|Add31~1\ & (\U0|Add33~1\ & !\U0|Add32~7COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add31~1\,
	datab => \U0|Add33~1\,
	cin0 => \U0|Add32~7\,
	cin1 => \U0|Add32~7COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add32~10_combout\,
	cout0 => \U0|Add32~12\,
	cout1 => \U0|Add32~12COUT1_23\);

-- Location: LC_X3_Y4_N4
\U0|Add32~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add32~0_combout\ = (((\U0|Add32~12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \U0|Add32~12\,
	cin1 => \U0|Add32~12COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add32~0_combout\);

-- Location: LC_X9_Y7_N0
\U0|Add34~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add34~10_combout\ = \U0|Add38~10_combout\ $ ((\U0|Add32~5_combout\))
-- \U0|Add34~12\ = CARRY((\U0|Add38~10_combout\ & (\U0|Add32~5_combout\)))
-- \U0|Add34~12COUT1_26\ = CARRY((\U0|Add38~10_combout\ & (\U0|Add32~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add38~10_combout\,
	datab => \U0|Add32~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add34~10_combout\,
	cout0 => \U0|Add34~12\,
	cout1 => \U0|Add34~12COUT1_26\);

-- Location: LC_X9_Y7_N1
\U0|Add34~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add34~15_combout\ = \U0|Add32~10_combout\ $ (\U0|Add38~15_combout\ $ ((\U0|Add34~12\)))
-- \U0|Add34~17\ = CARRY((\U0|Add32~10_combout\ & (!\U0|Add38~15_combout\ & !\U0|Add34~12\)) # (!\U0|Add32~10_combout\ & ((!\U0|Add34~12\) # (!\U0|Add38~15_combout\))))
-- \U0|Add34~17COUT1_27\ = CARRY((\U0|Add32~10_combout\ & (!\U0|Add38~15_combout\ & !\U0|Add34~12COUT1_26\)) # (!\U0|Add32~10_combout\ & ((!\U0|Add34~12COUT1_26\) # (!\U0|Add38~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add32~10_combout\,
	datab => \U0|Add38~15_combout\,
	cin0 => \U0|Add34~12\,
	cin1 => \U0|Add34~12COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add34~15_combout\,
	cout0 => \U0|Add34~17\,
	cout1 => \U0|Add34~17COUT1_27\);

-- Location: LC_X9_Y7_N2
\U0|Add34~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add34~5_combout\ = \U0|Add38~5_combout\ $ (\U0|Add32~0_combout\ $ ((!\U0|Add34~17\)))
-- \U0|Add34~7\ = CARRY((\U0|Add38~5_combout\ & ((\U0|Add32~0_combout\) # (!\U0|Add34~17\))) # (!\U0|Add38~5_combout\ & (\U0|Add32~0_combout\ & !\U0|Add34~17\)))
-- \U0|Add34~7COUT1_28\ = CARRY((\U0|Add38~5_combout\ & ((\U0|Add32~0_combout\) # (!\U0|Add34~17COUT1_27\))) # (!\U0|Add38~5_combout\ & (\U0|Add32~0_combout\ & !\U0|Add34~17COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add38~5_combout\,
	datab => \U0|Add32~0_combout\,
	cin0 => \U0|Add34~17\,
	cin1 => \U0|Add34~17COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add34~5_combout\,
	cout0 => \U0|Add34~7\,
	cout1 => \U0|Add34~7COUT1_28\);

-- Location: LC_X9_Y7_N3
\U0|Add34~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add34~0_combout\ = (\U0|Add38~0_combout\ $ ((\U0|Add34~7\)))
-- \U0|Add34~2\ = CARRY(((!\U0|Add34~7\) # (!\U0|Add38~0_combout\)))
-- \U0|Add34~2COUT1_29\ = CARRY(((!\U0|Add34~7COUT1_28\) # (!\U0|Add38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add38~0_combout\,
	cin0 => \U0|Add34~7\,
	cin1 => \U0|Add34~7COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add34~0_combout\,
	cout0 => \U0|Add34~2\,
	cout1 => \U0|Add34~2COUT1_29\);

-- Location: LC_X9_Y7_N4
\U0|Add34~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add34~20_combout\ = (((!\U0|Add34~2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \U0|Add34~2\,
	cin1 => \U0|Add34~2COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add34~20_combout\);

-- Location: LC_X4_Y7_N3
\U0|LsignalNow[48]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~14\ = ((B1_LsignalNow[48] $ (\Lsignalin~combout\(48))))
-- \U0|LsignalNow\(48) = DFFEAS(\U0|Ldiff~14\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(48), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(48),
	datad => \Lsignalin~combout\(48),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~14\,
	regout => \U0|LsignalNow\(48));

-- Location: LC_X4_Y4_N3
\U0|LsignalNow[49]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~15\ = ((B1_LsignalNow[49] $ (\Lsignalin~combout\(49))))
-- \U0|LsignalNow\(49) = DFFEAS(\U0|Ldiff~15\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(49), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(49),
	datad => \Lsignalin~combout\(49),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~15\,
	regout => \U0|LsignalNow\(49));

-- Location: LC_X5_Y5_N5
\U0|LsignalNow[51]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~17\ = (\Lsignalin~combout\(51) $ ((B1_LsignalNow[51])))
-- \U0|LsignalNow\(51) = DFFEAS(\U0|Ldiff~17\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(51), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \Lsignalin~combout\(51),
	datac => \Lsignalin~combout\(51),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~17\,
	regout => \U0|LsignalNow\(51));

-- Location: LC_X4_Y5_N7
\U0|LsignalNow[50]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~16\ = ((B1_LsignalNow[50] $ (\Lsignalin~combout\(50))))
-- \U0|LsignalNow\(50) = DFFEAS(\U0|Ldiff~16\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(50), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(50),
	datad => \Lsignalin~combout\(50),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~16\,
	regout => \U0|LsignalNow\(50));

-- Location: LC_X4_Y7_N7
\U0|Add48~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add48~0_combout\ = (\U0|Ldiff~14\ & (\U0|Ldiff~15\ & (\U0|Ldiff~17\ & \U0|Ldiff~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~14\,
	datab => \U0|Ldiff~15\,
	datac => \U0|Ldiff~17\,
	datad => \U0|Ldiff~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add48~0_combout\);

-- Location: LC_X5_Y7_N3
\U0|LsignalNow[47]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~13\ = ((B1_LsignalNow[47] $ (\Lsignalin~combout\(47))))
-- \U0|LsignalNow\(47) = DFFEAS(\U0|Ldiff~13\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(47), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(47),
	datad => \Lsignalin~combout\(47),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~13\,
	regout => \U0|LsignalNow\(47));

-- Location: LC_X5_Y7_N9
\U0|LsignalNow[44]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~10\ = ((B1_LsignalNow[44] $ (\Lsignalin~combout\(44))))
-- \U0|LsignalNow\(44) = DFFEAS(\U0|Ldiff~10\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(44), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(44),
	datad => \Lsignalin~combout\(44),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~10\,
	regout => \U0|LsignalNow\(44));

-- Location: LC_X7_Y5_N0
\U0|LsignalNow[45]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~11\ = ((B1_LsignalNow[45] $ (\Lsignalin~combout\(45))))
-- \U0|LsignalNow\(45) = DFFEAS(\U0|Ldiff~11\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(45), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(45),
	datad => \Lsignalin~combout\(45),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~11\,
	regout => \U0|LsignalNow\(45));

-- Location: LC_X4_Y6_N2
\U0|LsignalNow[46]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~12\ = \Lsignalin~combout\(46) $ ((((B1_LsignalNow[46]))))
-- \U0|LsignalNow\(46) = DFFEAS(\U0|Ldiff~12\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(46), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(46),
	datac => \Lsignalin~combout\(46),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~12\,
	regout => \U0|LsignalNow\(46));

-- Location: LC_X5_Y7_N6
\U0|Add44~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add44~0_combout\ = (\U0|Ldiff~13\ & (\U0|Ldiff~10\ & (\U0|Ldiff~11\ & \U0|Ldiff~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~13\,
	datab => \U0|Ldiff~10\,
	datac => \U0|Ldiff~11\,
	datad => \U0|Ldiff~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add44~0_combout\);

-- Location: LC_X4_Y7_N6
\U0|Add48~2\ : maxii_lcell
-- Equation(s):
-- \U0|Add48~2_combout\ = (\U0|Ldiff~14\ & ((\U0|Ldiff~15\ & ((!\U0|Ldiff~16\) # (!\U0|Ldiff~17\))) # (!\U0|Ldiff~15\ & ((\U0|Ldiff~17\) # (\U0|Ldiff~16\))))) # (!\U0|Ldiff~14\ & ((\U0|Ldiff~15\ & ((\U0|Ldiff~17\) # (\U0|Ldiff~16\))) # (!\U0|Ldiff~15\ & 
-- (\U0|Ldiff~17\ & \U0|Ldiff~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~14\,
	datab => \U0|Ldiff~15\,
	datac => \U0|Ldiff~17\,
	datad => \U0|Ldiff~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add48~2_combout\);

-- Location: LC_X5_Y7_N8
\U0|Add44~2\ : maxii_lcell
-- Equation(s):
-- \U0|Add44~2_combout\ = (\U0|Ldiff~13\ & ((\U0|Ldiff~10\ & ((!\U0|Ldiff~12\) # (!\U0|Ldiff~11\))) # (!\U0|Ldiff~10\ & ((\U0|Ldiff~11\) # (\U0|Ldiff~12\))))) # (!\U0|Ldiff~13\ & ((\U0|Ldiff~10\ & ((\U0|Ldiff~11\) # (\U0|Ldiff~12\))) # (!\U0|Ldiff~10\ & 
-- (\U0|Ldiff~11\ & \U0|Ldiff~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~13\,
	datab => \U0|Ldiff~10\,
	datac => \U0|Ldiff~11\,
	datad => \U0|Ldiff~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add44~2_combout\);

-- Location: LC_X4_Y7_N5
\U0|Add48~1\ : maxii_lcell
-- Equation(s):
-- \U0|Add48~1_combout\ = \U0|Ldiff~14\ $ (\U0|Ldiff~16\ $ (\U0|Ldiff~17\ $ (\U0|Ldiff~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~14\,
	datab => \U0|Ldiff~16\,
	datac => \U0|Ldiff~17\,
	datad => \U0|Ldiff~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add48~1_combout\);

-- Location: LC_X5_Y7_N0
\U0|Add44~1\ : maxii_lcell
-- Equation(s):
-- \U0|Add44~1_combout\ = \U0|Ldiff~13\ $ (\U0|Ldiff~12\ $ (\U0|Ldiff~11\ $ (\U0|Ldiff~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~13\,
	datab => \U0|Ldiff~12\,
	datac => \U0|Ldiff~11\,
	datad => \U0|Ldiff~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add44~1_combout\);

-- Location: LC_X10_Y6_N0
\U0|Add46~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add46~10_combout\ = \U0|Add48~1_combout\ $ ((\U0|Add44~1_combout\))
-- \U0|Add46~12\ = CARRY((\U0|Add48~1_combout\ & (\U0|Add44~1_combout\)))
-- \U0|Add46~12COUT1_21\ = CARRY((\U0|Add48~1_combout\ & (\U0|Add44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add48~1_combout\,
	datab => \U0|Add44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add46~10_combout\,
	cout0 => \U0|Add46~12\,
	cout1 => \U0|Add46~12COUT1_21\);

-- Location: LC_X10_Y6_N1
\U0|Add46~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add46~15_combout\ = \U0|Add48~2_combout\ $ (\U0|Add44~2_combout\ $ ((\U0|Add46~12\)))
-- \U0|Add46~17\ = CARRY((\U0|Add48~2_combout\ & (!\U0|Add44~2_combout\ & !\U0|Add46~12\)) # (!\U0|Add48~2_combout\ & ((!\U0|Add46~12\) # (!\U0|Add44~2_combout\))))
-- \U0|Add46~17COUT1_22\ = CARRY((\U0|Add48~2_combout\ & (!\U0|Add44~2_combout\ & !\U0|Add46~12COUT1_21\)) # (!\U0|Add48~2_combout\ & ((!\U0|Add46~12COUT1_21\) # (!\U0|Add44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add48~2_combout\,
	datab => \U0|Add44~2_combout\,
	cin0 => \U0|Add46~12\,
	cin1 => \U0|Add46~12COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add46~15_combout\,
	cout0 => \U0|Add46~17\,
	cout1 => \U0|Add46~17COUT1_22\);

-- Location: LC_X10_Y6_N2
\U0|Add46~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add46~5_combout\ = \U0|Add48~0_combout\ $ (\U0|Add44~0_combout\ $ ((!\U0|Add46~17\)))
-- \U0|Add46~7\ = CARRY((\U0|Add48~0_combout\ & ((\U0|Add44~0_combout\) # (!\U0|Add46~17\))) # (!\U0|Add48~0_combout\ & (\U0|Add44~0_combout\ & !\U0|Add46~17\)))
-- \U0|Add46~7COUT1_23\ = CARRY((\U0|Add48~0_combout\ & ((\U0|Add44~0_combout\) # (!\U0|Add46~17COUT1_22\))) # (!\U0|Add48~0_combout\ & (\U0|Add44~0_combout\ & !\U0|Add46~17COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add48~0_combout\,
	datab => \U0|Add44~0_combout\,
	cin0 => \U0|Add46~17\,
	cin1 => \U0|Add46~17COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add46~5_combout\,
	cout0 => \U0|Add46~7\,
	cout1 => \U0|Add46~7COUT1_23\);

-- Location: LC_X10_Y6_N3
\U0|Add46~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add46~0_combout\ = (((\U0|Add46~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \U0|Add46~7\,
	cin1 => \U0|Add46~7COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add46~0_combout\);

-- Location: LC_X6_Y5_N3
\U0|LsignalNow[54]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~4\ = ((B1_LsignalNow[54] $ (\Lsignalin~combout\(54))))
-- \U0|LsignalNow\(54) = DFFEAS(\U0|Ldiff~4\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(54), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(54),
	datad => \Lsignalin~combout\(54),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~4\,
	regout => \U0|LsignalNow\(54));

-- Location: LC_X6_Y5_N9
\U0|LsignalNow[52]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~2\ = \Lsignalin~combout\(52) $ ((((B1_LsignalNow[52]))))
-- \U0|LsignalNow\(52) = DFFEAS(\U0|Ldiff~2\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(52), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(52),
	datac => \Lsignalin~combout\(52),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~2\,
	regout => \U0|LsignalNow\(52));

-- Location: LC_X6_Y5_N1
\U0|LsignalNow[55]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~5\ = ((B1_LsignalNow[55] $ (\Lsignalin~combout\(55))))
-- \U0|LsignalNow\(55) = DFFEAS(\U0|Ldiff~5\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(55), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(55),
	datad => \Lsignalin~combout\(55),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~5\,
	regout => \U0|LsignalNow\(55));

-- Location: LC_X6_Y5_N6
\U0|LsignalNow[53]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~3\ = ((B1_LsignalNow[53] $ (\Lsignalin~combout\(53))))
-- \U0|LsignalNow\(53) = DFFEAS(\U0|Ldiff~3\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(53), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(53),
	datad => \Lsignalin~combout\(53),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~3\,
	regout => \U0|LsignalNow\(53));

-- Location: LC_X10_Y4_N0
\U0|Add52~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add52~0_combout\ = (\U0|Ldiff~4\ & (\U0|Ldiff~2\ & (\U0|Ldiff~5\ & \U0|Ldiff~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~4\,
	datab => \U0|Ldiff~2\,
	datac => \U0|Ldiff~5\,
	datad => \U0|Ldiff~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add52~0_combout\);

-- Location: LC_X4_Y4_N9
\U0|LsignalNow[57]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~7\ = \Lsignalin~combout\(57) $ ((((B1_LsignalNow[57]))))
-- \U0|LsignalNow\(57) = DFFEAS(\U0|Ldiff~7\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(57), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(57),
	datac => \Lsignalin~combout\(57),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~7\,
	regout => \U0|LsignalNow\(57));

-- Location: LC_X4_Y5_N0
\U0|LsignalNow[58]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~8\ = ((B1_LsignalNow[58] $ (\Lsignalin~combout\(58))))
-- \U0|LsignalNow\(58) = DFFEAS(\U0|Ldiff~8\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(58), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(58),
	datad => \Lsignalin~combout\(58),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~8\,
	regout => \U0|LsignalNow\(58));

-- Location: LC_X6_Y5_N4
\U0|LsignalNow[59]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~9\ = ((B1_LsignalNow[59] $ (\Lsignalin~combout\(59))))
-- \U0|LsignalNow\(59) = DFFEAS(\U0|Ldiff~9\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(59), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(59),
	datad => \Lsignalin~combout\(59),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~9\,
	regout => \U0|LsignalNow\(59));

-- Location: LC_X6_Y5_N8
\U0|LsignalNow[56]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~6\ = ((B1_LsignalNow[56] $ (\Lsignalin~combout\(56))))
-- \U0|LsignalNow\(56) = DFFEAS(\U0|Ldiff~6\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(56), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(56),
	datad => \Lsignalin~combout\(56),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~6\,
	regout => \U0|LsignalNow\(56));

-- Location: LC_X10_Y5_N7
\U0|Add56~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add56~0_combout\ = (\U0|Ldiff~7\ & (\U0|Ldiff~8\ & (\U0|Ldiff~9\ & \U0|Ldiff~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~7\,
	datab => \U0|Ldiff~8\,
	datac => \U0|Ldiff~9\,
	datad => \U0|Ldiff~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add56~0_combout\);

-- Location: LC_X10_Y4_N2
\U0|Add52~2\ : maxii_lcell
-- Equation(s):
-- \U0|Add52~2_combout\ = (\U0|Ldiff~4\ & ((\U0|Ldiff~2\ & ((!\U0|Ldiff~3\) # (!\U0|Ldiff~5\))) # (!\U0|Ldiff~2\ & ((\U0|Ldiff~5\) # (\U0|Ldiff~3\))))) # (!\U0|Ldiff~4\ & ((\U0|Ldiff~2\ & ((\U0|Ldiff~5\) # (\U0|Ldiff~3\))) # (!\U0|Ldiff~2\ & (\U0|Ldiff~5\ & 
-- \U0|Ldiff~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~4\,
	datab => \U0|Ldiff~2\,
	datac => \U0|Ldiff~5\,
	datad => \U0|Ldiff~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add52~2_combout\);

-- Location: LC_X10_Y5_N9
\U0|Add56~2\ : maxii_lcell
-- Equation(s):
-- \U0|Add56~2_combout\ = (\U0|Ldiff~7\ & ((\U0|Ldiff~8\ & ((!\U0|Ldiff~6\) # (!\U0|Ldiff~9\))) # (!\U0|Ldiff~8\ & ((\U0|Ldiff~9\) # (\U0|Ldiff~6\))))) # (!\U0|Ldiff~7\ & ((\U0|Ldiff~8\ & ((\U0|Ldiff~9\) # (\U0|Ldiff~6\))) # (!\U0|Ldiff~8\ & (\U0|Ldiff~9\ & 
-- \U0|Ldiff~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~7\,
	datab => \U0|Ldiff~8\,
	datac => \U0|Ldiff~9\,
	datad => \U0|Ldiff~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add56~2_combout\);

-- Location: LC_X10_Y5_N6
\U0|Add56~1\ : maxii_lcell
-- Equation(s):
-- \U0|Add56~1_combout\ = \U0|Ldiff~7\ $ (\U0|Ldiff~8\ $ (\U0|Ldiff~9\ $ (\U0|Ldiff~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~7\,
	datab => \U0|Ldiff~8\,
	datac => \U0|Ldiff~9\,
	datad => \U0|Ldiff~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add56~1_combout\);

-- Location: LC_X10_Y4_N5
\U0|Add52~1\ : maxii_lcell
-- Equation(s):
-- \U0|Add52~1_combout\ = \U0|Ldiff~4\ $ (\U0|Ldiff~2\ $ (\U0|Ldiff~5\ $ (\U0|Ldiff~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~4\,
	datab => \U0|Ldiff~2\,
	datac => \U0|Ldiff~5\,
	datad => \U0|Ldiff~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add52~1_combout\);

-- Location: LC_X10_Y5_N1
\U0|Add54~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add54~10_combout\ = \U0|Add56~1_combout\ $ ((\U0|Add52~1_combout\))
-- \U0|Add54~12\ = CARRY((\U0|Add56~1_combout\ & (\U0|Add52~1_combout\)))
-- \U0|Add54~12COUT1_21\ = CARRY((\U0|Add56~1_combout\ & (\U0|Add52~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add56~1_combout\,
	datab => \U0|Add52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add54~10_combout\,
	cout0 => \U0|Add54~12\,
	cout1 => \U0|Add54~12COUT1_21\);

-- Location: LC_X10_Y5_N2
\U0|Add54~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add54~15_combout\ = \U0|Add52~2_combout\ $ (\U0|Add56~2_combout\ $ ((\U0|Add54~12\)))
-- \U0|Add54~17\ = CARRY((\U0|Add52~2_combout\ & (!\U0|Add56~2_combout\ & !\U0|Add54~12\)) # (!\U0|Add52~2_combout\ & ((!\U0|Add54~12\) # (!\U0|Add56~2_combout\))))
-- \U0|Add54~17COUT1_22\ = CARRY((\U0|Add52~2_combout\ & (!\U0|Add56~2_combout\ & !\U0|Add54~12COUT1_21\)) # (!\U0|Add52~2_combout\ & ((!\U0|Add54~12COUT1_21\) # (!\U0|Add56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add52~2_combout\,
	datab => \U0|Add56~2_combout\,
	cin0 => \U0|Add54~12\,
	cin1 => \U0|Add54~12COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add54~15_combout\,
	cout0 => \U0|Add54~17\,
	cout1 => \U0|Add54~17COUT1_22\);

-- Location: LC_X10_Y5_N3
\U0|Add54~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add54~5_combout\ = \U0|Add52~0_combout\ $ (\U0|Add56~0_combout\ $ ((!\U0|Add54~17\)))
-- \U0|Add54~7\ = CARRY((\U0|Add52~0_combout\ & ((\U0|Add56~0_combout\) # (!\U0|Add54~17\))) # (!\U0|Add52~0_combout\ & (\U0|Add56~0_combout\ & !\U0|Add54~17\)))
-- \U0|Add54~7COUT1_23\ = CARRY((\U0|Add52~0_combout\ & ((\U0|Add56~0_combout\) # (!\U0|Add54~17COUT1_22\))) # (!\U0|Add52~0_combout\ & (\U0|Add56~0_combout\ & !\U0|Add54~17COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add52~0_combout\,
	datab => \U0|Add56~0_combout\,
	cin0 => \U0|Add54~17\,
	cin1 => \U0|Add54~17COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add54~5_combout\,
	cout0 => \U0|Add54~7\,
	cout1 => \U0|Add54~7COUT1_23\);

-- Location: LC_X10_Y5_N4
\U0|Add54~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add54~0_combout\ = (((\U0|Add54~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \U0|Add54~7\,
	cin1 => \U0|Add54~7COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add54~0_combout\);

-- Location: LC_X10_Y6_N5
\U0|Add50~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add50~10_combout\ = \U0|Add54~10_combout\ $ ((\U0|Add46~10_combout\))
-- \U0|Add50~12\ = CARRY((\U0|Add54~10_combout\ & (\U0|Add46~10_combout\)))
-- \U0|Add50~12COUT1_26\ = CARRY((\U0|Add54~10_combout\ & (\U0|Add46~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add54~10_combout\,
	datab => \U0|Add46~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add50~10_combout\,
	cout0 => \U0|Add50~12\,
	cout1 => \U0|Add50~12COUT1_26\);

-- Location: LC_X10_Y6_N6
\U0|Add50~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add50~15_combout\ = \U0|Add54~15_combout\ $ (\U0|Add46~15_combout\ $ ((\U0|Add50~12\)))
-- \U0|Add50~17\ = CARRY((\U0|Add54~15_combout\ & (!\U0|Add46~15_combout\ & !\U0|Add50~12\)) # (!\U0|Add54~15_combout\ & ((!\U0|Add50~12\) # (!\U0|Add46~15_combout\))))
-- \U0|Add50~17COUT1_27\ = CARRY((\U0|Add54~15_combout\ & (!\U0|Add46~15_combout\ & !\U0|Add50~12COUT1_26\)) # (!\U0|Add54~15_combout\ & ((!\U0|Add50~12COUT1_26\) # (!\U0|Add46~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add54~15_combout\,
	datab => \U0|Add46~15_combout\,
	cin0 => \U0|Add50~12\,
	cin1 => \U0|Add50~12COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add50~15_combout\,
	cout0 => \U0|Add50~17\,
	cout1 => \U0|Add50~17COUT1_27\);

-- Location: LC_X10_Y6_N7
\U0|Add50~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add50~5_combout\ = \U0|Add54~5_combout\ $ (\U0|Add46~5_combout\ $ ((!\U0|Add50~17\)))
-- \U0|Add50~7\ = CARRY((\U0|Add54~5_combout\ & ((\U0|Add46~5_combout\) # (!\U0|Add50~17\))) # (!\U0|Add54~5_combout\ & (\U0|Add46~5_combout\ & !\U0|Add50~17\)))
-- \U0|Add50~7COUT1_28\ = CARRY((\U0|Add54~5_combout\ & ((\U0|Add46~5_combout\) # (!\U0|Add50~17COUT1_27\))) # (!\U0|Add54~5_combout\ & (\U0|Add46~5_combout\ & !\U0|Add50~17COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add54~5_combout\,
	datab => \U0|Add46~5_combout\,
	cin0 => \U0|Add50~17\,
	cin1 => \U0|Add50~17COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add50~5_combout\,
	cout0 => \U0|Add50~7\,
	cout1 => \U0|Add50~7COUT1_28\);

-- Location: LC_X10_Y6_N8
\U0|Add50~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add50~0_combout\ = \U0|Add46~0_combout\ $ (\U0|Add54~0_combout\ $ ((\U0|Add50~7\)))
-- \U0|Add50~2\ = CARRY((\U0|Add46~0_combout\ & (!\U0|Add54~0_combout\ & !\U0|Add50~7\)) # (!\U0|Add46~0_combout\ & ((!\U0|Add50~7\) # (!\U0|Add54~0_combout\))))
-- \U0|Add50~2COUT1_29\ = CARRY((\U0|Add46~0_combout\ & (!\U0|Add54~0_combout\ & !\U0|Add50~7COUT1_28\)) # (!\U0|Add46~0_combout\ & ((!\U0|Add50~7COUT1_28\) # (!\U0|Add54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add46~0_combout\,
	datab => \U0|Add54~0_combout\,
	cin0 => \U0|Add50~7\,
	cin1 => \U0|Add50~7COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add50~0_combout\,
	cout0 => \U0|Add50~2\,
	cout1 => \U0|Add50~2COUT1_29\);

-- Location: LC_X10_Y6_N9
\U0|Add50~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add50~20_combout\ = (((!\U0|Add50~2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \U0|Add50~2\,
	cin1 => \U0|Add50~2COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add50~20_combout\);

-- Location: LC_X9_Y6_N1
\U0|Add42~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add42~10_combout\ = \U0|Add34~10_combout\ $ ((\U0|Add50~10_combout\))
-- \U0|Add42~12\ = CARRY((\U0|Add34~10_combout\ & (\U0|Add50~10_combout\)))
-- \U0|Add42~12COUT1_31\ = CARRY((\U0|Add34~10_combout\ & (\U0|Add50~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add34~10_combout\,
	datab => \U0|Add50~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add42~10_combout\,
	cout0 => \U0|Add42~12\,
	cout1 => \U0|Add42~12COUT1_31\);

-- Location: LC_X9_Y6_N2
\U0|Add42~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add42~15_combout\ = \U0|Add50~15_combout\ $ (\U0|Add34~15_combout\ $ ((\U0|Add42~12\)))
-- \U0|Add42~17\ = CARRY((\U0|Add50~15_combout\ & (!\U0|Add34~15_combout\ & !\U0|Add42~12\)) # (!\U0|Add50~15_combout\ & ((!\U0|Add42~12\) # (!\U0|Add34~15_combout\))))
-- \U0|Add42~17COUT1_32\ = CARRY((\U0|Add50~15_combout\ & (!\U0|Add34~15_combout\ & !\U0|Add42~12COUT1_31\)) # (!\U0|Add50~15_combout\ & ((!\U0|Add42~12COUT1_31\) # (!\U0|Add34~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add50~15_combout\,
	datab => \U0|Add34~15_combout\,
	cin0 => \U0|Add42~12\,
	cin1 => \U0|Add42~12COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add42~15_combout\,
	cout0 => \U0|Add42~17\,
	cout1 => \U0|Add42~17COUT1_32\);

-- Location: LC_X9_Y6_N3
\U0|Add42~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add42~5_combout\ = \U0|Add50~5_combout\ $ (\U0|Add34~5_combout\ $ ((!\U0|Add42~17\)))
-- \U0|Add42~7\ = CARRY((\U0|Add50~5_combout\ & ((\U0|Add34~5_combout\) # (!\U0|Add42~17\))) # (!\U0|Add50~5_combout\ & (\U0|Add34~5_combout\ & !\U0|Add42~17\)))
-- \U0|Add42~7COUT1_33\ = CARRY((\U0|Add50~5_combout\ & ((\U0|Add34~5_combout\) # (!\U0|Add42~17COUT1_32\))) # (!\U0|Add50~5_combout\ & (\U0|Add34~5_combout\ & !\U0|Add42~17COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add50~5_combout\,
	datab => \U0|Add34~5_combout\,
	cin0 => \U0|Add42~17\,
	cin1 => \U0|Add42~17COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add42~5_combout\,
	cout0 => \U0|Add42~7\,
	cout1 => \U0|Add42~7COUT1_33\);

-- Location: LC_X9_Y6_N4
\U0|Add42~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add42~0_combout\ = \U0|Add34~0_combout\ $ (\U0|Add50~0_combout\ $ ((\U0|Add42~7\)))
-- \U0|Add42~2\ = CARRY((\U0|Add34~0_combout\ & (!\U0|Add50~0_combout\ & !\U0|Add42~7COUT1_33\)) # (!\U0|Add34~0_combout\ & ((!\U0|Add42~7COUT1_33\) # (!\U0|Add50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add34~0_combout\,
	datab => \U0|Add50~0_combout\,
	cin0 => \U0|Add42~7\,
	cin1 => \U0|Add42~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add42~0_combout\,
	cout => \U0|Add42~2\);

-- Location: LC_X9_Y6_N5
\U0|Add42~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add42~20_combout\ = \U0|Add34~20_combout\ $ (\U0|Add50~20_combout\ $ ((!\U0|Add42~2\)))
-- \U0|Add42~22\ = CARRY((\U0|Add34~20_combout\ & ((\U0|Add50~20_combout\) # (!\U0|Add42~2\))) # (!\U0|Add34~20_combout\ & (\U0|Add50~20_combout\ & !\U0|Add42~2\)))
-- \U0|Add42~22COUT1_34\ = CARRY((\U0|Add34~20_combout\ & ((\U0|Add50~20_combout\) # (!\U0|Add42~2\))) # (!\U0|Add34~20_combout\ & (\U0|Add50~20_combout\ & !\U0|Add42~2\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add34~20_combout\,
	datab => \U0|Add50~20_combout\,
	cin => \U0|Add42~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add42~20_combout\,
	cout0 => \U0|Add42~22\,
	cout1 => \U0|Add42~22COUT1_34\);

-- Location: LC_X3_Y6_N8
\U0|LsignalNow[3]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~37\ = \Lsignalin~combout\(3) $ ((((B1_LsignalNow[3]))))
-- \U0|LsignalNow\(3) = DFFEAS(\U0|Ldiff~37\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(3),
	datac => \Lsignalin~combout\(3),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~37\,
	regout => \U0|LsignalNow\(3));

-- Location: LC_X2_Y6_N4
\U0|LsignalNow[2]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~38\ = ((B1_LsignalNow[2] $ (\Lsignalin~combout\(2))))
-- \U0|LsignalNow\(2) = DFFEAS(\U0|Ldiff~38\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(2),
	datad => \Lsignalin~combout\(2),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~38\,
	regout => \U0|LsignalNow\(2));

-- Location: LC_X2_Y6_N5
\U0|LsignalNow[1]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~40\ = ((B1_LsignalNow[1] $ (\Lsignalin~combout\(1))))
-- \U0|LsignalNow\(1) = DFFEAS(\U0|Ldiff~40\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(1),
	datad => \Lsignalin~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~40\,
	regout => \U0|LsignalNow\(1));

-- Location: LC_X2_Y6_N8
\U0|LsignalNow[0]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~39\ = (\Lsignalin~combout\(0) $ ((B1_LsignalNow[0])))
-- \U0|LsignalNow\(0) = DFFEAS(\U0|Ldiff~39\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \Lsignalin~combout\(0),
	datac => \Lsignalin~combout\(0),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~39\,
	regout => \U0|LsignalNow\(0));

-- Location: LC_X2_Y6_N7
\U0|Add2~6\ : maxii_lcell
-- Equation(s):
-- \U0|Add2~6_combout\ = (\U0|Ldiff~40\ & (\U0|Ldiff~39\ & (\U0|LsignalNow\(2) $ (\Lsignalin~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(2),
	datab => \Lsignalin~combout\(2),
	datac => \U0|Ldiff~40\,
	datad => \U0|Ldiff~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add2~6_combout\);

-- Location: LC_X3_Y6_N9
\U0|num~1\ : maxii_lcell
-- Equation(s):
-- \U0|num~1_combout\ = (\U0|Ldiff~40\ & ((\U0|Ldiff~38\ & ((!\U0|Ldiff~37\) # (!\U0|Ldiff~39\))) # (!\U0|Ldiff~38\ & ((\U0|Ldiff~39\) # (\U0|Ldiff~37\))))) # (!\U0|Ldiff~40\ & ((\U0|Ldiff~38\ & ((\U0|Ldiff~39\) # (\U0|Ldiff~37\))) # (!\U0|Ldiff~38\ & 
-- (\U0|Ldiff~39\ & \U0|Ldiff~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~40\,
	datab => \U0|Ldiff~38\,
	datac => \U0|Ldiff~39\,
	datad => \U0|Ldiff~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|num~1_combout\);

-- Location: LC_X3_Y6_N5
\U0|LsignalNow[4]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~41\ = ((B1_LsignalNow[4] $ (\Lsignalin~combout\(4))))
-- \U0|LsignalNow\(4) = DFFEAS(\U0|Ldiff~41\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(4),
	datad => \Lsignalin~combout\(4),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~41\,
	regout => \U0|LsignalNow\(4));

-- Location: LC_X3_Y6_N7
\U0|num~0\ : maxii_lcell
-- Equation(s):
-- \U0|num~0_combout\ = \U0|Ldiff~40\ $ (\U0|Ldiff~38\ $ (\U0|Ldiff~39\ $ (\U0|Ldiff~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~40\,
	datab => \U0|Ldiff~38\,
	datac => \U0|Ldiff~39\,
	datad => \U0|Ldiff~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|num~0_combout\);

-- Location: LC_X3_Y6_N6
\U0|LsignalNow[5]\ : maxii_lcell
-- Equation(s):
-- \U0|LsignalNow\(5) = DFFEAS(GND, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(5),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|LsignalNow\(5));

-- Location: LC_X3_Y6_N0
\U0|Add3~22\ : maxii_lcell
-- Equation(s):
-- \U0|Add3~22_cout0\ = CARRY(\U0|LsignalNow\(5) $ ((\Lsignalin~combout\(5))))
-- \U0|Add3~22COUT1_26\ = CARRY(\U0|LsignalNow\(5) $ ((\Lsignalin~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(5),
	datab => \Lsignalin~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add3~20\,
	cout0 => \U0|Add3~22_cout0\,
	cout1 => \U0|Add3~22COUT1_26\);

-- Location: LC_X3_Y6_N1
\U0|Add3~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add3~10_combout\ = \U0|Ldiff~41\ $ (\U0|num~0_combout\ $ ((\U0|Add3~22_cout0\)))
-- \U0|Add3~12\ = CARRY((\U0|Ldiff~41\ & (!\U0|num~0_combout\ & !\U0|Add3~22_cout0\)) # (!\U0|Ldiff~41\ & ((!\U0|Add3~22_cout0\) # (!\U0|num~0_combout\))))
-- \U0|Add3~12COUT1_27\ = CARRY((\U0|Ldiff~41\ & (!\U0|num~0_combout\ & !\U0|Add3~22COUT1_26\)) # (!\U0|Ldiff~41\ & ((!\U0|Add3~22COUT1_26\) # (!\U0|num~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~41\,
	datab => \U0|num~0_combout\,
	cin0 => \U0|Add3~22_cout0\,
	cin1 => \U0|Add3~22COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add3~10_combout\,
	cout0 => \U0|Add3~12\,
	cout1 => \U0|Add3~12COUT1_27\);

-- Location: LC_X3_Y6_N2
\U0|Add3~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add3~15_combout\ = (\U0|num~1_combout\ $ ((!\U0|Add3~12\)))
-- \U0|Add3~17\ = CARRY(((\U0|num~1_combout\ & !\U0|Add3~12\)))
-- \U0|Add3~17COUT1_28\ = CARRY(((\U0|num~1_combout\ & !\U0|Add3~12COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|num~1_combout\,
	cin0 => \U0|Add3~12\,
	cin1 => \U0|Add3~12COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add3~15_combout\,
	cout0 => \U0|Add3~17\,
	cout1 => \U0|Add3~17COUT1_28\);

-- Location: LC_X3_Y6_N3
\U0|Add3~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add3~5_combout\ = \U0|Add3~17\ $ (((\U0|Ldiff~37\ & (\U0|Add2~6_combout\))))
-- \U0|Add3~7\ = CARRY(((!\U0|Add3~17\) # (!\U0|Add2~6_combout\)) # (!\U0|Ldiff~37\))
-- \U0|Add3~7COUT1_29\ = CARRY(((!\U0|Add3~17COUT1_28\) # (!\U0|Add2~6_combout\)) # (!\U0|Ldiff~37\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~37\,
	datab => \U0|Add2~6_combout\,
	cin0 => \U0|Add3~17\,
	cin1 => \U0|Add3~17COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add3~5_combout\,
	cout0 => \U0|Add3~7\,
	cout1 => \U0|Add3~7COUT1_29\);

-- Location: LC_X4_Y6_N1
\U0|LsignalNow[6]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~36\ = (\Lsignalin~combout\(6) $ ((B1_LsignalNow[6])))
-- \U0|LsignalNow\(6) = DFFEAS(\U0|Ldiff~36\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \Lsignalin~combout\(6),
	datac => \Lsignalin~combout\(6),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~36\,
	regout => \U0|LsignalNow\(6));

-- Location: LC_X4_Y6_N0
\U0|LsignalNow[7]\ : maxii_lcell
-- Equation(s):
-- \U0|LsignalNow\(7) = DFFEAS((((\Lsignalin~combout\(7)))), GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datad => \Lsignalin~combout\(7),
	aclr => GND,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|LsignalNow\(7));

-- Location: LC_X4_Y6_N5
\U0|Add4~22\ : maxii_lcell
-- Equation(s):
-- \U0|Add4~22_cout0\ = CARRY(\Lsignalin~combout\(7) $ ((\U0|LsignalNow\(7))))
-- \U0|Add4~22COUT1_26\ = CARRY(\Lsignalin~combout\(7) $ ((\U0|LsignalNow\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(7),
	datab => \U0|LsignalNow\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add4~20\,
	cout0 => \U0|Add4~22_cout0\,
	cout1 => \U0|Add4~22COUT1_26\);

-- Location: LC_X4_Y6_N6
\U0|Add4~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add4~10_combout\ = \U0|Add3~10_combout\ $ (\U0|Ldiff~36\ $ ((\U0|Add4~22_cout0\)))
-- \U0|Add4~12\ = CARRY((\U0|Add3~10_combout\ & (!\U0|Ldiff~36\ & !\U0|Add4~22_cout0\)) # (!\U0|Add3~10_combout\ & ((!\U0|Add4~22_cout0\) # (!\U0|Ldiff~36\))))
-- \U0|Add4~12COUT1_27\ = CARRY((\U0|Add3~10_combout\ & (!\U0|Ldiff~36\ & !\U0|Add4~22COUT1_26\)) # (!\U0|Add3~10_combout\ & ((!\U0|Add4~22COUT1_26\) # (!\U0|Ldiff~36\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add3~10_combout\,
	datab => \U0|Ldiff~36\,
	cin0 => \U0|Add4~22_cout0\,
	cin1 => \U0|Add4~22COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add4~10_combout\,
	cout0 => \U0|Add4~12\,
	cout1 => \U0|Add4~12COUT1_27\);

-- Location: LC_X4_Y6_N7
\U0|Add4~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add4~15_combout\ = (\U0|Add3~15_combout\ $ ((!\U0|Add4~12\)))
-- \U0|Add4~17\ = CARRY(((\U0|Add3~15_combout\ & !\U0|Add4~12\)))
-- \U0|Add4~17COUT1_28\ = CARRY(((\U0|Add3~15_combout\ & !\U0|Add4~12COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add3~15_combout\,
	cin0 => \U0|Add4~12\,
	cin1 => \U0|Add4~12COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add4~15_combout\,
	cout0 => \U0|Add4~17\,
	cout1 => \U0|Add4~17COUT1_28\);

-- Location: LC_X4_Y6_N8
\U0|Add4~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add4~5_combout\ = (\U0|Add3~5_combout\ $ ((\U0|Add4~17\)))
-- \U0|Add4~7\ = CARRY(((!\U0|Add4~17\) # (!\U0|Add3~5_combout\)))
-- \U0|Add4~7COUT1_29\ = CARRY(((!\U0|Add4~17COUT1_28\) # (!\U0|Add3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add3~5_combout\,
	cin0 => \U0|Add4~17\,
	cin1 => \U0|Add4~17COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add4~5_combout\,
	cout0 => \U0|Add4~7\,
	cout1 => \U0|Add4~7COUT1_29\);

-- Location: LC_X6_Y6_N7
\U0|LsignalNow[8]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~35\ = ((B1_LsignalNow[8] $ (\Lsignalin~combout\(8))))
-- \U0|LsignalNow\(8) = DFFEAS(\U0|Ldiff~35\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(8),
	datad => \Lsignalin~combout\(8),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~35\,
	regout => \U0|LsignalNow\(8));

-- Location: LC_X4_Y6_N4
\U0|LsignalNow[9]\ : maxii_lcell
-- Equation(s):
-- \U0|Mux6~2\ = (\address~combout\(0) & ((\address~combout\(1)) # ((B1_LsignalNow[9])))) # (!\address~combout\(0) & (!\address~combout\(1) & ((\U0|LsignalNow\(1)))))
-- \U0|LsignalNow\(9) = DFFEAS(\U0|Mux6~2\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \address~combout\(0),
	datab => \address~combout\(1),
	datac => \Lsignalin~combout\(9),
	datad => \U0|LsignalNow\(1),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux6~2\,
	regout => \U0|LsignalNow\(9));

-- Location: LC_X5_Y6_N0
\U0|Add5~22\ : maxii_lcell
-- Equation(s):
-- \U0|Add5~22_cout0\ = CARRY(\U0|LsignalNow\(9) $ ((\Lsignalin~combout\(9))))
-- \U0|Add5~22COUT1_26\ = CARRY(\U0|LsignalNow\(9) $ ((\Lsignalin~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(9),
	datab => \Lsignalin~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add5~20\,
	cout0 => \U0|Add5~22_cout0\,
	cout1 => \U0|Add5~22COUT1_26\);

-- Location: LC_X5_Y6_N1
\U0|Add5~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add5~10_combout\ = \U0|Ldiff~35\ $ (\U0|Add4~10_combout\ $ ((\U0|Add5~22_cout0\)))
-- \U0|Add5~12\ = CARRY((\U0|Ldiff~35\ & (!\U0|Add4~10_combout\ & !\U0|Add5~22_cout0\)) # (!\U0|Ldiff~35\ & ((!\U0|Add5~22_cout0\) # (!\U0|Add4~10_combout\))))
-- \U0|Add5~12COUT1_27\ = CARRY((\U0|Ldiff~35\ & (!\U0|Add4~10_combout\ & !\U0|Add5~22COUT1_26\)) # (!\U0|Ldiff~35\ & ((!\U0|Add5~22COUT1_26\) # (!\U0|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~35\,
	datab => \U0|Add4~10_combout\,
	cin0 => \U0|Add5~22_cout0\,
	cin1 => \U0|Add5~22COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add5~10_combout\,
	cout0 => \U0|Add5~12\,
	cout1 => \U0|Add5~12COUT1_27\);

-- Location: LC_X5_Y6_N2
\U0|Add5~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add5~15_combout\ = (\U0|Add4~15_combout\ $ ((!\U0|Add5~12\)))
-- \U0|Add5~17\ = CARRY(((\U0|Add4~15_combout\ & !\U0|Add5~12\)))
-- \U0|Add5~17COUT1_28\ = CARRY(((\U0|Add4~15_combout\ & !\U0|Add5~12COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add4~15_combout\,
	cin0 => \U0|Add5~12\,
	cin1 => \U0|Add5~12COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add5~15_combout\,
	cout0 => \U0|Add5~17\,
	cout1 => \U0|Add5~17COUT1_28\);

-- Location: LC_X5_Y6_N3
\U0|Add5~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add5~5_combout\ = \U0|Add4~5_combout\ $ ((((\U0|Add5~17\))))
-- \U0|Add5~7\ = CARRY(((!\U0|Add5~17\)) # (!\U0|Add4~5_combout\))
-- \U0|Add5~7COUT1_29\ = CARRY(((!\U0|Add5~17COUT1_28\)) # (!\U0|Add4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add4~5_combout\,
	cin0 => \U0|Add5~17\,
	cin1 => \U0|Add5~17COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add5~5_combout\,
	cout0 => \U0|Add5~7\,
	cout1 => \U0|Add5~7COUT1_29\);

-- Location: LC_X6_Y6_N0
\U0|LsignalNow[10]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~34\ = \Lsignalin~combout\(10) $ ((((B1_LsignalNow[10]))))
-- \U0|LsignalNow\(10) = DFFEAS(\U0|Ldiff~34\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(10),
	datac => \Lsignalin~combout\(10),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~34\,
	regout => \U0|LsignalNow\(10));

-- Location: LC_X4_Y6_N3
\U0|LsignalNow[11]\ : maxii_lcell
-- Equation(s):
-- \U0|Mux4~2\ = (\address~combout\(0) & (((B1_LsignalNow[11]) # (\address~combout\(1))))) # (!\address~combout\(0) & (\U0|LsignalNow\(3) & ((!\address~combout\(1)))))
-- \U0|LsignalNow\(11) = DFFEAS(\U0|Mux4~2\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \U0|LsignalNow\(3),
	datab => \address~combout\(0),
	datac => \Lsignalin~combout\(11),
	datad => \address~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux4~2\,
	regout => \U0|LsignalNow\(11));

-- Location: LC_X5_Y6_N5
\U0|Add6~22\ : maxii_lcell
-- Equation(s):
-- \U0|Add6~22_cout0\ = CARRY(\Lsignalin~combout\(11) $ ((\U0|LsignalNow\(11))))
-- \U0|Add6~22COUT1_26\ = CARRY(\Lsignalin~combout\(11) $ ((\U0|LsignalNow\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(11),
	datab => \U0|LsignalNow\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add6~20\,
	cout0 => \U0|Add6~22_cout0\,
	cout1 => \U0|Add6~22COUT1_26\);

-- Location: LC_X5_Y6_N6
\U0|Add6~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add6~10_combout\ = \U0|Ldiff~34\ $ (\U0|Add5~10_combout\ $ ((\U0|Add6~22_cout0\)))
-- \U0|Add6~12\ = CARRY((\U0|Ldiff~34\ & (!\U0|Add5~10_combout\ & !\U0|Add6~22_cout0\)) # (!\U0|Ldiff~34\ & ((!\U0|Add6~22_cout0\) # (!\U0|Add5~10_combout\))))
-- \U0|Add6~12COUT1_27\ = CARRY((\U0|Ldiff~34\ & (!\U0|Add5~10_combout\ & !\U0|Add6~22COUT1_26\)) # (!\U0|Ldiff~34\ & ((!\U0|Add6~22COUT1_26\) # (!\U0|Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~34\,
	datab => \U0|Add5~10_combout\,
	cin0 => \U0|Add6~22_cout0\,
	cin1 => \U0|Add6~22COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add6~10_combout\,
	cout0 => \U0|Add6~12\,
	cout1 => \U0|Add6~12COUT1_27\);

-- Location: LC_X5_Y6_N7
\U0|Add6~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add6~15_combout\ = (\U0|Add5~15_combout\ $ ((!\U0|Add6~12\)))
-- \U0|Add6~17\ = CARRY(((\U0|Add5~15_combout\ & !\U0|Add6~12\)))
-- \U0|Add6~17COUT1_28\ = CARRY(((\U0|Add5~15_combout\ & !\U0|Add6~12COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add5~15_combout\,
	cin0 => \U0|Add6~12\,
	cin1 => \U0|Add6~12COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add6~15_combout\,
	cout0 => \U0|Add6~17\,
	cout1 => \U0|Add6~17COUT1_28\);

-- Location: LC_X5_Y6_N8
\U0|Add6~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add6~5_combout\ = \U0|Add5~5_combout\ $ ((((\U0|Add6~17\))))
-- \U0|Add6~7\ = CARRY(((!\U0|Add6~17\)) # (!\U0|Add5~5_combout\))
-- \U0|Add6~7COUT1_29\ = CARRY(((!\U0|Add6~17COUT1_28\)) # (!\U0|Add5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add5~5_combout\,
	cin0 => \U0|Add6~17\,
	cin1 => \U0|Add6~17COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add6~5_combout\,
	cout0 => \U0|Add6~7\,
	cout1 => \U0|Add6~7COUT1_29\);

-- Location: LC_X6_Y6_N8
\U0|LsignalNow[12]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~33\ = (\Lsignalin~combout\(12) $ ((B1_LsignalNow[12])))
-- \U0|LsignalNow\(12) = DFFEAS(\U0|Ldiff~33\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \Lsignalin~combout\(12),
	datac => \Lsignalin~combout\(12),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~33\,
	regout => \U0|LsignalNow\(12));

-- Location: LC_X6_Y6_N9
\U0|LsignalNow[13]\ : maxii_lcell
-- Equation(s):
-- \U0|Mux2~2\ = (\address~combout\(0) & (((B1_LsignalNow[13]) # (\address~combout\(1))))) # (!\address~combout\(0) & (\U0|LsignalNow\(5) & ((!\address~combout\(1)))))
-- \U0|LsignalNow\(13) = DFFEAS(\U0|Mux2~2\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \address~combout\(0),
	datab => \U0|LsignalNow\(5),
	datac => \Lsignalin~combout\(13),
	datad => \address~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux2~2\,
	regout => \U0|LsignalNow\(13));

-- Location: LC_X6_Y6_N1
\U0|Add7~27\ : maxii_lcell
-- Equation(s):
-- \U0|Add7~27_cout0\ = CARRY(\Lsignalin~combout\(13) $ ((\U0|LsignalNow\(13))))
-- \U0|Add7~27COUT1_31\ = CARRY(\Lsignalin~combout\(13) $ ((\U0|LsignalNow\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(13),
	datab => \U0|LsignalNow\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add7~25\,
	cout0 => \U0|Add7~27_cout0\,
	cout1 => \U0|Add7~27COUT1_31\);

-- Location: LC_X6_Y6_N2
\U0|Add7~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add7~10_combout\ = \U0|Ldiff~33\ $ (\U0|Add6~10_combout\ $ ((\U0|Add7~27_cout0\)))
-- \U0|Add7~12\ = CARRY((\U0|Ldiff~33\ & (!\U0|Add6~10_combout\ & !\U0|Add7~27_cout0\)) # (!\U0|Ldiff~33\ & ((!\U0|Add7~27_cout0\) # (!\U0|Add6~10_combout\))))
-- \U0|Add7~12COUT1_32\ = CARRY((\U0|Ldiff~33\ & (!\U0|Add6~10_combout\ & !\U0|Add7~27COUT1_31\)) # (!\U0|Ldiff~33\ & ((!\U0|Add7~27COUT1_31\) # (!\U0|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~33\,
	datab => \U0|Add6~10_combout\,
	cin0 => \U0|Add7~27_cout0\,
	cin1 => \U0|Add7~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add7~10_combout\,
	cout0 => \U0|Add7~12\,
	cout1 => \U0|Add7~12COUT1_32\);

-- Location: LC_X6_Y6_N3
\U0|Add7~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add7~15_combout\ = (\U0|Add6~15_combout\ $ ((!\U0|Add7~12\)))
-- \U0|Add7~17\ = CARRY(((\U0|Add6~15_combout\ & !\U0|Add7~12\)))
-- \U0|Add7~17COUT1_33\ = CARRY(((\U0|Add6~15_combout\ & !\U0|Add7~12COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add6~15_combout\,
	cin0 => \U0|Add7~12\,
	cin1 => \U0|Add7~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add7~15_combout\,
	cout0 => \U0|Add7~17\,
	cout1 => \U0|Add7~17COUT1_33\);

-- Location: LC_X6_Y6_N4
\U0|Add7~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add7~5_combout\ = \U0|Add6~5_combout\ $ ((((\U0|Add7~17\))))
-- \U0|Add7~7\ = CARRY(((!\U0|Add7~17COUT1_33\)) # (!\U0|Add6~5_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add6~5_combout\,
	cin0 => \U0|Add7~17\,
	cin1 => \U0|Add7~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add7~5_combout\,
	cout => \U0|Add7~7\);

-- Location: LC_X3_Y6_N4
\U0|Add3~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add3~0_combout\ = (((!\U0|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \U0|Add3~7\,
	cin1 => \U0|Add3~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add3~0_combout\);

-- Location: LC_X4_Y6_N9
\U0|Add4~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add4~0_combout\ = ((\U0|Add4~7\ $ (!\U0|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add3~0_combout\,
	cin0 => \U0|Add4~7\,
	cin1 => \U0|Add4~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add4~0_combout\);

-- Location: LC_X5_Y6_N4
\U0|Add5~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add5~0_combout\ = ((\U0|Add5~7\ $ (!\U0|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add4~0_combout\,
	cin0 => \U0|Add5~7\,
	cin1 => \U0|Add5~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add5~0_combout\);

-- Location: LC_X5_Y6_N9
\U0|Add6~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add6~0_combout\ = ((\U0|Add6~7\ $ (!\U0|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add5~0_combout\,
	cin0 => \U0|Add6~7\,
	cin1 => \U0|Add6~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add6~0_combout\);

-- Location: LC_X6_Y6_N5
\U0|Add7~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add7~0_combout\ = (\U0|Add6~0_combout\ $ ((!\U0|Add7~7\)))
-- \U0|Add7~2\ = CARRY(((\U0|Add6~0_combout\ & !\U0|Add7~7\)))
-- \U0|Add7~2COUT1_34\ = CARRY(((\U0|Add6~0_combout\ & !\U0|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add6~0_combout\,
	cin => \U0|Add7~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add7~0_combout\,
	cout0 => \U0|Add7~2\,
	cout1 => \U0|Add7~2COUT1_34\);

-- Location: LC_X6_Y6_N6
\U0|Add7~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add7~20_combout\ = ((((!\U0|Add7~7\ & \U0|Add7~2\) # (\U0|Add7~7\ & \U0|Add7~2COUT1_34\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add7~7\,
	cin0 => \U0|Add7~2\,
	cin1 => \U0|Add7~2COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add7~20_combout\);

-- Location: LC_X7_Y6_N8
\U0|LsignalNow[14]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~32\ = ((B1_LsignalNow[14] $ (\Lsignalin~combout\(14))))
-- \U0|LsignalNow\(14) = DFFEAS(\U0|Ldiff~32\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(14),
	datad => \Lsignalin~combout\(14),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~32\,
	regout => \U0|LsignalNow\(14));

-- Location: LC_X7_Y6_N9
\U0|LsignalNow[15]\ : maxii_lcell
-- Equation(s):
-- \U0|Mux0~2\ = (\address~combout\(0) & ((\address~combout\(1)) # ((B1_LsignalNow[15])))) # (!\address~combout\(0) & (!\address~combout\(1) & ((\U0|LsignalNow\(7)))))
-- \U0|LsignalNow\(15) = DFFEAS(\U0|Mux0~2\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \address~combout\(0),
	datab => \address~combout\(1),
	datac => \Lsignalin~combout\(15),
	datad => \U0|LsignalNow\(7),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux0~2\,
	regout => \U0|LsignalNow\(15));

-- Location: LC_X7_Y6_N1
\U0|Add8~27\ : maxii_lcell
-- Equation(s):
-- \U0|Add8~27_cout0\ = CARRY(\Lsignalin~combout\(15) $ ((\U0|LsignalNow\(15))))
-- \U0|Add8~27COUT1_31\ = CARRY(\Lsignalin~combout\(15) $ ((\U0|LsignalNow\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(15),
	datab => \U0|LsignalNow\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add8~25\,
	cout0 => \U0|Add8~27_cout0\,
	cout1 => \U0|Add8~27COUT1_31\);

-- Location: LC_X7_Y6_N2
\U0|Add8~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add8~10_combout\ = \U0|Ldiff~32\ $ (\U0|Add7~10_combout\ $ ((\U0|Add8~27_cout0\)))
-- \U0|Add8~12\ = CARRY((\U0|Ldiff~32\ & (!\U0|Add7~10_combout\ & !\U0|Add8~27_cout0\)) # (!\U0|Ldiff~32\ & ((!\U0|Add8~27_cout0\) # (!\U0|Add7~10_combout\))))
-- \U0|Add8~12COUT1_32\ = CARRY((\U0|Ldiff~32\ & (!\U0|Add7~10_combout\ & !\U0|Add8~27COUT1_31\)) # (!\U0|Ldiff~32\ & ((!\U0|Add8~27COUT1_31\) # (!\U0|Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~32\,
	datab => \U0|Add7~10_combout\,
	cin0 => \U0|Add8~27_cout0\,
	cin1 => \U0|Add8~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add8~10_combout\,
	cout0 => \U0|Add8~12\,
	cout1 => \U0|Add8~12COUT1_32\);

-- Location: LC_X7_Y6_N3
\U0|Add8~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add8~15_combout\ = (\U0|Add7~15_combout\ $ ((!\U0|Add8~12\)))
-- \U0|Add8~17\ = CARRY(((\U0|Add7~15_combout\ & !\U0|Add8~12\)))
-- \U0|Add8~17COUT1_33\ = CARRY(((\U0|Add7~15_combout\ & !\U0|Add8~12COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add7~15_combout\,
	cin0 => \U0|Add8~12\,
	cin1 => \U0|Add8~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add8~15_combout\,
	cout0 => \U0|Add8~17\,
	cout1 => \U0|Add8~17COUT1_33\);

-- Location: LC_X7_Y6_N4
\U0|Add8~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add8~5_combout\ = (\U0|Add7~5_combout\ $ ((\U0|Add8~17\)))
-- \U0|Add8~7\ = CARRY(((!\U0|Add8~17COUT1_33\) # (!\U0|Add7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add7~5_combout\,
	cin0 => \U0|Add8~17\,
	cin1 => \U0|Add8~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add8~5_combout\,
	cout => \U0|Add8~7\);

-- Location: LC_X7_Y6_N5
\U0|Add8~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add8~0_combout\ = \U0|Add7~0_combout\ $ ((((!\U0|Add8~7\))))
-- \U0|Add8~2\ = CARRY((\U0|Add7~0_combout\ & ((!\U0|Add8~7\))))
-- \U0|Add8~2COUT1_34\ = CARRY((\U0|Add7~0_combout\ & ((!\U0|Add8~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add7~0_combout\,
	cin => \U0|Add8~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add8~0_combout\,
	cout0 => \U0|Add8~2\,
	cout1 => \U0|Add8~2COUT1_34\);

-- Location: LC_X7_Y6_N6
\U0|Add8~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add8~20_combout\ = (\U0|Add7~20_combout\ $ (((!\U0|Add8~7\ & \U0|Add8~2\) # (\U0|Add8~7\ & \U0|Add8~2COUT1_34\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add7~20_combout\,
	cin => \U0|Add8~7\,
	cin0 => \U0|Add8~2\,
	cin1 => \U0|Add8~2COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add8~20_combout\);

-- Location: LC_X7_Y5_N8
\U0|LsignalNow[16]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~31\ = ((B1_LsignalNow[16] $ (\Lsignalin~combout\(16))))
-- \U0|LsignalNow\(16) = DFFEAS(\U0|Ldiff~31\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(16), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(16),
	datad => \Lsignalin~combout\(16),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~31\,
	regout => \U0|LsignalNow\(16));

-- Location: LC_X5_Y5_N0
\U0|LsignalNow[25]\ : maxii_lcell
-- Equation(s):
-- \U0|LsignalNow\(25) = DFFEAS(GND, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(25), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(25),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|LsignalNow\(25));

-- Location: LC_X7_Y5_N9
\U0|LsignalNow[17]\ : maxii_lcell
-- Equation(s):
-- \U0|Mux6~3\ = (\address~combout\(1) & ((\U0|Mux6~2\ & (\U0|LsignalNow\(25))) # (!\U0|Mux6~2\ & ((B1_LsignalNow[17]))))) # (!\address~combout\(1) & (((\U0|Mux6~2\))))
-- \U0|LsignalNow\(17) = DFFEAS(\U0|Mux6~3\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(17), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \U0|LsignalNow\(25),
	datab => \address~combout\(1),
	datac => \Lsignalin~combout\(17),
	datad => \U0|Mux6~2\,
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux6~3\,
	regout => \U0|LsignalNow\(17));

-- Location: LC_X7_Y5_N1
\U0|Add9~27\ : maxii_lcell
-- Equation(s):
-- \U0|Add9~27_cout0\ = CARRY(\Lsignalin~combout\(17) $ ((\U0|LsignalNow\(17))))
-- \U0|Add9~27COUT1_31\ = CARRY(\Lsignalin~combout\(17) $ ((\U0|LsignalNow\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(17),
	datab => \U0|LsignalNow\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add9~25\,
	cout0 => \U0|Add9~27_cout0\,
	cout1 => \U0|Add9~27COUT1_31\);

-- Location: LC_X7_Y5_N2
\U0|Add9~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add9~10_combout\ = \U0|Ldiff~31\ $ (\U0|Add8~10_combout\ $ ((\U0|Add9~27_cout0\)))
-- \U0|Add9~12\ = CARRY((\U0|Ldiff~31\ & (!\U0|Add8~10_combout\ & !\U0|Add9~27_cout0\)) # (!\U0|Ldiff~31\ & ((!\U0|Add9~27_cout0\) # (!\U0|Add8~10_combout\))))
-- \U0|Add9~12COUT1_32\ = CARRY((\U0|Ldiff~31\ & (!\U0|Add8~10_combout\ & !\U0|Add9~27COUT1_31\)) # (!\U0|Ldiff~31\ & ((!\U0|Add9~27COUT1_31\) # (!\U0|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~31\,
	datab => \U0|Add8~10_combout\,
	cin0 => \U0|Add9~27_cout0\,
	cin1 => \U0|Add9~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add9~10_combout\,
	cout0 => \U0|Add9~12\,
	cout1 => \U0|Add9~12COUT1_32\);

-- Location: LC_X7_Y5_N3
\U0|Add9~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add9~15_combout\ = (\U0|Add8~15_combout\ $ ((!\U0|Add9~12\)))
-- \U0|Add9~17\ = CARRY(((\U0|Add8~15_combout\ & !\U0|Add9~12\)))
-- \U0|Add9~17COUT1_33\ = CARRY(((\U0|Add8~15_combout\ & !\U0|Add9~12COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add8~15_combout\,
	cin0 => \U0|Add9~12\,
	cin1 => \U0|Add9~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add9~15_combout\,
	cout0 => \U0|Add9~17\,
	cout1 => \U0|Add9~17COUT1_33\);

-- Location: LC_X7_Y5_N4
\U0|Add9~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add9~5_combout\ = (\U0|Add8~5_combout\ $ ((\U0|Add9~17\)))
-- \U0|Add9~7\ = CARRY(((!\U0|Add9~17COUT1_33\) # (!\U0|Add8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add8~5_combout\,
	cin0 => \U0|Add9~17\,
	cin1 => \U0|Add9~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add9~5_combout\,
	cout => \U0|Add9~7\);

-- Location: LC_X7_Y5_N5
\U0|Add9~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add9~0_combout\ = (\U0|Add8~0_combout\ $ ((!\U0|Add9~7\)))
-- \U0|Add9~2\ = CARRY(((\U0|Add8~0_combout\ & !\U0|Add9~7\)))
-- \U0|Add9~2COUT1_34\ = CARRY(((\U0|Add8~0_combout\ & !\U0|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add8~0_combout\,
	cin => \U0|Add9~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add9~0_combout\,
	cout0 => \U0|Add9~2\,
	cout1 => \U0|Add9~2COUT1_34\);

-- Location: LC_X7_Y5_N6
\U0|Add9~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add9~20_combout\ = (((!\U0|Add9~7\ & \U0|Add9~2\) # (\U0|Add9~7\ & \U0|Add9~2COUT1_34\) $ (\U0|Add8~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add8~20_combout\,
	cin => \U0|Add9~7\,
	cin0 => \U0|Add9~2\,
	cin1 => \U0|Add9~2COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add9~20_combout\);

-- Location: LC_X8_Y5_N0
\U0|LsignalNow[18]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~30\ = ((B1_LsignalNow[18] $ (\Lsignalin~combout\(18))))
-- \U0|LsignalNow\(18) = DFFEAS(\U0|Ldiff~30\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(18), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(18),
	datad => \Lsignalin~combout\(18),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~30\,
	regout => \U0|LsignalNow\(18));

-- Location: LC_X6_Y4_N0
\U0|LsignalNow[27]\ : maxii_lcell
-- Equation(s):
-- \U0|LsignalNow\(27) = DFFEAS(GND, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(27), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(27),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|LsignalNow\(27));

-- Location: LC_X8_Y5_N7
\U0|LsignalNow[19]\ : maxii_lcell
-- Equation(s):
-- \U0|Mux4~3\ = (\U0|Mux4~2\ & (((\U0|LsignalNow\(27))) # (!\address~combout\(1)))) # (!\U0|Mux4~2\ & (\address~combout\(1) & (B1_LsignalNow[19])))
-- \U0|LsignalNow\(19) = DFFEAS(\U0|Mux4~3\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(19), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \U0|Mux4~2\,
	datab => \address~combout\(1),
	datac => \Lsignalin~combout\(19),
	datad => \U0|LsignalNow\(27),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux4~3\,
	regout => \U0|LsignalNow\(19));

-- Location: LC_X8_Y5_N1
\U0|Add10~27\ : maxii_lcell
-- Equation(s):
-- \U0|Add10~27_cout0\ = CARRY(\Lsignalin~combout\(19) $ ((\U0|LsignalNow\(19))))
-- \U0|Add10~27COUT1_31\ = CARRY(\Lsignalin~combout\(19) $ ((\U0|LsignalNow\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(19),
	datab => \U0|LsignalNow\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add10~25\,
	cout0 => \U0|Add10~27_cout0\,
	cout1 => \U0|Add10~27COUT1_31\);

-- Location: LC_X8_Y5_N2
\U0|Add10~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add10~10_combout\ = \U0|Ldiff~30\ $ (\U0|Add9~10_combout\ $ ((\U0|Add10~27_cout0\)))
-- \U0|Add10~12\ = CARRY((\U0|Ldiff~30\ & (!\U0|Add9~10_combout\ & !\U0|Add10~27_cout0\)) # (!\U0|Ldiff~30\ & ((!\U0|Add10~27_cout0\) # (!\U0|Add9~10_combout\))))
-- \U0|Add10~12COUT1_32\ = CARRY((\U0|Ldiff~30\ & (!\U0|Add9~10_combout\ & !\U0|Add10~27COUT1_31\)) # (!\U0|Ldiff~30\ & ((!\U0|Add10~27COUT1_31\) # (!\U0|Add9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~30\,
	datab => \U0|Add9~10_combout\,
	cin0 => \U0|Add10~27_cout0\,
	cin1 => \U0|Add10~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add10~10_combout\,
	cout0 => \U0|Add10~12\,
	cout1 => \U0|Add10~12COUT1_32\);

-- Location: LC_X8_Y5_N3
\U0|Add10~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add10~15_combout\ = (\U0|Add9~15_combout\ $ ((!\U0|Add10~12\)))
-- \U0|Add10~17\ = CARRY(((\U0|Add9~15_combout\ & !\U0|Add10~12\)))
-- \U0|Add10~17COUT1_33\ = CARRY(((\U0|Add9~15_combout\ & !\U0|Add10~12COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add9~15_combout\,
	cin0 => \U0|Add10~12\,
	cin1 => \U0|Add10~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add10~15_combout\,
	cout0 => \U0|Add10~17\,
	cout1 => \U0|Add10~17COUT1_33\);

-- Location: LC_X8_Y5_N4
\U0|Add10~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add10~5_combout\ = (\U0|Add9~5_combout\ $ ((\U0|Add10~17\)))
-- \U0|Add10~7\ = CARRY(((!\U0|Add10~17COUT1_33\) # (!\U0|Add9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add9~5_combout\,
	cin0 => \U0|Add10~17\,
	cin1 => \U0|Add10~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add10~5_combout\,
	cout => \U0|Add10~7\);

-- Location: LC_X8_Y5_N5
\U0|Add10~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add10~0_combout\ = \U0|Add9~0_combout\ $ ((((!\U0|Add10~7\))))
-- \U0|Add10~2\ = CARRY((\U0|Add9~0_combout\ & ((!\U0|Add10~7\))))
-- \U0|Add10~2COUT1_34\ = CARRY((\U0|Add9~0_combout\ & ((!\U0|Add10~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add9~0_combout\,
	cin => \U0|Add10~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add10~0_combout\,
	cout0 => \U0|Add10~2\,
	cout1 => \U0|Add10~2COUT1_34\);

-- Location: LC_X8_Y5_N6
\U0|Add10~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add10~20_combout\ = (\U0|Add9~20_combout\ $ (((!\U0|Add10~7\ & \U0|Add10~2\) # (\U0|Add10~7\ & \U0|Add10~2COUT1_34\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add9~20_combout\,
	cin => \U0|Add10~7\,
	cin0 => \U0|Add10~2\,
	cin1 => \U0|Add10~2COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add10~20_combout\);

-- Location: LC_X6_Y4_N9
\U0|LsignalNow[20]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~29\ = ((B1_LsignalNow[20] $ (\Lsignalin~combout\(20))))
-- \U0|LsignalNow\(20) = DFFEAS(\U0|Ldiff~29\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(20), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(20),
	datad => \Lsignalin~combout\(20),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~29\,
	regout => \U0|LsignalNow\(20));

-- Location: LC_X5_Y4_N9
\U0|LsignalNow[29]\ : maxii_lcell
-- Equation(s):
-- \U0|LsignalNow\(29) = DFFEAS(GND, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(29), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(29),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|LsignalNow\(29));

-- Location: LC_X8_Y5_N9
\U0|LsignalNow[21]\ : maxii_lcell
-- Equation(s):
-- \U0|Mux2~3\ = (\U0|Mux2~2\ & (((\U0|LsignalNow\(29))) # (!\address~combout\(1)))) # (!\U0|Mux2~2\ & (\address~combout\(1) & (B1_LsignalNow[21])))
-- \U0|LsignalNow\(21) = DFFEAS(\U0|Mux2~3\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(21), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \U0|Mux2~2\,
	datab => \address~combout\(1),
	datac => \Lsignalin~combout\(21),
	datad => \U0|LsignalNow\(29),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux2~3\,
	regout => \U0|LsignalNow\(21));

-- Location: LC_X9_Y4_N2
\U0|Add19~27\ : maxii_lcell
-- Equation(s):
-- \U0|Add19~27_cout0\ = CARRY(\Lsignalin~combout\(21) $ ((\U0|LsignalNow\(21))))
-- \U0|Add19~27COUT1_31\ = CARRY(\Lsignalin~combout\(21) $ ((\U0|LsignalNow\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(21),
	datab => \U0|LsignalNow\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add19~25\,
	cout0 => \U0|Add19~27_cout0\,
	cout1 => \U0|Add19~27COUT1_31\);

-- Location: LC_X9_Y4_N3
\U0|Add19~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add19~10_combout\ = \U0|Ldiff~29\ $ (\U0|Add10~10_combout\ $ ((\U0|Add19~27_cout0\)))
-- \U0|Add19~12\ = CARRY((\U0|Ldiff~29\ & (!\U0|Add10~10_combout\ & !\U0|Add19~27_cout0\)) # (!\U0|Ldiff~29\ & ((!\U0|Add19~27_cout0\) # (!\U0|Add10~10_combout\))))
-- \U0|Add19~12COUT1_32\ = CARRY((\U0|Ldiff~29\ & (!\U0|Add10~10_combout\ & !\U0|Add19~27COUT1_31\)) # (!\U0|Ldiff~29\ & ((!\U0|Add19~27COUT1_31\) # (!\U0|Add10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~29\,
	datab => \U0|Add10~10_combout\,
	cin0 => \U0|Add19~27_cout0\,
	cin1 => \U0|Add19~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add19~10_combout\,
	cout0 => \U0|Add19~12\,
	cout1 => \U0|Add19~12COUT1_32\);

-- Location: LC_X9_Y4_N4
\U0|Add19~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add19~15_combout\ = (\U0|Add10~15_combout\ $ ((!\U0|Add19~12\)))
-- \U0|Add19~17\ = 

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add10~15_combout\,
	cin0 => \U0|Add19~12\,
	cin1 => \U0|Add19~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add19~15_combout\,
	cout => \U0|Add19~17\);

-- Location: LC_X9_Y4_N5
\U0|Add19~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add19~5_combout\ = \U0|Add10~5_combout\ $ (((((!\U0|Add19~17\ & GND) # (\U0|Add19~17\ & VCC)))))
-- \U0|Add19~7\ = CARRY(((!\U0|Add19~17\)) # (!\U0|Add10~5_combout\))
-- \U0|Add19~7COUT1\ = CARRY(((!\U0|Add19~17\)) # (!\U0|Add10~5_combout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add10~5_combout\,
	cin => \U0|Add19~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add19~5_combout\,
	cout0 => \U0|Add19~7\,
	cout1 => \U0|Add19~7COUT1\);

-- Location: LC_X9_Y4_N6
\U0|Add19~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add19~0_combout\ = \U0|Add10~0_combout\ $ ((((!(!\U0|Add19~17\ & \U0|Add19~7\) # (\U0|Add19~17\ & \U0|Add19~7COUT1\)))))
-- \U0|Add19~2\ = CARRY((\U0|Add10~0_combout\ & ((!\U0|Add19~7\))))
-- \U0|Add19~2COUT1_33\ = CARRY((\U0|Add10~0_combout\ & ((!\U0|Add19~7COUT1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add10~0_combout\,
	cin => \U0|Add19~17\,
	cin0 => \U0|Add19~7\,
	cin1 => \U0|Add19~7COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add19~0_combout\,
	cout0 => \U0|Add19~2\,
	cout1 => \U0|Add19~2COUT1_33\);

-- Location: LC_X9_Y4_N7
\U0|Add19~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add19~20_combout\ = (((!\U0|Add19~17\ & \U0|Add19~2\) # (\U0|Add19~17\ & \U0|Add19~2COUT1_33\) $ (\U0|Add10~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add10~20_combout\,
	cin => \U0|Add19~17\,
	cin0 => \U0|Add19~2\,
	cin1 => \U0|Add19~2COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add19~20_combout\);

-- Location: LC_X9_Y5_N9
\U0|LsignalNow[22]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~28\ = ((B1_LsignalNow[22] $ (\Lsignalin~combout\(22))))
-- \U0|LsignalNow\(22) = DFFEAS(\U0|Ldiff~28\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(22), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(22),
	datad => \Lsignalin~combout\(22),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~28\,
	regout => \U0|LsignalNow\(22));

-- Location: LC_X6_Y4_N1
\U0|LsignalNow[23]\ : maxii_lcell
-- Equation(s):
-- \U0|Mux0~3\ = (\address~combout\(1) & ((\U0|Mux0~2\ & (\U0|LsignalNow\(31))) # (!\U0|Mux0~2\ & ((B1_LsignalNow[23]))))) # (!\address~combout\(1) & (((\U0|Mux0~2\))))
-- \U0|LsignalNow\(23) = DFFEAS(\U0|Mux0~3\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(23), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \U0|LsignalNow\(31),
	datab => \address~combout\(1),
	datac => \Lsignalin~combout\(23),
	datad => \U0|Mux0~2\,
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux0~3\,
	regout => \U0|LsignalNow\(23));

-- Location: LC_X8_Y4_N1
\U0|Add20~27\ : maxii_lcell
-- Equation(s):
-- \U0|Add20~27_cout0\ = CARRY(\U0|LsignalNow\(23) $ ((\Lsignalin~combout\(23))))
-- \U0|Add20~27COUT1_31\ = CARRY(\U0|LsignalNow\(23) $ ((\Lsignalin~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(23),
	datab => \Lsignalin~combout\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add20~25\,
	cout0 => \U0|Add20~27_cout0\,
	cout1 => \U0|Add20~27COUT1_31\);

-- Location: LC_X8_Y4_N2
\U0|Add20~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add20~10_combout\ = \U0|Add19~10_combout\ $ (\U0|Ldiff~28\ $ ((\U0|Add20~27_cout0\)))
-- \U0|Add20~12\ = CARRY((\U0|Add19~10_combout\ & (!\U0|Ldiff~28\ & !\U0|Add20~27_cout0\)) # (!\U0|Add19~10_combout\ & ((!\U0|Add20~27_cout0\) # (!\U0|Ldiff~28\))))
-- \U0|Add20~12COUT1_32\ = CARRY((\U0|Add19~10_combout\ & (!\U0|Ldiff~28\ & !\U0|Add20~27COUT1_31\)) # (!\U0|Add19~10_combout\ & ((!\U0|Add20~27COUT1_31\) # (!\U0|Ldiff~28\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add19~10_combout\,
	datab => \U0|Ldiff~28\,
	cin0 => \U0|Add20~27_cout0\,
	cin1 => \U0|Add20~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add20~10_combout\,
	cout0 => \U0|Add20~12\,
	cout1 => \U0|Add20~12COUT1_32\);

-- Location: LC_X8_Y4_N3
\U0|Add20~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add20~15_combout\ = (\U0|Add19~15_combout\ $ ((!\U0|Add20~12\)))
-- \U0|Add20~17\ = CARRY(((\U0|Add19~15_combout\ & !\U0|Add20~12\)))
-- \U0|Add20~17COUT1_33\ = CARRY(((\U0|Add19~15_combout\ & !\U0|Add20~12COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add19~15_combout\,
	cin0 => \U0|Add20~12\,
	cin1 => \U0|Add20~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add20~15_combout\,
	cout0 => \U0|Add20~17\,
	cout1 => \U0|Add20~17COUT1_33\);

-- Location: LC_X8_Y4_N4
\U0|Add20~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add20~5_combout\ = (\U0|Add19~5_combout\ $ ((\U0|Add20~17\)))
-- \U0|Add20~7\ = CARRY(((!\U0|Add20~17COUT1_33\) # (!\U0|Add19~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add19~5_combout\,
	cin0 => \U0|Add20~17\,
	cin1 => \U0|Add20~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add20~5_combout\,
	cout => \U0|Add20~7\);

-- Location: LC_X8_Y4_N5
\U0|Add20~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add20~0_combout\ = \U0|Add19~0_combout\ $ ((((!\U0|Add20~7\))))
-- \U0|Add20~2\ = CARRY((\U0|Add19~0_combout\ & ((!\U0|Add20~7\))))
-- \U0|Add20~2COUT1_34\ = CARRY((\U0|Add19~0_combout\ & ((!\U0|Add20~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add19~0_combout\,
	cin => \U0|Add20~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add20~0_combout\,
	cout0 => \U0|Add20~2\,
	cout1 => \U0|Add20~2COUT1_34\);

-- Location: LC_X8_Y4_N6
\U0|Add20~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add20~20_combout\ = (((!\U0|Add20~7\ & \U0|Add20~2\) # (\U0|Add20~7\ & \U0|Add20~2COUT1_34\) $ (\U0|Add19~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add19~20_combout\,
	cin => \U0|Add20~7\,
	cin0 => \U0|Add20~2\,
	cin1 => \U0|Add20~2COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add20~20_combout\);

-- Location: LC_X9_Y5_N5
\U0|LsignalNow[24]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~27\ = ((B1_LsignalNow[24] $ (\Lsignalin~combout\(24))))
-- \U0|LsignalNow\(24) = DFFEAS(\U0|Ldiff~27\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(24), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(24),
	datad => \Lsignalin~combout\(24),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~27\,
	regout => \U0|LsignalNow\(24));

-- Location: LC_X7_Y4_N1
\U0|Add21~27\ : maxii_lcell
-- Equation(s):
-- \U0|Add21~27_cout0\ = CARRY(\U0|LsignalNow\(25) $ ((\Lsignalin~combout\(25))))
-- \U0|Add21~27COUT1_31\ = CARRY(\U0|LsignalNow\(25) $ ((\Lsignalin~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(25),
	datab => \Lsignalin~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add21~25\,
	cout0 => \U0|Add21~27_cout0\,
	cout1 => \U0|Add21~27COUT1_31\);

-- Location: LC_X7_Y4_N2
\U0|Add21~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add21~10_combout\ = \U0|Ldiff~27\ $ (\U0|Add20~10_combout\ $ ((\U0|Add21~27_cout0\)))
-- \U0|Add21~12\ = CARRY((\U0|Ldiff~27\ & (!\U0|Add20~10_combout\ & !\U0|Add21~27_cout0\)) # (!\U0|Ldiff~27\ & ((!\U0|Add21~27_cout0\) # (!\U0|Add20~10_combout\))))
-- \U0|Add21~12COUT1_32\ = CARRY((\U0|Ldiff~27\ & (!\U0|Add20~10_combout\ & !\U0|Add21~27COUT1_31\)) # (!\U0|Ldiff~27\ & ((!\U0|Add21~27COUT1_31\) # (!\U0|Add20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~27\,
	datab => \U0|Add20~10_combout\,
	cin0 => \U0|Add21~27_cout0\,
	cin1 => \U0|Add21~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add21~10_combout\,
	cout0 => \U0|Add21~12\,
	cout1 => \U0|Add21~12COUT1_32\);

-- Location: LC_X7_Y4_N3
\U0|Add21~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add21~15_combout\ = \U0|Add20~15_combout\ $ ((((!\U0|Add21~12\))))
-- \U0|Add21~17\ = CARRY((\U0|Add20~15_combout\ & ((!\U0|Add21~12\))))
-- \U0|Add21~17COUT1_33\ = CARRY((\U0|Add20~15_combout\ & ((!\U0|Add21~12COUT1_32\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add20~15_combout\,
	cin0 => \U0|Add21~12\,
	cin1 => \U0|Add21~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add21~15_combout\,
	cout0 => \U0|Add21~17\,
	cout1 => \U0|Add21~17COUT1_33\);

-- Location: LC_X7_Y4_N4
\U0|Add21~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add21~5_combout\ = (\U0|Add20~5_combout\ $ ((\U0|Add21~17\)))
-- \U0|Add21~7\ = CARRY(((!\U0|Add21~17COUT1_33\) # (!\U0|Add20~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add20~5_combout\,
	cin0 => \U0|Add21~17\,
	cin1 => \U0|Add21~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add21~5_combout\,
	cout => \U0|Add21~7\);

-- Location: LC_X7_Y4_N5
\U0|Add21~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add21~0_combout\ = (\U0|Add20~0_combout\ $ ((!\U0|Add21~7\)))
-- \U0|Add21~2\ = CARRY(((\U0|Add20~0_combout\ & !\U0|Add21~7\)))
-- \U0|Add21~2COUT1_34\ = CARRY(((\U0|Add20~0_combout\ & !\U0|Add21~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add20~0_combout\,
	cin => \U0|Add21~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add21~0_combout\,
	cout0 => \U0|Add21~2\,
	cout1 => \U0|Add21~2COUT1_34\);

-- Location: LC_X7_Y4_N6
\U0|Add21~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add21~20_combout\ = \U0|Add20~20_combout\ $ (((((!\U0|Add21~7\ & \U0|Add21~2\) # (\U0|Add21~7\ & \U0|Add21~2COUT1_34\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add20~20_combout\,
	cin => \U0|Add21~7\,
	cin0 => \U0|Add21~2\,
	cin1 => \U0|Add21~2COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add21~20_combout\);

-- Location: LC_X9_Y5_N6
\U0|LsignalNow[26]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~26\ = ((B1_LsignalNow[26] $ (\Lsignalin~combout\(26))))
-- \U0|LsignalNow\(26) = DFFEAS(\U0|Ldiff~26\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(26), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(26),
	datad => \Lsignalin~combout\(26),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~26\,
	regout => \U0|LsignalNow\(26));

-- Location: LC_X6_Y4_N2
\U0|Add22~27\ : maxii_lcell
-- Equation(s):
-- \U0|Add22~27_cout0\ = CARRY(\Lsignalin~combout\(27) $ ((\U0|LsignalNow\(27))))
-- \U0|Add22~27COUT1_31\ = CARRY(\Lsignalin~combout\(27) $ ((\U0|LsignalNow\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(27),
	datab => \U0|LsignalNow\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add22~25\,
	cout0 => \U0|Add22~27_cout0\,
	cout1 => \U0|Add22~27COUT1_31\);

-- Location: LC_X6_Y4_N3
\U0|Add22~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add22~10_combout\ = \U0|Ldiff~26\ $ (\U0|Add21~10_combout\ $ ((\U0|Add22~27_cout0\)))
-- \U0|Add22~12\ = CARRY((\U0|Ldiff~26\ & (!\U0|Add21~10_combout\ & !\U0|Add22~27_cout0\)) # (!\U0|Ldiff~26\ & ((!\U0|Add22~27_cout0\) # (!\U0|Add21~10_combout\))))
-- \U0|Add22~12COUT1_32\ = CARRY((\U0|Ldiff~26\ & (!\U0|Add21~10_combout\ & !\U0|Add22~27COUT1_31\)) # (!\U0|Ldiff~26\ & ((!\U0|Add22~27COUT1_31\) # (!\U0|Add21~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~26\,
	datab => \U0|Add21~10_combout\,
	cin0 => \U0|Add22~27_cout0\,
	cin1 => \U0|Add22~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add22~10_combout\,
	cout0 => \U0|Add22~12\,
	cout1 => \U0|Add22~12COUT1_32\);

-- Location: LC_X6_Y4_N4
\U0|Add22~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add22~15_combout\ = \U0|Add21~15_combout\ $ ((((!\U0|Add22~12\))))
-- \U0|Add22~17\ = CARRY((\U0|Add21~15_combout\ & ((!\U0|Add22~12COUT1_32\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add21~15_combout\,
	cin0 => \U0|Add22~12\,
	cin1 => \U0|Add22~12COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add22~15_combout\,
	cout => \U0|Add22~17\);

-- Location: LC_X6_Y4_N5
\U0|Add22~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add22~5_combout\ = (\U0|Add21~5_combout\ $ ((\U0|Add22~17\)))
-- \U0|Add22~7\ = CARRY(((!\U0|Add22~17\) # (!\U0|Add21~5_combout\)))
-- \U0|Add22~7COUT1_33\ = CARRY(((!\U0|Add22~17\) # (!\U0|Add21~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add21~5_combout\,
	cin => \U0|Add22~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add22~5_combout\,
	cout0 => \U0|Add22~7\,
	cout1 => \U0|Add22~7COUT1_33\);

-- Location: LC_X6_Y4_N6
\U0|Add22~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add22~0_combout\ = (\U0|Add21~0_combout\ $ ((!(!\U0|Add22~17\ & \U0|Add22~7\) # (\U0|Add22~17\ & \U0|Add22~7COUT1_33\))))
-- \U0|Add22~2\ = CARRY(((\U0|Add21~0_combout\ & !\U0|Add22~7\)))
-- \U0|Add22~2COUT1_34\ = CARRY(((\U0|Add21~0_combout\ & !\U0|Add22~7COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add21~0_combout\,
	cin => \U0|Add22~17\,
	cin0 => \U0|Add22~7\,
	cin1 => \U0|Add22~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add22~0_combout\,
	cout0 => \U0|Add22~2\,
	cout1 => \U0|Add22~2COUT1_34\);

-- Location: LC_X6_Y4_N7
\U0|Add22~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add22~20_combout\ = (((!\U0|Add22~17\ & \U0|Add22~2\) # (\U0|Add22~17\ & \U0|Add22~2COUT1_34\) $ (\U0|Add21~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add21~20_combout\,
	cin => \U0|Add22~17\,
	cin0 => \U0|Add22~2\,
	cin1 => \U0|Add22~2COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add22~20_combout\);

-- Location: LC_X6_Y5_N0
\U0|LsignalNow[28]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~1\ = ((B1_LsignalNow[28] $ (\Lsignalin~combout\(28))))
-- \U0|LsignalNow\(28) = DFFEAS(\U0|Ldiff~1\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(28), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(28),
	datad => \Lsignalin~combout\(28),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~1\,
	regout => \U0|LsignalNow\(28));

-- Location: LC_X5_Y4_N1
\U0|Add23~32\ : maxii_lcell
-- Equation(s):
-- \U0|Add23~32_cout0\ = CARRY(\U0|LsignalNow\(29) $ ((\Lsignalin~combout\(29))))
-- \U0|Add23~32COUT1_36\ = CARRY(\U0|LsignalNow\(29) $ ((\Lsignalin~combout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(29),
	datab => \Lsignalin~combout\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add23~30\,
	cout0 => \U0|Add23~32_cout0\,
	cout1 => \U0|Add23~32COUT1_36\);

-- Location: LC_X5_Y4_N2
\U0|Add23~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add23~10_combout\ = \U0|Add22~10_combout\ $ (\U0|Ldiff~1\ $ ((\U0|Add23~32_cout0\)))
-- \U0|Add23~12\ = CARRY((\U0|Add22~10_combout\ & (!\U0|Ldiff~1\ & !\U0|Add23~32_cout0\)) # (!\U0|Add22~10_combout\ & ((!\U0|Add23~32_cout0\) # (!\U0|Ldiff~1\))))
-- \U0|Add23~12COUT1_37\ = CARRY((\U0|Add22~10_combout\ & (!\U0|Ldiff~1\ & !\U0|Add23~32COUT1_36\)) # (!\U0|Add22~10_combout\ & ((!\U0|Add23~32COUT1_36\) # (!\U0|Ldiff~1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add22~10_combout\,
	datab => \U0|Ldiff~1\,
	cin0 => \U0|Add23~32_cout0\,
	cin1 => \U0|Add23~32COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add23~10_combout\,
	cout0 => \U0|Add23~12\,
	cout1 => \U0|Add23~12COUT1_37\);

-- Location: LC_X5_Y4_N3
\U0|Add23~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add23~15_combout\ = (\U0|Add22~15_combout\ $ ((!\U0|Add23~12\)))
-- \U0|Add23~17\ = CARRY(((\U0|Add22~15_combout\ & !\U0|Add23~12\)))
-- \U0|Add23~17COUT1_38\ = CARRY(((\U0|Add22~15_combout\ & !\U0|Add23~12COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add22~15_combout\,
	cin0 => \U0|Add23~12\,
	cin1 => \U0|Add23~12COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add23~15_combout\,
	cout0 => \U0|Add23~17\,
	cout1 => \U0|Add23~17COUT1_38\);

-- Location: LC_X5_Y4_N4
\U0|Add23~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add23~5_combout\ = (\U0|Add22~5_combout\ $ ((\U0|Add23~17\)))
-- \U0|Add23~7\ = CARRY(((!\U0|Add23~17COUT1_38\) # (!\U0|Add22~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add22~5_combout\,
	cin0 => \U0|Add23~17\,
	cin1 => \U0|Add23~17COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add23~5_combout\,
	cout => \U0|Add23~7\);

-- Location: LC_X5_Y4_N5
\U0|Add23~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add23~0_combout\ = \U0|Add22~0_combout\ $ ((((!\U0|Add23~7\))))
-- \U0|Add23~2\ = CARRY((\U0|Add22~0_combout\ & ((!\U0|Add23~7\))))
-- \U0|Add23~2COUT1_39\ = CARRY((\U0|Add22~0_combout\ & ((!\U0|Add23~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add22~0_combout\,
	cin => \U0|Add23~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add23~0_combout\,
	cout0 => \U0|Add23~2\,
	cout1 => \U0|Add23~2COUT1_39\);

-- Location: LC_X5_Y4_N6
\U0|Add23~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add23~20_combout\ = \U0|Add22~20_combout\ $ (((((!\U0|Add23~7\ & \U0|Add23~2\) # (\U0|Add23~7\ & \U0|Add23~2COUT1_39\)))))
-- \U0|Add23~22\ = CARRY(((!\U0|Add23~2\)) # (!\U0|Add22~20_combout\))
-- \U0|Add23~22COUT1_40\ = CARRY(((!\U0|Add23~2COUT1_39\)) # (!\U0|Add22~20_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add22~20_combout\,
	cin => \U0|Add23~7\,
	cin0 => \U0|Add23~2\,
	cin1 => \U0|Add23~2COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add23~20_combout\,
	cout0 => \U0|Add23~22\,
	cout1 => \U0|Add23~22COUT1_40\);

-- Location: LC_X6_Y5_N7
\U0|LsignalNow[30]\ : maxii_lcell
-- Equation(s):
-- \U0|Ldiff~0\ = ((B1_LsignalNow[30] $ (\Lsignalin~combout\(30))))
-- \U0|LsignalNow\(30) = DFFEAS(\U0|Ldiff~0\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(30), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datac => \Lsignalin~combout\(30),
	datad => \Lsignalin~combout\(30),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Ldiff~0\,
	regout => \U0|LsignalNow\(30));

-- Location: LC_X4_Y5_N1
\U0|Add24~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add24~10_combout\ = \U0|Ldiff~0\ $ ((\U0|Add23~10_combout\))
-- \U0|Add24~12\ = CARRY((\U0|Ldiff~0\ & (\U0|Add23~10_combout\)))
-- \U0|Add24~12COUT1_31\ = CARRY((\U0|Ldiff~0\ & (\U0|Add23~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ldiff~0\,
	datab => \U0|Add23~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add24~10_combout\,
	cout0 => \U0|Add24~12\,
	cout1 => \U0|Add24~12COUT1_31\);

-- Location: LC_X4_Y5_N2
\U0|Add24~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add24~15_combout\ = \U0|Add23~15_combout\ $ ((((\U0|Add24~12\))))
-- \U0|Add24~17\ = CARRY(((!\U0|Add24~12\)) # (!\U0|Add23~15_combout\))
-- \U0|Add24~17COUT1_32\ = CARRY(((!\U0|Add24~12COUT1_31\)) # (!\U0|Add23~15_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add23~15_combout\,
	cin0 => \U0|Add24~12\,
	cin1 => \U0|Add24~12COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add24~15_combout\,
	cout0 => \U0|Add24~17\,
	cout1 => \U0|Add24~17COUT1_32\);

-- Location: LC_X4_Y5_N3
\U0|Add24~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add24~5_combout\ = (\U0|Add23~5_combout\ $ ((!\U0|Add24~17\)))
-- \U0|Add24~7\ = CARRY(((\U0|Add23~5_combout\ & !\U0|Add24~17\)))
-- \U0|Add24~7COUT1\ = CARRY(((\U0|Add23~5_combout\ & !\U0|Add24~17COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add23~5_combout\,
	cin0 => \U0|Add24~17\,
	cin1 => \U0|Add24~17COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add24~5_combout\,
	cout0 => \U0|Add24~7\,
	cout1 => \U0|Add24~7COUT1\);

-- Location: LC_X4_Y5_N4
\U0|Add24~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add24~0_combout\ = (\U0|Add23~0_combout\ $ ((\U0|Add24~7\)))
-- \U0|Add24~2\ = 

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add23~0_combout\,
	cin0 => \U0|Add24~7\,
	cin1 => \U0|Add24~7COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add24~0_combout\,
	cout => \U0|Add24~2\);

-- Location: LC_X4_Y5_N5
\U0|Add24~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add24~20_combout\ = (\U0|Add23~20_combout\ $ ((!(!\U0|Add24~2\ & GND) # (\U0|Add24~2\ & VCC))))
-- \U0|Add24~22\ = CARRY(((\U0|Add23~20_combout\ & !\U0|Add24~2\)))
-- \U0|Add24~22COUT1_33\ = CARRY(((\U0|Add23~20_combout\ & !\U0|Add24~2\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add23~20_combout\,
	cin => \U0|Add24~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add24~20_combout\,
	cout0 => \U0|Add24~22\,
	cout1 => \U0|Add24~22COUT1_33\);

-- Location: LC_X3_Y5_N1
\U0|Add58~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add58~10_combout\ = \U0|Add24~10_combout\ $ ((\U0|Add42~10_combout\))
-- \U0|Add58~12\ = CARRY((\U0|Add24~10_combout\ & (\U0|Add42~10_combout\)))
-- \U0|Add58~12COUT1_36\ = CARRY((\U0|Add24~10_combout\ & (\U0|Add42~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add24~10_combout\,
	datab => \U0|Add42~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add58~10_combout\,
	cout0 => \U0|Add58~12\,
	cout1 => \U0|Add58~12COUT1_36\);

-- Location: LC_X3_Y5_N2
\U0|Add58~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add58~15_combout\ = \U0|Add42~15_combout\ $ (\U0|Add24~15_combout\ $ ((\U0|Add58~12\)))
-- \U0|Add58~17\ = CARRY((\U0|Add42~15_combout\ & (!\U0|Add24~15_combout\ & !\U0|Add58~12\)) # (!\U0|Add42~15_combout\ & ((!\U0|Add58~12\) # (!\U0|Add24~15_combout\))))
-- \U0|Add58~17COUT1_37\ = CARRY((\U0|Add42~15_combout\ & (!\U0|Add24~15_combout\ & !\U0|Add58~12COUT1_36\)) # (!\U0|Add42~15_combout\ & ((!\U0|Add58~12COUT1_36\) # (!\U0|Add24~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add42~15_combout\,
	datab => \U0|Add24~15_combout\,
	cin0 => \U0|Add58~12\,
	cin1 => \U0|Add58~12COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add58~15_combout\,
	cout0 => \U0|Add58~17\,
	cout1 => \U0|Add58~17COUT1_37\);

-- Location: LC_X3_Y5_N3
\U0|Add58~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add58~5_combout\ = \U0|Add24~5_combout\ $ (\U0|Add42~5_combout\ $ ((!\U0|Add58~17\)))
-- \U0|Add58~7\ = CARRY((\U0|Add24~5_combout\ & ((\U0|Add42~5_combout\) # (!\U0|Add58~17\))) # (!\U0|Add24~5_combout\ & (\U0|Add42~5_combout\ & !\U0|Add58~17\)))
-- \U0|Add58~7COUT1_38\ = CARRY((\U0|Add24~5_combout\ & ((\U0|Add42~5_combout\) # (!\U0|Add58~17COUT1_37\))) # (!\U0|Add24~5_combout\ & (\U0|Add42~5_combout\ & !\U0|Add58~17COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add24~5_combout\,
	datab => \U0|Add42~5_combout\,
	cin0 => \U0|Add58~17\,
	cin1 => \U0|Add58~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add58~5_combout\,
	cout0 => \U0|Add58~7\,
	cout1 => \U0|Add58~7COUT1_38\);

-- Location: LC_X3_Y5_N4
\U0|Add58~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add58~0_combout\ = \U0|Add42~0_combout\ $ (\U0|Add24~0_combout\ $ ((\U0|Add58~7\)))
-- \U0|Add58~2\ = CARRY((\U0|Add42~0_combout\ & (!\U0|Add24~0_combout\ & !\U0|Add58~7COUT1_38\)) # (!\U0|Add42~0_combout\ & ((!\U0|Add58~7COUT1_38\) # (!\U0|Add24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add42~0_combout\,
	datab => \U0|Add24~0_combout\,
	cin0 => \U0|Add58~7\,
	cin1 => \U0|Add58~7COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add58~0_combout\,
	cout => \U0|Add58~2\);

-- Location: LC_X3_Y5_N5
\U0|Add58~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add58~20_combout\ = \U0|Add42~20_combout\ $ (\U0|Add24~20_combout\ $ ((!\U0|Add58~2\)))
-- \U0|Add58~22\ = CARRY((\U0|Add42~20_combout\ & ((\U0|Add24~20_combout\) # (!\U0|Add58~2\))) # (!\U0|Add42~20_combout\ & (\U0|Add24~20_combout\ & !\U0|Add58~2\)))
-- \U0|Add58~22COUT1_39\ = CARRY((\U0|Add42~20_combout\ & ((\U0|Add24~20_combout\) # (!\U0|Add58~2\))) # (!\U0|Add42~20_combout\ & (\U0|Add24~20_combout\ & !\U0|Add58~2\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add42~20_combout\,
	datab => \U0|Add24~20_combout\,
	cin => \U0|Add58~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add58~20_combout\,
	cout0 => \U0|Add58~22\,
	cout1 => \U0|Add58~22COUT1_39\);

-- Location: LC_X4_Y5_N9
\U0|LsignalNow[61]\ : maxii_lcell
-- Equation(s):
-- \U0|Add59~1\ = (\Lsignalin~combout\(61) & (!B1_LsignalNow[61] & (\Lsignalin~combout\(60) $ (\U0|LsignalNow\(60))))) # (!\Lsignalin~combout\(61) & (B1_LsignalNow[61] & (\Lsignalin~combout\(60) $ (\U0|LsignalNow\(60)))))
-- \U0|LsignalNow\(61) = DFFEAS(\U0|Add59~1\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(61), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(61),
	datab => \Lsignalin~combout\(60),
	datac => \Lsignalin~combout\(61),
	datad => \U0|LsignalNow\(60),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add59~1\,
	regout => \U0|LsignalNow\(61));

-- Location: LC_X4_Y5_N8
\U0|LsignalNow[60]\ : maxii_lcell
-- Equation(s):
-- \U0|Add59~0\ = \Lsignalin~combout\(61) $ (\Lsignalin~combout\(60) $ (B1_LsignalNow[60] $ (\U0|LsignalNow\(61))))
-- \U0|LsignalNow\(60) = DFFEAS(\U0|Add59~0\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(60), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(61),
	datab => \Lsignalin~combout\(60),
	datac => \Lsignalin~combout\(60),
	datad => \U0|LsignalNow\(61),
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add59~0\,
	regout => \U0|LsignalNow\(60));

-- Location: LC_X6_Y7_N7
\U0|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \U0|Mux1~0_combout\ = (\address~combout\(0) & (((\address~combout\(1))))) # (!\address~combout\(0) & ((\address~combout\(1) & (\U0|LsignalNow\(54))) # (!\address~combout\(1) & ((\U0|LsignalNow\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \U0|LsignalNow\(54),
	datac => \U0|LsignalNow\(38),
	datad => \address~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux1~0_combout\);

-- Location: LC_X3_Y5_N8
\U0|LsignalNow[62]\ : maxii_lcell
-- Equation(s):
-- \U0|Mux1~1\ = (\address~combout\(0) & ((\U0|Mux1~0_combout\ & ((B1_LsignalNow[62]))) # (!\U0|Mux1~0_combout\ & (\U0|LsignalNow\(46))))) # (!\address~combout\(0) & (((\U0|Mux1~0_combout\))))
-- \U0|LsignalNow\(62) = DFFEAS(\U0|Mux1~1\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(62), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \U0|LsignalNow\(46),
	datab => \address~combout\(0),
	datac => \Lsignalin~combout\(62),
	datad => \U0|Mux1~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux1~1\,
	regout => \U0|LsignalNow\(62));

-- Location: LC_X2_Y5_N0
\U0|Add60~37\ : maxii_lcell
-- Equation(s):
-- \U0|Add60~37_cout0\ = CARRY(\Lsignalin~combout\(62) $ ((\U0|LsignalNow\(62))))
-- \U0|Add60~37COUT1_41\ = CARRY(\Lsignalin~combout\(62) $ ((\U0|LsignalNow\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lsignalin~combout\(62),
	datab => \U0|LsignalNow\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add60~35\,
	cout0 => \U0|Add60~37_cout0\,
	cout1 => \U0|Add60~37COUT1_41\);

-- Location: LC_X2_Y5_N1
\U0|Add60~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add60~10_combout\ = \U0|Add58~10_combout\ $ (\U0|Add59~0\ $ ((\U0|Add60~37_cout0\)))
-- \U0|Add60~12\ = CARRY((\U0|Add58~10_combout\ & (!\U0|Add59~0\ & !\U0|Add60~37_cout0\)) # (!\U0|Add58~10_combout\ & ((!\U0|Add60~37_cout0\) # (!\U0|Add59~0\))))
-- \U0|Add60~12COUT1_42\ = CARRY((\U0|Add58~10_combout\ & (!\U0|Add59~0\ & !\U0|Add60~37COUT1_41\)) # (!\U0|Add58~10_combout\ & ((!\U0|Add60~37COUT1_41\) # (!\U0|Add59~0\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add58~10_combout\,
	datab => \U0|Add59~0\,
	cin0 => \U0|Add60~37_cout0\,
	cin1 => \U0|Add60~37COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add60~10_combout\,
	cout0 => \U0|Add60~12\,
	cout1 => \U0|Add60~12COUT1_42\);

-- Location: LC_X2_Y5_N2
\U0|Add60~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add60~15_combout\ = \U0|Add59~1\ $ (\U0|Add58~15_combout\ $ ((!\U0|Add60~12\)))
-- \U0|Add60~17\ = CARRY((\U0|Add59~1\ & ((\U0|Add58~15_combout\) # (!\U0|Add60~12\))) # (!\U0|Add59~1\ & (\U0|Add58~15_combout\ & !\U0|Add60~12\)))
-- \U0|Add60~17COUT1_43\ = CARRY((\U0|Add59~1\ & ((\U0|Add58~15_combout\) # (!\U0|Add60~12COUT1_42\))) # (!\U0|Add59~1\ & (\U0|Add58~15_combout\ & !\U0|Add60~12COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add59~1\,
	datab => \U0|Add58~15_combout\,
	cin0 => \U0|Add60~12\,
	cin1 => \U0|Add60~12COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add60~15_combout\,
	cout0 => \U0|Add60~17\,
	cout1 => \U0|Add60~17COUT1_43\);

-- Location: LC_X2_Y5_N3
\U0|Add60~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add60~5_combout\ = \U0|Add58~5_combout\ $ ((((\U0|Add60~17\))))
-- \U0|Add60~7\ = CARRY(((!\U0|Add60~17\)) # (!\U0|Add58~5_combout\))
-- \U0|Add60~7COUT1_44\ = CARRY(((!\U0|Add60~17COUT1_43\)) # (!\U0|Add58~5_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add58~5_combout\,
	cin0 => \U0|Add60~17\,
	cin1 => \U0|Add60~17COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add60~5_combout\,
	cout0 => \U0|Add60~7\,
	cout1 => \U0|Add60~7COUT1_44\);

-- Location: LC_X2_Y5_N4
\U0|Add60~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add60~0_combout\ = (\U0|Add58~0_combout\ $ ((!\U0|Add60~7\)))
-- \U0|Add60~2\ = CARRY(((\U0|Add58~0_combout\ & !\U0|Add60~7COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add58~0_combout\,
	cin0 => \U0|Add60~7\,
	cin1 => \U0|Add60~7COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add60~0_combout\,
	cout => \U0|Add60~2\);

-- Location: LC_X2_Y5_N5
\U0|Add60~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add60~20_combout\ = (\U0|Add58~20_combout\ $ ((\U0|Add60~2\)))
-- \U0|Add60~22\ = CARRY(((!\U0|Add60~2\) # (!\U0|Add58~20_combout\)))
-- \U0|Add60~22COUT1_45\ = CARRY(((!\U0|Add60~2\) # (!\U0|Add58~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add58~20_combout\,
	cin => \U0|Add60~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add60~20_combout\,
	cout0 => \U0|Add60~22\,
	cout1 => \U0|Add60~22COUT1_45\);

-- Location: LC_X2_Y5_N9
\U0|LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \U0|LessThan0~2_combout\ = (\U0|Add60~0_combout\) # ((\U0|Add60~5_combout\ & ((\U0|Add60~10_combout\) # (\U0|Add60~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add60~5_combout\,
	datab => \U0|Add60~10_combout\,
	datac => \U0|Add60~0_combout\,
	datad => \U0|Add60~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~2_combout\);

-- Location: LC_X5_Y4_N7
\U0|Add23~25\ : maxii_lcell
-- Equation(s):
-- \U0|Add23~25_combout\ = (((!(!\U0|Add23~7\ & \U0|Add23~22\) # (\U0|Add23~7\ & \U0|Add23~22COUT1_40\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add23~7\,
	cin0 => \U0|Add23~22\,
	cin1 => \U0|Add23~22COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add23~25_combout\);

-- Location: LC_X4_Y5_N6
\U0|Add24~25\ : maxii_lcell
-- Equation(s):
-- \U0|Add24~25_combout\ = (((!\U0|Add24~2\ & \U0|Add24~22\) # (\U0|Add24~2\ & \U0|Add24~22COUT1_33\) $ (\U0|Add23~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add23~25_combout\,
	cin => \U0|Add24~2\,
	cin0 => \U0|Add24~22\,
	cin1 => \U0|Add24~22COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add24~25_combout\);

-- Location: LC_X9_Y6_N6
\U0|Add42~25\ : maxii_lcell
-- Equation(s):
-- \U0|Add42~25_combout\ = ((((!\U0|Add42~2\ & \U0|Add42~22\) # (\U0|Add42~2\ & \U0|Add42~22COUT1_34\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add42~2\,
	cin0 => \U0|Add42~22\,
	cin1 => \U0|Add42~22COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add42~25_combout\);

-- Location: LC_X3_Y5_N6
\U0|Add58~25\ : maxii_lcell
-- Equation(s):
-- \U0|Add58~25_combout\ = \U0|Add24~25_combout\ $ (\U0|Add42~25_combout\ $ (((!\U0|Add58~2\ & \U0|Add58~22\) # (\U0|Add58~2\ & \U0|Add58~22COUT1_39\))))
-- \U0|Add58~27\ = CARRY((\U0|Add24~25_combout\ & (!\U0|Add42~25_combout\ & !\U0|Add58~22\)) # (!\U0|Add24~25_combout\ & ((!\U0|Add58~22\) # (!\U0|Add42~25_combout\))))
-- \U0|Add58~27COUT1_40\ = CARRY((\U0|Add24~25_combout\ & (!\U0|Add42~25_combout\ & !\U0|Add58~22COUT1_39\)) # (!\U0|Add24~25_combout\ & ((!\U0|Add58~22COUT1_39\) # (!\U0|Add42~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add24~25_combout\,
	datab => \U0|Add42~25_combout\,
	cin => \U0|Add58~2\,
	cin0 => \U0|Add58~22\,
	cin1 => \U0|Add58~22COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add58~25_combout\,
	cout0 => \U0|Add58~27\,
	cout1 => \U0|Add58~27COUT1_40\);

-- Location: LC_X2_Y5_N6
\U0|Add60~25\ : maxii_lcell
-- Equation(s):
-- \U0|Add60~25_combout\ = \U0|Add58~25_combout\ $ ((((!(!\U0|Add60~2\ & \U0|Add60~22\) # (\U0|Add60~2\ & \U0|Add60~22COUT1_45\)))))
-- \U0|Add60~27\ = CARRY((\U0|Add58~25_combout\ & ((!\U0|Add60~22\))))
-- \U0|Add60~27COUT1_46\ = CARRY((\U0|Add58~25_combout\ & ((!\U0|Add60~22COUT1_45\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add58~25_combout\,
	cin => \U0|Add60~2\,
	cin0 => \U0|Add60~22\,
	cin1 => \U0|Add60~22COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add60~25_combout\,
	cout0 => \U0|Add60~27\,
	cout1 => \U0|Add60~27COUT1_46\);

-- Location: LC_X3_Y5_N7
\U0|Add58~30\ : maxii_lcell
-- Equation(s):
-- \U0|Add58~30_combout\ = (((!(!\U0|Add58~2\ & \U0|Add58~27\) # (\U0|Add58~2\ & \U0|Add58~27COUT1_40\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add58~2\,
	cin0 => \U0|Add58~27\,
	cin1 => \U0|Add58~27COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add58~30_combout\);

-- Location: LC_X2_Y5_N7
\U0|Add60~30\ : maxii_lcell
-- Equation(s):
-- \U0|Add60~30_combout\ = (((!\U0|Add60~2\ & \U0|Add60~27\) # (\U0|Add60~2\ & \U0|Add60~27COUT1_46\) $ (\U0|Add58~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add58~30_combout\,
	cin => \U0|Add60~2\,
	cin0 => \U0|Add60~27\,
	cin1 => \U0|Add60~27COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add60~30_combout\);

-- Location: LC_X2_Y5_N8
\U0|LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \U0|LessThan0~3_combout\ = (\U0|Add60~20_combout\) # ((\U0|LessThan0~2_combout\) # ((\U0|Add60~25_combout\) # (\U0|Add60~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add60~20_combout\,
	datab => \U0|LessThan0~2_combout\,
	datac => \U0|Add60~25_combout\,
	datad => \U0|Add60~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~3_combout\);

-- Location: LC_X1_Y5_N1
\U0|Add62~10\ : maxii_lcell
-- Equation(s):
-- \U0|Add62~10_combout\ = (!\U0|Add60~10_combout\)
-- \U0|Add62~12\ = CARRY((\U0|Add60~10_combout\))
-- \U0|Add62~12COUT1_36\ = CARRY((\U0|Add60~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add60~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add62~10_combout\,
	cout0 => \U0|Add62~12\,
	cout1 => \U0|Add62~12COUT1_36\);

-- Location: LC_X1_Y5_N2
\U0|Add62~15\ : maxii_lcell
-- Equation(s):
-- \U0|Add62~15_combout\ = (\U0|Add60~15_combout\ $ ((\U0|Add62~12\)))
-- \U0|Add62~17\ = CARRY(((!\U0|Add62~12\) # (!\U0|Add60~15_combout\)))
-- \U0|Add62~17COUT1_37\ = CARRY(((!\U0|Add62~12COUT1_36\) # (!\U0|Add60~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add60~15_combout\,
	cin0 => \U0|Add62~12\,
	cin1 => \U0|Add62~12COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add62~15_combout\,
	cout0 => \U0|Add62~17\,
	cout1 => \U0|Add62~17COUT1_37\);

-- Location: LC_X1_Y5_N3
\U0|Add62~5\ : maxii_lcell
-- Equation(s):
-- \U0|Add62~5_combout\ = \U0|Add60~5_combout\ $ ((((!\U0|Add62~17\))))
-- \U0|Add62~7\ = CARRY((\U0|Add60~5_combout\ & ((!\U0|Add62~17\))))
-- \U0|Add62~7COUT1_38\ = CARRY((\U0|Add60~5_combout\ & ((!\U0|Add62~17COUT1_37\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add60~5_combout\,
	cin0 => \U0|Add62~17\,
	cin1 => \U0|Add62~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add62~5_combout\,
	cout0 => \U0|Add62~7\,
	cout1 => \U0|Add62~7COUT1_38\);

-- Location: LC_X1_Y5_N4
\U0|Add62~0\ : maxii_lcell
-- Equation(s):
-- \U0|Add62~0_combout\ = (\U0|Add60~0_combout\ $ ((\U0|Add62~7\)))
-- \U0|Add62~2\ = CARRY(((!\U0|Add62~7COUT1_38\) # (!\U0|Add60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add60~0_combout\,
	cin0 => \U0|Add62~7\,
	cin1 => \U0|Add62~7COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add62~0_combout\,
	cout => \U0|Add62~2\);

-- Location: LC_X1_Y5_N5
\U0|Add62~20\ : maxii_lcell
-- Equation(s):
-- \U0|Add62~20_combout\ = (\U0|Add60~20_combout\ $ ((!\U0|Add62~2\)))
-- \U0|Add62~22\ = CARRY(((\U0|Add60~20_combout\ & !\U0|Add62~2\)))
-- \U0|Add62~22COUT1_39\ = CARRY(((\U0|Add60~20_combout\ & !\U0|Add62~2\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add60~20_combout\,
	cin => \U0|Add62~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add62~20_combout\,
	cout0 => \U0|Add62~22\,
	cout1 => \U0|Add62~22COUT1_39\);

-- Location: LC_X1_Y5_N9
\U0|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \U0|LessThan0~0_combout\ = (\U0|Add62~0_combout\) # ((\U0|Add62~5_combout\ & ((\U0|Add62~10_combout\) # (\U0|Add62~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add62~10_combout\,
	datab => \U0|Add62~15_combout\,
	datac => \U0|Add62~0_combout\,
	datad => \U0|Add62~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~0_combout\);

-- Location: LC_X1_Y5_N6
\U0|Add62~25\ : maxii_lcell
-- Equation(s):
-- \U0|Add62~25_combout\ = \U0|Add60~25_combout\ $ (((((!\U0|Add62~2\ & \U0|Add62~22\) # (\U0|Add62~2\ & \U0|Add62~22COUT1_39\)))))
-- \U0|Add62~27\ = CARRY(((!\U0|Add62~22\)) # (!\U0|Add60~25_combout\))
-- \U0|Add62~27COUT1_40\ = CARRY(((!\U0|Add62~22COUT1_39\)) # (!\U0|Add60~25_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add60~25_combout\,
	cin => \U0|Add62~2\,
	cin0 => \U0|Add62~22\,
	cin1 => \U0|Add62~22COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add62~25_combout\,
	cout0 => \U0|Add62~27\,
	cout1 => \U0|Add62~27COUT1_40\);

-- Location: LC_X1_Y5_N7
\U0|Add62~30\ : maxii_lcell
-- Equation(s):
-- \U0|Add62~30_combout\ = (((!\U0|Add62~2\ & \U0|Add62~27\) # (\U0|Add62~2\ & \U0|Add62~27COUT1_40\) $ (!\U0|Add60~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add60~30_combout\,
	cin => \U0|Add62~2\,
	cin0 => \U0|Add62~27\,
	cin1 => \U0|Add62~27COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Add62~30_combout\);

-- Location: LC_X1_Y5_N8
\U0|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \U0|LessThan0~1_combout\ = (\U0|Add62~20_combout\) # ((\U0|LessThan0~0_combout\) # ((\U0|Add62~25_combout\) # (\U0|Add62~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add62~20_combout\,
	datab => \U0|LessThan0~0_combout\,
	datac => \U0|Add62~25_combout\,
	datad => \U0|Add62~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~1_combout\);

-- Location: LC_X5_Y5_N3
\U0|LsignalNow[63]\ : maxii_lcell
-- Equation(s):
-- \U0|LessThan0~4\ = (\Lsignalin~combout\(63) & ((B1_LsignalNow[63] & (!\U0|LessThan0~3_combout\)) # (!B1_LsignalNow[63] & ((!\U0|LessThan0~1_combout\))))) # (!\Lsignalin~combout\(63) & ((B1_LsignalNow[63] & ((!\U0|LessThan0~1_combout\))) # 
-- (!B1_LsignalNow[63] & (!\U0|LessThan0~3_combout\))))
-- \U0|LsignalNow\(63) = DFFEAS(\U0|LessThan0~4\, GLOBAL(\clkin~combout\), VCC, , \U0|LsignalNow[62]~0_combout\, \Lsignalin~combout\(63), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "217b",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \Lsignalin~combout\(63),
	datab => \U0|LessThan0~3_combout\,
	datac => \Lsignalin~combout\(63),
	datad => \U0|LessThan0~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \U0|LsignalNow[62]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LessThan0~4\,
	regout => \U0|LsignalNow\(63));

-- Location: LC_X5_Y5_N6
\U0|enwipe\ : maxii_lcell
-- Equation(s):
-- \U0|enwipe~regout\ = DFFEAS((\U0|enwipe~regout\ & (((!\U0|Equal1~2_combout\)))) # (!\U0|enwipe~regout\ & (!\U0|WideNand0~20_combout\ & ((!\U0|LessThan0~4\)))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3035",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \U0|WideNand0~20_combout\,
	datab => \U0|Equal1~2_combout\,
	datac => \U0|enwipe~regout\,
	datad => \U0|LessThan0~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|enwipe~regout\);

-- Location: LC_X5_Y5_N4
\U0|LsignalNow[62]~0\ : maxii_lcell
-- Equation(s):
-- \U0|LsignalNow[62]~0_combout\ = (!\U0|WideNand0~20_combout\ & (((!\U0|enwipe~regout\ & !\U0|LessThan0~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideNand0~20_combout\,
	datac => \U0|enwipe~regout\,
	datad => \U0|LessThan0~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|LsignalNow[62]~0_combout\);

-- Location: LC_X4_Y7_N4
\U0|Mux7~0\ : maxii_lcell
-- Equation(s):
-- \U0|Mux7~0_combout\ = (\address~combout\(0) & (((\address~combout\(1))))) # (!\address~combout\(0) & ((\address~combout\(1) & (\U0|LsignalNow\(48))) # (!\address~combout\(1) & ((\U0|LsignalNow\(32))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(48),
	datab => \address~combout\(0),
	datac => \address~combout\(1),
	datad => \U0|LsignalNow\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux7~0_combout\);

-- Location: LC_X6_Y7_N4
\U0|Mux7~1\ : maxii_lcell
-- Equation(s):
-- \U0|Mux7~1_combout\ = (\U0|Mux7~0_combout\ & (((\U0|LsignalNow\(56)) # (!\address~combout\(0))))) # (!\U0|Mux7~0_combout\ & (\U0|LsignalNow\(40) & (\address~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux7~0_combout\,
	datab => \U0|LsignalNow\(40),
	datac => \address~combout\(0),
	datad => \U0|LsignalNow\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux7~1_combout\);

-- Location: LC_X7_Y7_N5
\U0|Mux7~2\ : maxii_lcell
-- Equation(s):
-- \U0|Mux7~2_combout\ = (\address~combout\(0) & ((\U0|LsignalNow\(8)) # ((\address~combout\(1))))) # (!\address~combout\(0) & (((\U0|LsignalNow\(0) & !\address~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(8),
	datab => \U0|LsignalNow\(0),
	datac => \address~combout\(0),
	datad => \address~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux7~2_combout\);

-- Location: LC_X7_Y7_N9
\U0|Mux7~3\ : maxii_lcell
-- Equation(s):
-- \U0|Mux7~3_combout\ = (\U0|Mux7~2_combout\ & (((\U0|LsignalNow\(24)) # (!\address~combout\(1))))) # (!\U0|Mux7~2_combout\ & (\U0|LsignalNow\(16) & ((\address~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux7~2_combout\,
	datab => \U0|LsignalNow\(16),
	datac => \U0|LsignalNow\(24),
	datad => \address~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux7~3_combout\);

-- Location: LC_X8_Y7_N9
\U0|data[7]~0\ : maxii_lcell
-- Equation(s):
-- \U0|data[7]~0_combout\ = (((\U0|enwipe~regout\ & !\U0|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|enwipe~regout\,
	datad => \U0|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|data[7]~0_combout\);

-- Location: LC_X7_Y7_N2
\U0|data[0]\ : maxii_lcell
-- Equation(s):
-- \U0|data\(0) = DFFEAS(((\address~combout\(2) & (\U0|Mux7~1_combout\)) # (!\address~combout\(2) & ((\U0|Mux7~3_combout\)))), GLOBAL(\clkin~combout\), VCC, , \U0|data[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \U0|Mux7~1_combout\,
	datac => \address~combout\(2),
	datad => \U0|Mux7~3_combout\,
	aclr => GND,
	ena => \U0|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|data\(0));

-- Location: LC_X1_Y7_N2
\U0|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \U0|Equal0~0_combout\ = (!\address~combout\(7) & (!\address~combout\(5) & ((!\address~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(7),
	datab => \address~combout\(5),
	datad => \address~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Equal0~0_combout\);

-- Location: LC_X4_Y4_N2
\U0|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \U0|Mux6~0_combout\ = (\address~combout\(0) & (((\address~combout\(1))))) # (!\address~combout\(0) & ((\address~combout\(1) & (\U0|LsignalNow\(49))) # (!\address~combout\(1) & ((\U0|LsignalNow\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(49),
	datab => \U0|LsignalNow\(33),
	datac => \address~combout\(0),
	datad => \address~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux6~0_combout\);

-- Location: LC_X4_Y4_N4
\U0|Mux6~1\ : maxii_lcell
-- Equation(s):
-- \U0|Mux6~1_combout\ = (\address~combout\(0) & ((\U0|Mux6~0_combout\ & ((\U0|LsignalNow\(57)))) # (!\U0|Mux6~0_combout\ & (\U0|LsignalNow\(41))))) # (!\address~combout\(0) & (((\U0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(41),
	datab => \U0|LsignalNow\(57),
	datac => \address~combout\(0),
	datad => \U0|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux6~1_combout\);

-- Location: LC_X7_Y7_N3
\U0|data[1]\ : maxii_lcell
-- Equation(s):
-- \U0|data\(1) = DFFEAS(((\address~combout\(2) & ((\U0|Mux6~1_combout\))) # (!\address~combout\(2) & (\U0|Mux6~3\))), GLOBAL(\clkin~combout\), VCC, , \U0|data[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \U0|Mux6~3\,
	datac => \address~combout\(2),
	datad => \U0|Mux6~1_combout\,
	aclr => GND,
	ena => \U0|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|data\(1));

-- Location: LC_X4_Y7_N8
\U0|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \U0|Mux5~0_combout\ = (\address~combout\(0) & (((\address~combout\(1))))) # (!\address~combout\(0) & ((\address~combout\(1) & ((\U0|LsignalNow\(50)))) # (!\address~combout\(1) & (\U0|LsignalNow\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(34),
	datab => \address~combout\(0),
	datac => \address~combout\(1),
	datad => \U0|LsignalNow\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux5~0_combout\);

-- Location: LC_X4_Y7_N9
\U0|Mux5~1\ : maxii_lcell
-- Equation(s):
-- \U0|Mux5~1_combout\ = (\U0|Mux5~0_combout\ & (((\U0|LsignalNow\(58))) # (!\address~combout\(0)))) # (!\U0|Mux5~0_combout\ & (\address~combout\(0) & ((\U0|LsignalNow\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux5~0_combout\,
	datab => \address~combout\(0),
	datac => \U0|LsignalNow\(58),
	datad => \U0|LsignalNow\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux5~1_combout\);

-- Location: LC_X8_Y6_N6
\U0|Mux5~2\ : maxii_lcell
-- Equation(s):
-- \U0|Mux5~2_combout\ = (\address~combout\(1) & (((\address~combout\(0))))) # (!\address~combout\(1) & ((\address~combout\(0) & (\U0|LsignalNow\(10))) # (!\address~combout\(0) & ((\U0|LsignalNow\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(10),
	datab => \address~combout\(1),
	datac => \address~combout\(0),
	datad => \U0|LsignalNow\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux5~2_combout\);

-- Location: LC_X8_Y6_N5
\U0|Mux5~3\ : maxii_lcell
-- Equation(s):
-- \U0|Mux5~3_combout\ = (\U0|Mux5~2_combout\ & (((\U0|LsignalNow\(26))) # (!\address~combout\(1)))) # (!\U0|Mux5~2_combout\ & (\address~combout\(1) & (\U0|LsignalNow\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux5~2_combout\,
	datab => \address~combout\(1),
	datac => \U0|LsignalNow\(18),
	datad => \U0|LsignalNow\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux5~3_combout\);

-- Location: LC_X8_Y7_N8
\U0|data[2]\ : maxii_lcell
-- Equation(s):
-- \U0|data\(2) = DFFEAS(((\address~combout\(2) & (\U0|Mux5~1_combout\)) # (!\address~combout\(2) & ((\U0|Mux5~3_combout\)))), GLOBAL(\clkin~combout\), VCC, , \U0|data[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \U0|Mux5~1_combout\,
	datac => \address~combout\(2),
	datad => \U0|Mux5~3_combout\,
	aclr => GND,
	ena => \U0|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|data\(2));

-- Location: LC_X8_Y6_N9
\U0|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \U0|Mux4~0_combout\ = (\address~combout\(1) & (((\address~combout\(0)) # (\U0|LsignalNow\(51))))) # (!\address~combout\(1) & (\U0|LsignalNow\(35) & (!\address~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \U0|LsignalNow\(35),
	datac => \address~combout\(0),
	datad => \U0|LsignalNow\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux4~0_combout\);

-- Location: LC_X8_Y6_N2
\U0|Mux4~1\ : maxii_lcell
-- Equation(s):
-- \U0|Mux4~1_combout\ = (\address~combout\(0) & ((\U0|Mux4~0_combout\ & (\U0|LsignalNow\(59))) # (!\U0|Mux4~0_combout\ & ((\U0|LsignalNow\(43)))))) # (!\address~combout\(0) & (((\U0|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(59),
	datab => \U0|LsignalNow\(43),
	datac => \address~combout\(0),
	datad => \U0|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux4~1_combout\);

-- Location: LC_X8_Y7_N4
\U0|data[3]\ : maxii_lcell
-- Equation(s):
-- \U0|data\(3) = DFFEAS(((\address~combout\(2) & ((\U0|Mux4~1_combout\))) # (!\address~combout\(2) & (\U0|Mux4~3\))), GLOBAL(\clkin~combout\), VCC, , \U0|data[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \U0|Mux4~3\,
	datac => \address~combout\(2),
	datad => \U0|Mux4~1_combout\,
	aclr => GND,
	ena => \U0|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|data\(3));

-- Location: LC_X7_Y7_N8
\U0|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \U0|Mux3~0_combout\ = (\address~combout\(1) & (((\address~combout\(0)) # (\U0|LsignalNow\(52))))) # (!\address~combout\(1) & (\U0|LsignalNow\(36) & (!\address~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \U0|LsignalNow\(36),
	datac => \address~combout\(0),
	datad => \U0|LsignalNow\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux3~0_combout\);

-- Location: LC_X7_Y7_N0
\U0|Mux3~1\ : maxii_lcell
-- Equation(s):
-- \U0|Mux3~1_combout\ = (\address~combout\(0) & ((\U0|Mux3~0_combout\ & (\U0|LsignalNow\(60))) # (!\U0|Mux3~0_combout\ & ((\U0|LsignalNow\(44)))))) # (!\address~combout\(0) & (((\U0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \U0|LsignalNow\(60),
	datac => \U0|LsignalNow\(44),
	datad => \U0|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux3~1_combout\);

-- Location: LC_X8_Y6_N7
\U0|Mux3~2\ : maxii_lcell
-- Equation(s):
-- \U0|Mux3~2_combout\ = (\address~combout\(0) & ((\address~combout\(1)) # ((\U0|LsignalNow\(12))))) # (!\address~combout\(0) & (!\address~combout\(1) & (\U0|LsignalNow\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \address~combout\(1),
	datac => \U0|LsignalNow\(4),
	datad => \U0|LsignalNow\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux3~2_combout\);

-- Location: LC_X8_Y6_N8
\U0|Mux3~3\ : maxii_lcell
-- Equation(s):
-- \U0|Mux3~3_combout\ = (\address~combout\(1) & ((\U0|Mux3~2_combout\ & (\U0|LsignalNow\(28))) # (!\U0|Mux3~2_combout\ & ((\U0|LsignalNow\(20)))))) # (!\address~combout\(1) & (((\U0|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(28),
	datab => \U0|LsignalNow\(20),
	datac => \address~combout\(1),
	datad => \U0|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux3~3_combout\);

-- Location: LC_X7_Y7_N6
\U0|data[4]\ : maxii_lcell
-- Equation(s):
-- \U0|data\(4) = DFFEAS(((\address~combout\(2) & (\U0|Mux3~1_combout\)) # (!\address~combout\(2) & ((\U0|Mux3~3_combout\)))), GLOBAL(\clkin~combout\), VCC, , \U0|data[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \U0|Mux3~1_combout\,
	datac => \address~combout\(2),
	datad => \U0|Mux3~3_combout\,
	aclr => GND,
	ena => \U0|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|data\(4));

-- Location: LC_X8_Y6_N0
\U0|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \U0|Mux2~0_combout\ = (\address~combout\(1) & ((\U0|LsignalNow\(53)) # ((\address~combout\(0))))) # (!\address~combout\(1) & (((!\address~combout\(0) & \U0|LsignalNow\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(53),
	datab => \address~combout\(1),
	datac => \address~combout\(0),
	datad => \U0|LsignalNow\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux2~0_combout\);

-- Location: LC_X8_Y6_N1
\U0|Mux2~1\ : maxii_lcell
-- Equation(s):
-- \U0|Mux2~1_combout\ = (\address~combout\(0) & ((\U0|Mux2~0_combout\ & (\U0|LsignalNow\(61))) # (!\U0|Mux2~0_combout\ & ((\U0|LsignalNow\(45)))))) # (!\address~combout\(0) & (((\U0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \U0|LsignalNow\(61),
	datac => \U0|Mux2~0_combout\,
	datad => \U0|LsignalNow\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux2~1_combout\);

-- Location: LC_X8_Y7_N2
\U0|data[5]\ : maxii_lcell
-- Equation(s):
-- \U0|data\(5) = DFFEAS(((\address~combout\(2) & ((\U0|Mux2~1_combout\))) # (!\address~combout\(2) & (\U0|Mux2~3\))), GLOBAL(\clkin~combout\), VCC, , \U0|data[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \U0|Mux2~3\,
	datac => \address~combout\(2),
	datad => \U0|Mux2~1_combout\,
	aclr => GND,
	ena => \U0|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|data\(5));

-- Location: LC_X7_Y6_N7
\U0|Mux1~2\ : maxii_lcell
-- Equation(s):
-- \U0|Mux1~2_combout\ = (\address~combout\(0) & (((\U0|LsignalNow\(14)) # (\address~combout\(1))))) # (!\address~combout\(0) & (\U0|LsignalNow\(6) & ((!\address~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(6),
	datab => \U0|LsignalNow\(14),
	datac => \address~combout\(0),
	datad => \address~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux1~2_combout\);

-- Location: LC_X7_Y5_N7
\U0|Mux1~3\ : maxii_lcell
-- Equation(s):
-- \U0|Mux1~3_combout\ = (\U0|Mux1~2_combout\ & (((\U0|LsignalNow\(30)) # (!\address~combout\(1))))) # (!\U0|Mux1~2_combout\ & (\U0|LsignalNow\(22) & ((\address~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LsignalNow\(22),
	datab => \U0|LsignalNow\(30),
	datac => \U0|Mux1~2_combout\,
	datad => \address~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux1~3_combout\);

-- Location: LC_X7_Y7_N7
\U0|data[6]\ : maxii_lcell
-- Equation(s):
-- \U0|data\(6) = DFFEAS(((\address~combout\(2) & ((\U0|Mux1~1\))) # (!\address~combout\(2) & (\U0|Mux1~3_combout\))), GLOBAL(\clkin~combout\), VCC, , \U0|data[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	datab => \address~combout\(2),
	datac => \U0|Mux1~3_combout\,
	datad => \U0|Mux1~1\,
	aclr => GND,
	ena => \U0|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|data\(6));

-- Location: LC_X6_Y7_N3
\U0|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \U0|Mux0~0_combout\ = (\address~combout\(1) & ((\U0|LsignalNow\(55)) # ((\address~combout\(0))))) # (!\address~combout\(1) & (((!\address~combout\(0) & \U0|LsignalNow\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(1),
	datab => \U0|LsignalNow\(55),
	datac => \address~combout\(0),
	datad => \U0|LsignalNow\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux0~0_combout\);

-- Location: LC_X6_Y7_N5
\U0|Mux0~1\ : maxii_lcell
-- Equation(s):
-- \U0|Mux0~1_combout\ = (\address~combout\(0) & ((\U0|Mux0~0_combout\ & ((\U0|LsignalNow\(63)))) # (!\U0|Mux0~0_combout\ & (\U0|LsignalNow\(47))))) # (!\address~combout\(0) & (((\U0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \address~combout\(0),
	datab => \U0|LsignalNow\(47),
	datac => \U0|LsignalNow\(63),
	datad => \U0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|Mux0~1_combout\);

-- Location: LC_X7_Y7_N1
\U0|data[7]\ : maxii_lcell
-- Equation(s):
-- \U0|data\(7) = DFFEAS(((\address~combout\(2) & ((\U0|Mux0~1_combout\))) # (!\address~combout\(2) & (\U0|Mux0~3\))), GLOBAL(\clkin~combout\), VCC, , \U0|data[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \U0|Mux0~3\,
	datac => \address~combout\(2),
	datad => \U0|Mux0~1_combout\,
	aclr => GND,
	ena => \U0|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|data\(7));

-- Location: LC_X8_Y7_N6
\U0|csreg\ : maxii_lcell
-- Equation(s):
-- \U0|csreg~regout\ = DFFEAS(((\U0|enwipe~regout\ & ((!\U0|Equal1~2_combout\))) # (!\U0|enwipe~regout\ & (\U0|csreg~regout\))), GLOBAL(\clkin~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0afa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	dataa => \U0|csreg~regout\,
	datac => \U0|enwipe~regout\,
	datad => \U0|Equal1~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|csreg~regout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dataout[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|data\(0),
	oe => \U0|Equal0~0_combout\,
	padio => ww_dataout(0));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dataout[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|data\(1),
	oe => \U0|Equal0~0_combout\,
	padio => ww_dataout(1));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dataout[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|data\(2),
	oe => \U0|Equal0~0_combout\,
	padio => ww_dataout(2));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dataout[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|data\(3),
	oe => \U0|Equal0~0_combout\,
	padio => ww_dataout(3));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dataout[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|data\(4),
	oe => \U0|Equal0~0_combout\,
	padio => ww_dataout(4));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dataout[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|data\(5),
	oe => \U0|Equal0~0_combout\,
	padio => ww_dataout(5));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dataout[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|data\(6),
	oe => \U0|Equal0~0_combout\,
	padio => ww_dataout(6));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dataout[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|data\(7),
	oe => \U0|Equal0~0_combout\,
	padio => ww_dataout(7));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|csreg~regout\,
	oe => VCC,
	padio => ww_cs);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cs_led~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|ALT_INV_csreg~regout\,
	oe => VCC,
	padio => ww_cs_led);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\enwipe_led~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|enwipe~regout\,
	oe => VCC,
	padio => ww_enwipe_led);
END structure;


