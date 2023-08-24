-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "08/24/2023 16:24:46"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	n_rst : IN std_logic;
	rxd : IN std_logic;
	txd : BUFFER std_logic
	);
END top;

-- Design Ports Information
-- txd	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rxd	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_n_rst : std_logic;
SIGNAL ww_rxd : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_encoder|Add0~0_combout\ : std_logic;
SIGNAL \u_encoder|cnt~4_combout\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \rxd~input_o\ : std_logic;
SIGNAL \u_uart|u_rx|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \u_uart|u_rx|cnt2[0]~3_combout\ : std_logic;
SIGNAL \u_uart|u_rx|cnt2[2]~1_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add1~0_combout\ : std_logic;
SIGNAL \u_uart|u_rx|cnt2[3]~4_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~0_combout\ : std_logic;
SIGNAL \u_uart|u_rx|cnt~5_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~1\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~2_combout\ : std_logic;
SIGNAL \u_uart|u_rx|cnt~4_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~3\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~4_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~5\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~6_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Selector1~3_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~7\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~8_combout\ : std_logic;
SIGNAL \u_uart|u_rx|cnt~3_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~9\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~10_combout\ : std_logic;
SIGNAL \u_uart|u_rx|cnt~2_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~11\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~12_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~13\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~14_combout\ : std_logic;
SIGNAL \u_uart|u_rx|cnt~1_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~15\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~16_combout\ : std_logic;
SIGNAL \u_uart|u_rx|cnt~0_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~17\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~18_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~19\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~20_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~21\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~22_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Selector1~1_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Selector1~2_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~23\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~24_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~25\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~26_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~27\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~28_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~29\ : std_logic;
SIGNAL \u_uart|u_rx|Add0~30_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Selector1~0_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Selector1~4_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Selector2~0_combout\ : std_logic;
SIGNAL \u_uart|u_rx|c_state.STOP~q\ : std_logic;
SIGNAL \u_uart|u_rx|Selector0~0_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Selector0~1_combout\ : std_logic;
SIGNAL \u_uart|u_rx|c_state.IDLE~q\ : std_logic;
SIGNAL \u_uart|u_rx|Selector1~5_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Selector1~6_combout\ : std_logic;
SIGNAL \u_uart|u_rx|c_state.DATA~q\ : std_logic;
SIGNAL \u_uart|u_rx|cnt2[3]~0_combout\ : std_logic;
SIGNAL \u_uart|u_rx|cnt2[1]~2_combout\ : std_logic;
SIGNAL \u_uart|u_rx|Equal1~0_combout\ : std_logic;
SIGNAL \u_uart|u_rx|rx_data[0]~0_combout\ : std_logic;
SIGNAL \u_decoder|parser_done~1_combout\ : std_logic;
SIGNAL \u_decoder|Equal21~0_combout\ : std_logic;
SIGNAL \u_decoder|operator_q~3_combout\ : std_logic;
SIGNAL \u_decoder|cnt[3]~0_combout\ : std_logic;
SIGNAL \u_decoder|Equal1~0_combout\ : std_logic;
SIGNAL \u_decoder|cnt[3]~3_combout\ : std_logic;
SIGNAL \u_decoder|Selector3~0_combout\ : std_logic;
SIGNAL \u_decoder|n_state~0_combout\ : std_logic;
SIGNAL \u_decoder|n_state~1_combout\ : std_logic;
SIGNAL \u_decoder|Selector5~0_combout\ : std_logic;
SIGNAL \u_decoder|c_state.DATA2~q\ : std_logic;
SIGNAL \u_decoder|cnt2[0]~2_combout\ : std_logic;
SIGNAL \u_decoder|cnt2[1]~1_combout\ : std_logic;
SIGNAL \u_decoder|Equal2~1_combout\ : std_logic;
SIGNAL \u_decoder|cnt2[3]~0_combout\ : std_logic;
SIGNAL \u_decoder|cnt2~4_combout\ : std_logic;
SIGNAL \u_decoder|cnt2[3]~3_combout\ : std_logic;
SIGNAL \u_decoder|Equal2~0_combout\ : std_logic;
SIGNAL \u_decoder|Selector6~0_combout\ : std_logic;
SIGNAL \u_decoder|c_state.END_PROTOCOL~q\ : std_logic;
SIGNAL \u_decoder|n_state.RESULT~0_combout\ : std_logic;
SIGNAL \u_decoder|c_state.RESULT~q\ : std_logic;
SIGNAL \u_decoder|Selector0~0_combout\ : std_logic;
SIGNAL \u_decoder|c_state.IDLE~q\ : std_logic;
SIGNAL \u_decoder|Selector1~0_combout\ : std_logic;
SIGNAL \u_decoder|c_state.FORMAT~q\ : std_logic;
SIGNAL \u_decoder|c_state.TYPE~0_combout\ : std_logic;
SIGNAL \u_decoder|c_state.TYPE~q\ : std_logic;
SIGNAL \u_decoder|Selector3~1_combout\ : std_logic;
SIGNAL \u_decoder|c_state.DATA1~q\ : std_logic;
SIGNAL \u_decoder|cnt[0]~2_combout\ : std_logic;
SIGNAL \u_decoder|cnt[1]~1_combout\ : std_logic;
SIGNAL \u_decoder|cnt~4_combout\ : std_logic;
SIGNAL \u_decoder|Selector4~0_combout\ : std_logic;
SIGNAL \u_decoder|c_state.OPERATION~q\ : std_logic;
SIGNAL \u_decoder|operator_q[2]~1_combout\ : std_logic;
SIGNAL \u_decoder|operator_q[2]~2_combout\ : std_logic;
SIGNAL \u_decoder|operator_q~0_combout\ : std_logic;
SIGNAL \u_decoder|operator_q~4_combout\ : std_logic;
SIGNAL \u_decoder|Equal3~0_combout\ : std_logic;
SIGNAL \u_decoder|Equal3~1_combout\ : std_logic;
SIGNAL \u_decoder|Equal3~2_combout\ : std_logic;
SIGNAL \u_decoder|dtype_q[1]~0_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q~28_combout\ : std_logic;
SIGNAL \u_decoder|parser_done~0_combout\ : std_logic;
SIGNAL \u_decoder|parser_done~2_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q~26_combout\ : std_logic;
SIGNAL \u_decoder|dtype_q[1]~1_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q~27_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q.0001~q\ : std_logic;
SIGNAL \u_alu|calc_res_q~31_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q.0110~q\ : std_logic;
SIGNAL \u_alu|calc_res_q~30_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q.0010~q\ : std_logic;
SIGNAL \u_alu|calc_res_q~29_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q.0101~q\ : std_logic;
SIGNAL \u_alu|alu_done~1_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q~33_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q.0011~q\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[0]~17_combout\ : std_logic;
SIGNAL \u_alu|u_divider|d1~q\ : std_logic;
SIGNAL \u_alu|u_divider|d2~q\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|Selector0~0_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|c_state.IDLE~q\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[8]~51_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[0]~18\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[1]~19_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[1]~20\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[2]~21_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[2]~22\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[3]~23_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[3]~24\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[4]~25_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[4]~26\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[5]~27_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[5]~28\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[6]~29_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[6]~30\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[7]~31_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|Equal0~1_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[7]~32\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[8]~33_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[8]~34\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[9]~35_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[9]~36\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[10]~37_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[10]~38\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[11]~39_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[11]~40\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[12]~41_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[12]~42\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[13]~43_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[13]~44\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[14]~45_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[14]~46\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[15]~47_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[15]~48\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|cnt[16]~49_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|Equal0~2_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|Equal0~3_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|Equal0~4_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|Equal0~0_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|Equal0~5_combout\ : std_logic;
SIGNAL \u_alu|u_divider|comb~0_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|Selector1~0_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|c_state.DATA~q\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|n_state.STOP~0_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|c_state.STOP~q\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[0]~18_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Selector0~0_combout\ : std_logic;
SIGNAL \u_alu|u_booth|c_state.IDLE~q\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[6]~20_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[0]~19\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[1]~21_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[1]~22\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[2]~23_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[2]~24\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[3]~25_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[3]~26\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[4]~27_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[4]~28\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[5]~29_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[5]~30\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[6]~31_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[6]~32\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[7]~33_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[7]~34\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[8]~35_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[8]~36\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[9]~37_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[9]~38\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[10]~39_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[10]~40\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[11]~41_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Equal0~2_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Equal0~1_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[11]~42\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[12]~43_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[12]~44\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[13]~45_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[13]~46\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[14]~47_combout\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[14]~48\ : std_logic;
SIGNAL \u_alu|u_booth|cnt[15]~49_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Equal0~3_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Equal0~0_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Equal0~4_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Selector1~0_combout\ : std_logic;
SIGNAL \u_alu|u_booth|c_state.DATA~q\ : std_logic;
SIGNAL \u_alu|u_booth|n_state.STOP~0_combout\ : std_logic;
SIGNAL \u_alu|u_booth|c_state.STOP~q\ : std_logic;
SIGNAL \u_alu|calc_res_q~32_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q.0111~q\ : std_logic;
SIGNAL \u_alu|alu_done~2_combout\ : std_logic;
SIGNAL \u_alu|u_add|Selector0~0_combout\ : std_logic;
SIGNAL \u_alu|u_add|c_state.IDLE~q\ : std_logic;
SIGNAL \u_alu|u_add|n_state.DATA~0_combout\ : std_logic;
SIGNAL \u_alu|u_add|c_state.DATA~q\ : std_logic;
SIGNAL \u_alu|u_add|c_state.STOP~q\ : std_logic;
SIGNAL \u_alu|u_divider|cnt[0]~5_combout\ : std_logic;
SIGNAL \u_alu|u_divider|cnt[2]~11\ : std_logic;
SIGNAL \u_alu|u_divider|cnt[3]~12_combout\ : std_logic;
SIGNAL \u_alu|u_divider|cnt[3]~13\ : std_logic;
SIGNAL \u_alu|u_divider|cnt[4]~14_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Selector0~0_combout\ : std_logic;
SIGNAL \u_alu|u_divider|c_state.IDLE~q\ : std_logic;
SIGNAL \u_alu|u_divider|cnt[2]~7_combout\ : std_logic;
SIGNAL \u_alu|u_divider|cnt[0]~6\ : std_logic;
SIGNAL \u_alu|u_divider|cnt[1]~8_combout\ : std_logic;
SIGNAL \u_alu|u_divider|cnt[1]~9\ : std_logic;
SIGNAL \u_alu|u_divider|cnt[2]~10_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Equal0~0_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Selector1~0_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Selector1~1_combout\ : std_logic;
SIGNAL \u_alu|u_divider|c_state.DATA~q\ : std_logic;
SIGNAL \u_alu|u_divider|n_state.STOP~0_combout\ : std_logic;
SIGNAL \u_alu|u_divider|c_state.STOP~q\ : std_logic;
SIGNAL \u_alu|calc_res_q~25_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q.1000~q\ : std_logic;
SIGNAL \u_alu|alu_done~0_combout\ : std_logic;
SIGNAL \u_alu|alu_done~3_combout\ : std_logic;
SIGNAL \u_encoder|cnt2[3]~0_combout\ : std_logic;
SIGNAL \u_encoder|cnt2[0]~4_combout\ : std_logic;
SIGNAL \u_encoder|cnt2[1]~3_combout\ : std_logic;
SIGNAL \u_encoder|cnt2[2]~2_combout\ : std_logic;
SIGNAL \u_encoder|Add1~0_combout\ : std_logic;
SIGNAL \u_encoder|cnt2[3]~1_combout\ : std_logic;
SIGNAL \u_encoder|Equal1~0_combout\ : std_logic;
SIGNAL \u_encoder|Selector0~0_combout\ : std_logic;
SIGNAL \u_encoder|Selector2~0_combout\ : std_logic;
SIGNAL \u_encoder|c_state.STOP~q\ : std_logic;
SIGNAL \u_encoder|Selector0~1_combout\ : std_logic;
SIGNAL \u_encoder|c_state.IDLE~q\ : std_logic;
SIGNAL \u_encoder|Selector1~0_combout\ : std_logic;
SIGNAL \u_encoder|c_state.DATA~q\ : std_logic;
SIGNAL \u_encoder|Add0~1\ : std_logic;
SIGNAL \u_encoder|Add0~2_combout\ : std_logic;
SIGNAL \u_encoder|cnt~5_combout\ : std_logic;
SIGNAL \u_encoder|Add0~3\ : std_logic;
SIGNAL \u_encoder|Add0~4_combout\ : std_logic;
SIGNAL \u_encoder|Add0~5\ : std_logic;
SIGNAL \u_encoder|Add0~6_combout\ : std_logic;
SIGNAL \u_encoder|Add0~7\ : std_logic;
SIGNAL \u_encoder|Add0~8_combout\ : std_logic;
SIGNAL \u_encoder|cnt~3_combout\ : std_logic;
SIGNAL \u_encoder|Add0~9\ : std_logic;
SIGNAL \u_encoder|Add0~10_combout\ : std_logic;
SIGNAL \u_encoder|cnt~2_combout\ : std_logic;
SIGNAL \u_encoder|Add0~11\ : std_logic;
SIGNAL \u_encoder|Add0~12_combout\ : std_logic;
SIGNAL \u_encoder|Add0~13\ : std_logic;
SIGNAL \u_encoder|Add0~14_combout\ : std_logic;
SIGNAL \u_encoder|cnt~1_combout\ : std_logic;
SIGNAL \u_encoder|Equal0~2_combout\ : std_logic;
SIGNAL \u_encoder|Equal0~3_combout\ : std_logic;
SIGNAL \u_encoder|Add0~15\ : std_logic;
SIGNAL \u_encoder|Add0~16_combout\ : std_logic;
SIGNAL \u_encoder|cnt~0_combout\ : std_logic;
SIGNAL \u_encoder|Add0~17\ : std_logic;
SIGNAL \u_encoder|Add0~18_combout\ : std_logic;
SIGNAL \u_encoder|Add0~19\ : std_logic;
SIGNAL \u_encoder|Add0~20_combout\ : std_logic;
SIGNAL \u_encoder|Add0~21\ : std_logic;
SIGNAL \u_encoder|Add0~22_combout\ : std_logic;
SIGNAL \u_encoder|Add0~23\ : std_logic;
SIGNAL \u_encoder|Add0~24_combout\ : std_logic;
SIGNAL \u_encoder|Add0~25\ : std_logic;
SIGNAL \u_encoder|Add0~26_combout\ : std_logic;
SIGNAL \u_encoder|Add0~27\ : std_logic;
SIGNAL \u_encoder|Add0~28_combout\ : std_logic;
SIGNAL \u_encoder|Add0~29\ : std_logic;
SIGNAL \u_encoder|Add0~30_combout\ : std_logic;
SIGNAL \u_encoder|Equal0~0_combout\ : std_logic;
SIGNAL \u_encoder|Equal0~1_combout\ : std_logic;
SIGNAL \u_encoder|Equal0~4_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt~4_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Selector3~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|c_state.STOP~q\ : std_logic;
SIGNAL \u_uart|u_tx|Selector0~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|c_state.IDLE~q\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~1\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~2_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt~5_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~3\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~4_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~5\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~6_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~7\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~8_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt~3_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~9\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~10_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt~2_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~11\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~12_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~13\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~14_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt~1_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Equal0~2_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Equal0~3_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~15\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~16_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~17\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~18_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~19\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~20_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~21\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~22_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~23\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~24_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~25\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~26_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~27\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~28_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~29\ : std_logic;
SIGNAL \u_uart|u_tx|Add0~30_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Equal0~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Equal0~1_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Equal0~4_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt2[0]~2_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Add1~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt2[3]~1_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Equal1~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt2[3]~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt2[1]~4_combout\ : std_logic;
SIGNAL \u_uart|u_tx|cnt2[2]~3_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Equal2~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|Selector1~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|c_state.START~q\ : std_logic;
SIGNAL \u_uart|u_tx|Selector2~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|c_state.DATA~q\ : std_logic;
SIGNAL \u_decoder|src2_q~7_combout\ : std_logic;
SIGNAL \u_decoder|src2_q[3]~0_combout\ : std_logic;
SIGNAL \u_decoder|src2_q[3]~1_combout\ : std_logic;
SIGNAL \u_decoder|src2_q[3]~2_combout\ : std_logic;
SIGNAL \u_decoder|src1_q[0]~0_combout\ : std_logic;
SIGNAL \u_decoder|src2_q~5_combout\ : std_logic;
SIGNAL \u_decoder|src2_q~6_combout\ : std_logic;
SIGNAL \u_decoder|src2_q[1]~feeder_combout\ : std_logic;
SIGNAL \u_decoder|src2_q[3]~3_combout\ : std_logic;
SIGNAL \u_alu|u_divider|A[16]~0_combout\ : std_logic;
SIGNAL \u_decoder|src2_q[0]~feeder_combout\ : std_logic;
SIGNAL \u_decoder|src2_q[3]~4_combout\ : std_logic;
SIGNAL \u_decoder|src2_q[2]~feeder_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~0_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~2\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~4\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~6\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~8\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~10\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~12\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~14\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~16\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~18\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~20\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~22\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~24\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~26\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~27_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~23_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~21_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~19_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~17_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~11_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~7_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~5_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~3_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~1_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~2_combout\ : std_logic;
SIGNAL \u_decoder|src1_q[3]~1_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~3_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~0_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~1\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~2_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~3\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~4_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~5\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~6_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~9_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~7\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~8_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~9\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~10_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~13_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~11\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~12_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~15_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~13\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~14_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~15\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~16_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~17\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~18_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~19\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~20_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~21\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~22_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~25_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~23\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~24_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~25\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~26_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~28\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~29_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~27\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~28_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~30\ : std_logic;
SIGNAL \u_alu|u_divider|Add2~31_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~29\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~30_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~31\ : std_logic;
SIGNAL \u_alu|u_divider|Add1~32_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~13_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~14_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~15_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~12_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~9_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~10_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~11_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~8_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~5_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~6_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~7_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~4_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~0_combout\ : std_logic;
SIGNAL \u_alu|u_divider|sum_Q~1_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~1_combout\ : std_logic;
SIGNAL \u_alu|alu_done~5_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q[23]~1_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~1_cout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~3\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~5\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~7\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~9\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~11\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~13\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~15\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~17\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~19\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~21\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~23\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~25\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~27\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~29\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~31\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~32_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~30_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~28_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~26_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~24_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~22_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~20_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~18_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~16_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~14_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~12_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~10_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~8_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~6_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~4_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|Add0~2_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[0]~19\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[1]~21\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[2]~23\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[3]~25\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[4]~27\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[5]~29\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[6]~31\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[7]~33\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[8]~35\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[9]~37\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[10]~39\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[11]~41\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[12]~43\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[13]~45\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[14]~47\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[15]~49\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[16]~51\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[31]~52_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~10_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~8_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~5_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~0_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~1_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~2_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~3_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~4_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~6_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~7_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~9_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~11_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~12_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~13_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~15_cout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~17_cout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~19\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~21\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~23\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~25\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~27\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~29\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~31\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~33\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~35\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~37\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~39\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~41\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~42_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[13]~29_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~40_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[12]~31_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~38_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[11]~32_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~36_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[10]~33_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~34_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[9]~34_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~32_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[8]~35_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~30_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[7]~36_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~28_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[6]~37_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~26_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[5]~38_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~24_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[4]~39_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~22_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[3]~40_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~20_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[2]~41_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~18_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[1]~42_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~7_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~6_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~5_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~4_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~12_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~11_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~10_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~9_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~15_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~14_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~13_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~8_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~3_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~2_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~1_combout\ : std_logic;
SIGNAL \u_alu|u_booth|sum_Q~0_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[13]~28_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~47_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~44_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~43\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~46\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~48_combout\ : std_logic;
SIGNAL \u_alu|u_booth|A[14]~0_combout\ : std_logic;
SIGNAL \u_alu|u_booth|Add1~45_combout\ : std_logic;
SIGNAL \u_alu|u_booth|a_resert[14]~30_combout\ : std_logic;
SIGNAL \u_alu|alu_done~4_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q[23]~0_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~9_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~28_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~27_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~26_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~25_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~24_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~23_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~22_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~21_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~20_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~19_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~18_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~17_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~16_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~15_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~14_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~13_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~12_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~11_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~10_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~9_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~8_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~7_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~6_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~5_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~4_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~3_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~2_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~1_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~0_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~29_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[0]~32_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~15_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~14_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~13_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~12_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~11_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~10_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~9_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~8_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~7_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~6_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~5_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~4_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~3_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~2_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~1_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2~0_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|always4~0_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[0]~33\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[1]~34_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[1]~35\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[2]~36_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[2]~37\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[3]~38_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[3]~39\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[4]~40_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[4]~41\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[5]~42_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[5]~43\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[6]~44_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[6]~45\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[7]~46_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[7]~47\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[8]~48_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[8]~49\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[9]~50_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[9]~51\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[10]~52_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[10]~53\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[11]~54_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[11]~55\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[12]~56_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[12]~57\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[13]~58_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[13]~59\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[14]~60_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[14]~61\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[15]~62_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[15]~63\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[16]~64_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[16]~65\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[17]~66_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[17]~67\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[18]~68_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[18]~69\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[19]~70_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[19]~71\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[20]~72_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[20]~73\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[21]~74_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[21]~75\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[22]~76_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[22]~77\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[23]~78_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[23]~79\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[24]~80_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[24]~81\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[25]~82_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[25]~83\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[26]~84_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[26]~85\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[27]~86_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[27]~87\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[28]~88_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[28]~89\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[29]~90_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~10_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~33_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~9_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~34_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~47_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~13_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~48_combout\ : std_logic;
SIGNAL \u_alu|alu_done~6_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q~34_combout\ : std_logic;
SIGNAL \u_alu|calc_res_q.0100~q\ : std_logic;
SIGNAL \u_encoder|calc_res_q[16]~4_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~43_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[13]~44_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~61_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~62_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[5]~28_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~93_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~94_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[0]~18\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[1]~20\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[2]~22\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[3]~24\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[4]~26\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[5]~27_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[1]~19_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[1]~20_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~107_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~108_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~109_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q[23]~8_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~92_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~95_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[5]~28\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[6]~30\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[7]~32\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[8]~34\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[9]~35_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~76_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[9]~36_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~77_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~78_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~79_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[9]~36\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[10]~38\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[11]~40\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[12]~42\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[13]~43_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~60_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~63_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q[23]~5_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~6_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~49_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~35_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~21_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~5_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~22_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~23_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~11_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~8_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~30_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~31_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~12_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~44_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[16]~50_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~45_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[13]~44\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[14]~46\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[15]~48\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[16]~49_combout\ : std_logic;
SIGNAL \u_alu|u_divider|R_product[12]~feeder_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~57_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[12]~42_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~58_combout\ : std_logic;
SIGNAL \u_alu|u_divider|R_product[4]~feeder_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~89_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[4]~26_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~90_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[0]~17_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[0]~18_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~104_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~105_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~106_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[4]~25_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~88_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~91_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[8]~33_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~72_combout\ : std_logic;
SIGNAL \u_alu|u_divider|R_product[8]~feeder_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~73_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[8]~34_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~74_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~75_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[12]~41_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~56_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~59_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~42_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~46_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~32_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~4_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~18_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~19_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~20_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~0_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~2_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~3_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~7_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~6_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~24_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~25_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[14]~46_combout\ : std_logic;
SIGNAL \u_alu|u_divider|R_product[14]~feeder_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~65_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~66_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~81_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[10]~38_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~82_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~97_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[6]~30_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~98_combout\ : std_logic;
SIGNAL \u_alu|u_divider|R_product[2]~feeder_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~110_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[2]~22_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~111_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[2]~21_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~112_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[6]~29_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~96_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~99_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[10]~37_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~80_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~83_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[14]~45_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~64_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~67_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~14_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~50_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~51_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~52_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~10_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~36_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~37_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~38_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~26_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~2_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~12_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~30_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[29]~91\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[30]~92_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~13_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~14_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~3_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~15_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src1~31_combout\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[30]~93\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|calc_res[31]~94_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~16_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~7_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~27_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~28_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~53_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~15_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~54_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[15]~48_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~69_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~70_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[15]~47_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[11]~39_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[7]~31_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[3]~24_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~113_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~114_combout\ : std_logic;
SIGNAL \u_alu|u_add|calc_res[3]~23_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~115_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~100_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[7]~32_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~101_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~102_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~103_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~84_combout\ : std_logic;
SIGNAL \u_alu|u_substraction|calc_res[11]~40_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~85_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~86_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~87_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~68_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~71_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~55_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~39_combout\ : std_logic;
SIGNAL \u_alu|u_divider|Q_product~11_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~40_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~41_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~29_combout\ : std_logic;
SIGNAL \u_encoder|calc_res_q~17_combout\ : std_logic;
SIGNAL \u_encoder|tx_data~0_combout\ : std_logic;
SIGNAL \u_encoder|tx_data~4_combout\ : std_logic;
SIGNAL \u_encoder|tx_data[6]~5_combout\ : std_logic;
SIGNAL \u_uart|u_tx|tx_data_q[4]~1_combout\ : std_logic;
SIGNAL \u_uart|u_tx|tx_data_q~7_combout\ : std_logic;
SIGNAL \u_uart|u_tx|tx_data_q~6_combout\ : std_logic;
SIGNAL \u_uart|u_tx|tx_data_q~5_combout\ : std_logic;
SIGNAL \u_encoder|tx_data~3_combout\ : std_logic;
SIGNAL \u_uart|u_tx|tx_data_q~4_combout\ : std_logic;
SIGNAL \u_encoder|tx_data~2_combout\ : std_logic;
SIGNAL \u_uart|u_tx|tx_data_q~3_combout\ : std_logic;
SIGNAL \u_encoder|tx_data~1_combout\ : std_logic;
SIGNAL \u_uart|u_tx|tx_data_q~2_combout\ : std_logic;
SIGNAL \u_uart|u_tx|tx_data_q~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|txd~0_combout\ : std_logic;
SIGNAL \u_uart|u_tx|txd~1_combout\ : std_logic;
SIGNAL \u_uart|u_tx|txd~q\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|sum_src2\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \u_uart|u_tx|cnt2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_alu|u_divider|R_product\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \u_alu|u_booth|A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_alu|u_booth|calc_res\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u_uart|u_tx|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_uart|u_rx|cnt2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uart|u_rx|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_decoder|src2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_decoder|src2_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_uart|u_rx|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_alu|u_shift_add_multi|sum_src1\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \u_alu|u_shift_add_multi|cnt\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \u_alu|u_divider|Q_product\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_alu|u_divider|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_alu|u_booth|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_decoder|dtype_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_alu|u_divider|sum_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_decoder|operator_q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_alu|u_add|calc_res\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u_decoder|src1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_decoder|src1_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_alu|u_booth|sum_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_uart|u_tx|tx_data_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_decoder|cnt2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_alu|u_shift_add_multi|calc_res\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u_alu|u_substraction|calc_res\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u_decoder|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_alu|u_divider|A\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \u_encoder|tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_encoder|cnt2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_encoder|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_encoder|calc_res_q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u_uart|u_tx|ALT_INV_txd~q\ : std_logic;
SIGNAL \u_uart|u_rx|ALT_INV_rx_data\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \u_alu|u_booth|ALT_INV_c_state.STOP~q\ : std_logic;
SIGNAL \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\ : std_logic;
SIGNAL \u_alu|u_divider|ALT_INV_c_state.STOP~q\ : std_logic;
SIGNAL \u_uart|u_tx|ALT_INV_tx_data_q[4]~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_rxd <= rxd;
txd <= ww_txd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\u_uart|u_tx|ALT_INV_txd~q\ <= NOT \u_uart|u_tx|txd~q\;
\u_uart|u_rx|ALT_INV_rx_data\(6) <= NOT \u_uart|u_rx|rx_data\(6);
\u_alu|u_booth|ALT_INV_c_state.STOP~q\ <= NOT \u_alu|u_booth|c_state.STOP~q\;
\u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\ <= NOT \u_alu|u_shift_add_multi|c_state.STOP~q\;
\u_alu|u_divider|ALT_INV_c_state.STOP~q\ <= NOT \u_alu|u_divider|c_state.STOP~q\;
\u_uart|u_tx|ALT_INV_tx_data_q[4]~1_combout\ <= NOT \u_uart|u_tx|tx_data_q[4]~1_combout\;

-- Location: IOOBUF_X13_Y73_N23
\txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_uart|u_tx|ALT_INV_txd~q\,
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X91_Y51_N0
\u_encoder|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~0_combout\ = \u_encoder|cnt\(0) $ (VCC)
-- \u_encoder|Add0~1\ = CARRY(\u_encoder|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(0),
	datad => VCC,
	combout => \u_encoder|Add0~0_combout\,
	cout => \u_encoder|Add0~1\);

-- Location: LCCOMB_X92_Y51_N20
\u_encoder|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt~4_combout\ = (\u_encoder|Equal0~4_combout\ & \u_encoder|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|Equal0~4_combout\,
	datac => \u_encoder|Add0~0_combout\,
	combout => \u_encoder|cnt~4_combout\);

-- Location: IOIBUF_X115_Y40_N8
\n_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\rxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rxd,
	o => \rxd~input_o\);

-- Location: LCCOMB_X87_Y54_N2
\u_uart|u_rx|rx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|rx_data[7]~feeder_combout\ = \rxd~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rxd~input_o\,
	combout => \u_uart|u_rx|rx_data[7]~feeder_combout\);

-- Location: LCCOMB_X89_Y54_N28
\u_uart|u_rx|cnt2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt2[0]~3_combout\ = (\u_uart|u_rx|cnt2\(0) & (((!\u_uart|u_rx|cnt2[3]~0_combout\)))) # (!\u_uart|u_rx|cnt2\(0) & (\u_uart|u_rx|cnt2[3]~0_combout\ & ((!\u_uart|u_rx|cnt2\(3)) # (!\u_uart|u_rx|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|Equal1~0_combout\,
	datab => \u_uart|u_rx|cnt2\(3),
	datac => \u_uart|u_rx|cnt2\(0),
	datad => \u_uart|u_rx|cnt2[3]~0_combout\,
	combout => \u_uart|u_rx|cnt2[0]~3_combout\);

-- Location: FF_X89_Y54_N29
\u_uart|u_rx|cnt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|cnt2[0]~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt2\(0));

-- Location: LCCOMB_X89_Y54_N16
\u_uart|u_rx|cnt2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt2[2]~1_combout\ = \u_uart|u_rx|cnt2\(2) $ (((\u_uart|u_rx|cnt2\(1) & (\u_uart|u_rx|cnt2[3]~0_combout\ & \u_uart|u_rx|cnt2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt2\(1),
	datab => \u_uart|u_rx|cnt2[3]~0_combout\,
	datac => \u_uart|u_rx|cnt2\(2),
	datad => \u_uart|u_rx|cnt2\(0),
	combout => \u_uart|u_rx|cnt2[2]~1_combout\);

-- Location: FF_X89_Y54_N17
\u_uart|u_rx|cnt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|cnt2[2]~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt2\(2));

-- Location: LCCOMB_X89_Y54_N12
\u_uart|u_rx|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add1~0_combout\ = \u_uart|u_rx|cnt2\(3) $ (((\u_uart|u_rx|cnt2\(1) & (\u_uart|u_rx|cnt2\(0) & \u_uart|u_rx|cnt2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt2\(1),
	datab => \u_uart|u_rx|cnt2\(0),
	datac => \u_uart|u_rx|cnt2\(3),
	datad => \u_uart|u_rx|cnt2\(2),
	combout => \u_uart|u_rx|Add1~0_combout\);

-- Location: LCCOMB_X89_Y54_N8
\u_uart|u_rx|cnt2[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt2[3]~4_combout\ = (\u_uart|u_rx|cnt2[3]~0_combout\ & (\u_uart|u_rx|Add1~0_combout\ & ((!\u_uart|u_rx|cnt2\(3)) # (!\u_uart|u_rx|Equal1~0_combout\)))) # (!\u_uart|u_rx|cnt2[3]~0_combout\ & (((\u_uart|u_rx|cnt2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|Equal1~0_combout\,
	datab => \u_uart|u_rx|cnt2[3]~0_combout\,
	datac => \u_uart|u_rx|cnt2\(3),
	datad => \u_uart|u_rx|Add1~0_combout\,
	combout => \u_uart|u_rx|cnt2[3]~4_combout\);

-- Location: FF_X89_Y54_N9
\u_uart|u_rx|cnt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|cnt2[3]~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt2\(3));

-- Location: LCCOMB_X88_Y54_N0
\u_uart|u_rx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~0_combout\ = \u_uart|u_rx|cnt\(0) $ (VCC)
-- \u_uart|u_rx|Add0~1\ = CARRY(\u_uart|u_rx|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|cnt\(0),
	datad => VCC,
	combout => \u_uart|u_rx|Add0~0_combout\,
	cout => \u_uart|u_rx|Add0~1\);

-- Location: LCCOMB_X89_Y54_N26
\u_uart|u_rx|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt~5_combout\ = (\u_uart|u_rx|Add0~0_combout\ & !\u_uart|u_rx|Selector1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart|u_rx|Add0~0_combout\,
	datad => \u_uart|u_rx|Selector1~4_combout\,
	combout => \u_uart|u_rx|cnt~5_combout\);

-- Location: FF_X89_Y54_N27
\u_uart|u_rx|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|cnt~5_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(0));

-- Location: LCCOMB_X88_Y54_N2
\u_uart|u_rx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~2_combout\ = (\u_uart|u_rx|cnt\(1) & (!\u_uart|u_rx|Add0~1\)) # (!\u_uart|u_rx|cnt\(1) & ((\u_uart|u_rx|Add0~1\) # (GND)))
-- \u_uart|u_rx|Add0~3\ = CARRY((!\u_uart|u_rx|Add0~1\) # (!\u_uart|u_rx|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|cnt\(1),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~1\,
	combout => \u_uart|u_rx|Add0~2_combout\,
	cout => \u_uart|u_rx|Add0~3\);

-- Location: LCCOMB_X89_Y54_N0
\u_uart|u_rx|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt~4_combout\ = (!\u_uart|u_rx|Selector1~4_combout\ & \u_uart|u_rx|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|Selector1~4_combout\,
	datad => \u_uart|u_rx|Add0~2_combout\,
	combout => \u_uart|u_rx|cnt~4_combout\);

-- Location: FF_X89_Y54_N1
\u_uart|u_rx|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|cnt~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(1));

-- Location: LCCOMB_X88_Y54_N4
\u_uart|u_rx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~4_combout\ = (\u_uart|u_rx|cnt\(2) & (\u_uart|u_rx|Add0~3\ $ (GND))) # (!\u_uart|u_rx|cnt\(2) & (!\u_uart|u_rx|Add0~3\ & VCC))
-- \u_uart|u_rx|Add0~5\ = CARRY((\u_uart|u_rx|cnt\(2) & !\u_uart|u_rx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|cnt\(2),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~3\,
	combout => \u_uart|u_rx|Add0~4_combout\,
	cout => \u_uart|u_rx|Add0~5\);

-- Location: FF_X88_Y54_N5
\u_uart|u_rx|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Add0~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(2));

-- Location: LCCOMB_X88_Y54_N6
\u_uart|u_rx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~6_combout\ = (\u_uart|u_rx|cnt\(3) & (!\u_uart|u_rx|Add0~5\)) # (!\u_uart|u_rx|cnt\(3) & ((\u_uart|u_rx|Add0~5\) # (GND)))
-- \u_uart|u_rx|Add0~7\ = CARRY((!\u_uart|u_rx|Add0~5\) # (!\u_uart|u_rx|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(3),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~5\,
	combout => \u_uart|u_rx|Add0~6_combout\,
	cout => \u_uart|u_rx|Add0~7\);

-- Location: FF_X88_Y54_N7
\u_uart|u_rx|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Add0~6_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(3));

-- Location: LCCOMB_X89_Y54_N20
\u_uart|u_rx|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Selector1~3_combout\ = (!\u_uart|u_rx|cnt\(0) & (!\u_uart|u_rx|cnt\(3) & (!\u_uart|u_rx|cnt\(2) & \u_uart|u_rx|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(0),
	datab => \u_uart|u_rx|cnt\(3),
	datac => \u_uart|u_rx|cnt\(2),
	datad => \u_uart|u_rx|cnt\(1),
	combout => \u_uart|u_rx|Selector1~3_combout\);

-- Location: LCCOMB_X88_Y54_N8
\u_uart|u_rx|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~8_combout\ = (\u_uart|u_rx|cnt\(4) & (\u_uart|u_rx|Add0~7\ $ (GND))) # (!\u_uart|u_rx|cnt\(4) & (!\u_uart|u_rx|Add0~7\ & VCC))
-- \u_uart|u_rx|Add0~9\ = CARRY((\u_uart|u_rx|cnt\(4) & !\u_uart|u_rx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(4),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~7\,
	combout => \u_uart|u_rx|Add0~8_combout\,
	cout => \u_uart|u_rx|Add0~9\);

-- Location: LCCOMB_X87_Y54_N18
\u_uart|u_rx|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt~3_combout\ = (\u_uart|u_rx|Add0~8_combout\ & !\u_uart|u_rx|Selector1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart|u_rx|Add0~8_combout\,
	datad => \u_uart|u_rx|Selector1~4_combout\,
	combout => \u_uart|u_rx|cnt~3_combout\);

-- Location: FF_X87_Y54_N19
\u_uart|u_rx|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|cnt~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(4));

-- Location: LCCOMB_X88_Y54_N10
\u_uart|u_rx|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~10_combout\ = (\u_uart|u_rx|cnt\(5) & (!\u_uart|u_rx|Add0~9\)) # (!\u_uart|u_rx|cnt\(5) & ((\u_uart|u_rx|Add0~9\) # (GND)))
-- \u_uart|u_rx|Add0~11\ = CARRY((!\u_uart|u_rx|Add0~9\) # (!\u_uart|u_rx|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(5),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~9\,
	combout => \u_uart|u_rx|Add0~10_combout\,
	cout => \u_uart|u_rx|Add0~11\);

-- Location: LCCOMB_X87_Y54_N12
\u_uart|u_rx|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt~2_combout\ = (\u_uart|u_rx|Add0~10_combout\ & !\u_uart|u_rx|Selector1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart|u_rx|Add0~10_combout\,
	datad => \u_uart|u_rx|Selector1~4_combout\,
	combout => \u_uart|u_rx|cnt~2_combout\);

-- Location: FF_X87_Y54_N13
\u_uart|u_rx|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|cnt~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(5));

-- Location: LCCOMB_X88_Y54_N12
\u_uart|u_rx|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~12_combout\ = (\u_uart|u_rx|cnt\(6) & (\u_uart|u_rx|Add0~11\ $ (GND))) # (!\u_uart|u_rx|cnt\(6) & (!\u_uart|u_rx|Add0~11\ & VCC))
-- \u_uart|u_rx|Add0~13\ = CARRY((\u_uart|u_rx|cnt\(6) & !\u_uart|u_rx|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(6),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~11\,
	combout => \u_uart|u_rx|Add0~12_combout\,
	cout => \u_uart|u_rx|Add0~13\);

-- Location: FF_X88_Y54_N13
\u_uart|u_rx|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Add0~12_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(6));

-- Location: LCCOMB_X88_Y54_N14
\u_uart|u_rx|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~14_combout\ = (\u_uart|u_rx|cnt\(7) & (!\u_uart|u_rx|Add0~13\)) # (!\u_uart|u_rx|cnt\(7) & ((\u_uart|u_rx|Add0~13\) # (GND)))
-- \u_uart|u_rx|Add0~15\ = CARRY((!\u_uart|u_rx|Add0~13\) # (!\u_uart|u_rx|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(7),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~13\,
	combout => \u_uart|u_rx|Add0~14_combout\,
	cout => \u_uart|u_rx|Add0~15\);

-- Location: LCCOMB_X87_Y54_N14
\u_uart|u_rx|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt~1_combout\ = (\u_uart|u_rx|Add0~14_combout\ & !\u_uart|u_rx|Selector1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart|u_rx|Add0~14_combout\,
	datad => \u_uart|u_rx|Selector1~4_combout\,
	combout => \u_uart|u_rx|cnt~1_combout\);

-- Location: FF_X87_Y54_N15
\u_uart|u_rx|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|cnt~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(7));

-- Location: LCCOMB_X88_Y54_N16
\u_uart|u_rx|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~16_combout\ = (\u_uart|u_rx|cnt\(8) & (\u_uart|u_rx|Add0~15\ $ (GND))) # (!\u_uart|u_rx|cnt\(8) & (!\u_uart|u_rx|Add0~15\ & VCC))
-- \u_uart|u_rx|Add0~17\ = CARRY((\u_uart|u_rx|cnt\(8) & !\u_uart|u_rx|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(8),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~15\,
	combout => \u_uart|u_rx|Add0~16_combout\,
	cout => \u_uart|u_rx|Add0~17\);

-- Location: LCCOMB_X87_Y54_N26
\u_uart|u_rx|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt~0_combout\ = (!\u_uart|u_rx|Selector1~4_combout\ & \u_uart|u_rx|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|Selector1~4_combout\,
	datad => \u_uart|u_rx|Add0~16_combout\,
	combout => \u_uart|u_rx|cnt~0_combout\);

-- Location: FF_X87_Y54_N27
\u_uart|u_rx|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|cnt~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(8));

-- Location: LCCOMB_X88_Y54_N18
\u_uart|u_rx|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~18_combout\ = (\u_uart|u_rx|cnt\(9) & (!\u_uart|u_rx|Add0~17\)) # (!\u_uart|u_rx|cnt\(9) & ((\u_uart|u_rx|Add0~17\) # (GND)))
-- \u_uart|u_rx|Add0~19\ = CARRY((!\u_uart|u_rx|Add0~17\) # (!\u_uart|u_rx|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|cnt\(9),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~17\,
	combout => \u_uart|u_rx|Add0~18_combout\,
	cout => \u_uart|u_rx|Add0~19\);

-- Location: FF_X88_Y54_N19
\u_uart|u_rx|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Add0~18_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(9));

-- Location: LCCOMB_X88_Y54_N20
\u_uart|u_rx|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~20_combout\ = (\u_uart|u_rx|cnt\(10) & (\u_uart|u_rx|Add0~19\ $ (GND))) # (!\u_uart|u_rx|cnt\(10) & (!\u_uart|u_rx|Add0~19\ & VCC))
-- \u_uart|u_rx|Add0~21\ = CARRY((\u_uart|u_rx|cnt\(10) & !\u_uart|u_rx|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|cnt\(10),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~19\,
	combout => \u_uart|u_rx|Add0~20_combout\,
	cout => \u_uart|u_rx|Add0~21\);

-- Location: FF_X88_Y54_N21
\u_uart|u_rx|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Add0~20_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(10));

-- Location: LCCOMB_X88_Y54_N22
\u_uart|u_rx|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~22_combout\ = (\u_uart|u_rx|cnt\(11) & (!\u_uart|u_rx|Add0~21\)) # (!\u_uart|u_rx|cnt\(11) & ((\u_uart|u_rx|Add0~21\) # (GND)))
-- \u_uart|u_rx|Add0~23\ = CARRY((!\u_uart|u_rx|Add0~21\) # (!\u_uart|u_rx|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(11),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~21\,
	combout => \u_uart|u_rx|Add0~22_combout\,
	cout => \u_uart|u_rx|Add0~23\);

-- Location: FF_X88_Y54_N23
\u_uart|u_rx|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Add0~22_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(11));

-- Location: LCCOMB_X87_Y54_N20
\u_uart|u_rx|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Selector1~1_combout\ = (\u_uart|u_rx|cnt\(8) & (!\u_uart|u_rx|cnt\(11) & (!\u_uart|u_rx|cnt\(10) & !\u_uart|u_rx|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(8),
	datab => \u_uart|u_rx|cnt\(11),
	datac => \u_uart|u_rx|cnt\(10),
	datad => \u_uart|u_rx|cnt\(9),
	combout => \u_uart|u_rx|Selector1~1_combout\);

-- Location: LCCOMB_X87_Y54_N4
\u_uart|u_rx|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Selector1~2_combout\ = (\u_uart|u_rx|cnt\(5) & (\u_uart|u_rx|cnt\(7) & (!\u_uart|u_rx|cnt\(6) & \u_uart|u_rx|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(5),
	datab => \u_uart|u_rx|cnt\(7),
	datac => \u_uart|u_rx|cnt\(6),
	datad => \u_uart|u_rx|cnt\(4),
	combout => \u_uart|u_rx|Selector1~2_combout\);

-- Location: LCCOMB_X88_Y54_N24
\u_uart|u_rx|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~24_combout\ = (\u_uart|u_rx|cnt\(12) & (\u_uart|u_rx|Add0~23\ $ (GND))) # (!\u_uart|u_rx|cnt\(12) & (!\u_uart|u_rx|Add0~23\ & VCC))
-- \u_uart|u_rx|Add0~25\ = CARRY((\u_uart|u_rx|cnt\(12) & !\u_uart|u_rx|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|cnt\(12),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~23\,
	combout => \u_uart|u_rx|Add0~24_combout\,
	cout => \u_uart|u_rx|Add0~25\);

-- Location: FF_X88_Y54_N25
\u_uart|u_rx|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Add0~24_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(12));

-- Location: LCCOMB_X88_Y54_N26
\u_uart|u_rx|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~26_combout\ = (\u_uart|u_rx|cnt\(13) & (!\u_uart|u_rx|Add0~25\)) # (!\u_uart|u_rx|cnt\(13) & ((\u_uart|u_rx|Add0~25\) # (GND)))
-- \u_uart|u_rx|Add0~27\ = CARRY((!\u_uart|u_rx|Add0~25\) # (!\u_uart|u_rx|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(13),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~25\,
	combout => \u_uart|u_rx|Add0~26_combout\,
	cout => \u_uart|u_rx|Add0~27\);

-- Location: FF_X88_Y54_N27
\u_uart|u_rx|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Add0~26_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(13));

-- Location: LCCOMB_X88_Y54_N28
\u_uart|u_rx|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~28_combout\ = (\u_uart|u_rx|cnt\(14) & (\u_uart|u_rx|Add0~27\ $ (GND))) # (!\u_uart|u_rx|cnt\(14) & (!\u_uart|u_rx|Add0~27\ & VCC))
-- \u_uart|u_rx|Add0~29\ = CARRY((\u_uart|u_rx|cnt\(14) & !\u_uart|u_rx|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|cnt\(14),
	datad => VCC,
	cin => \u_uart|u_rx|Add0~27\,
	combout => \u_uart|u_rx|Add0~28_combout\,
	cout => \u_uart|u_rx|Add0~29\);

-- Location: FF_X88_Y54_N29
\u_uart|u_rx|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Add0~28_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(14));

-- Location: LCCOMB_X88_Y54_N30
\u_uart|u_rx|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Add0~30_combout\ = \u_uart|u_rx|cnt\(15) $ (\u_uart|u_rx|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(15),
	cin => \u_uart|u_rx|Add0~29\,
	combout => \u_uart|u_rx|Add0~30_combout\);

-- Location: FF_X88_Y54_N31
\u_uart|u_rx|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Add0~30_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt\(15));

-- Location: LCCOMB_X87_Y54_N0
\u_uart|u_rx|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Selector1~0_combout\ = (!\u_uart|u_rx|cnt\(13) & (!\u_uart|u_rx|cnt\(14) & (!\u_uart|u_rx|cnt\(15) & !\u_uart|u_rx|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt\(13),
	datab => \u_uart|u_rx|cnt\(14),
	datac => \u_uart|u_rx|cnt\(15),
	datad => \u_uart|u_rx|cnt\(12),
	combout => \u_uart|u_rx|Selector1~0_combout\);

-- Location: LCCOMB_X87_Y54_N6
\u_uart|u_rx|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Selector1~4_combout\ = (\u_uart|u_rx|Selector1~3_combout\ & (\u_uart|u_rx|Selector1~1_combout\ & (\u_uart|u_rx|Selector1~2_combout\ & \u_uart|u_rx|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|Selector1~3_combout\,
	datab => \u_uart|u_rx|Selector1~1_combout\,
	datac => \u_uart|u_rx|Selector1~2_combout\,
	datad => \u_uart|u_rx|Selector1~0_combout\,
	combout => \u_uart|u_rx|Selector1~4_combout\);

-- Location: LCCOMB_X89_Y54_N4
\u_uart|u_rx|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Selector2~0_combout\ = (\u_uart|u_rx|Equal1~0_combout\ & (\u_uart|u_rx|cnt2\(3) & ((\u_uart|u_rx|c_state.DATA~q\) # (\u_uart|u_rx|c_state.STOP~q\)))) # (!\u_uart|u_rx|Equal1~0_combout\ & (((\u_uart|u_rx|c_state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|c_state.DATA~q\,
	datab => \u_uart|u_rx|cnt2\(3),
	datac => \u_uart|u_rx|c_state.STOP~q\,
	datad => \u_uart|u_rx|Equal1~0_combout\,
	combout => \u_uart|u_rx|Selector2~0_combout\);

-- Location: FF_X89_Y54_N5
\u_uart|u_rx|c_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Selector2~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|c_state.STOP~q\);

-- Location: LCCOMB_X89_Y54_N14
\u_uart|u_rx|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Selector0~0_combout\ = (!\u_uart|u_rx|cnt2\(3) & (\u_uart|u_rx|Equal1~0_combout\ & \u_uart|u_rx|c_state.STOP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|cnt2\(3),
	datac => \u_uart|u_rx|Equal1~0_combout\,
	datad => \u_uart|u_rx|c_state.STOP~q\,
	combout => \u_uart|u_rx|Selector0~0_combout\);

-- Location: LCCOMB_X89_Y54_N24
\u_uart|u_rx|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Selector0~1_combout\ = (!\u_uart|u_rx|Selector0~0_combout\ & ((\u_uart|u_rx|c_state.IDLE~q\) # ((\u_uart|u_rx|Selector1~4_combout\ & !\rxd~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|Selector1~4_combout\,
	datab => \u_uart|u_rx|Selector0~0_combout\,
	datac => \u_uart|u_rx|c_state.IDLE~q\,
	datad => \rxd~input_o\,
	combout => \u_uart|u_rx|Selector0~1_combout\);

-- Location: FF_X89_Y54_N25
\u_uart|u_rx|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Selector0~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|c_state.IDLE~q\);

-- Location: LCCOMB_X89_Y54_N6
\u_uart|u_rx|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Selector1~5_combout\ = (\u_uart|u_rx|c_state.DATA~q\ & ((!\u_uart|u_rx|Equal1~0_combout\) # (!\u_uart|u_rx|cnt2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|c_state.DATA~q\,
	datab => \u_uart|u_rx|cnt2\(3),
	datac => \u_uart|u_rx|Equal1~0_combout\,
	combout => \u_uart|u_rx|Selector1~5_combout\);

-- Location: LCCOMB_X89_Y54_N22
\u_uart|u_rx|Selector1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Selector1~6_combout\ = (\u_uart|u_rx|Selector1~5_combout\) # ((\u_uart|u_rx|Selector1~4_combout\ & (!\u_uart|u_rx|c_state.IDLE~q\ & !\rxd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|Selector1~4_combout\,
	datab => \u_uart|u_rx|c_state.IDLE~q\,
	datac => \rxd~input_o\,
	datad => \u_uart|u_rx|Selector1~5_combout\,
	combout => \u_uart|u_rx|Selector1~6_combout\);

-- Location: FF_X89_Y54_N23
\u_uart|u_rx|c_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|Selector1~6_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|c_state.DATA~q\);

-- Location: LCCOMB_X89_Y54_N18
\u_uart|u_rx|cnt2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt2[3]~0_combout\ = (\u_uart|u_rx|c_state.DATA~q\ & ((\u_uart|u_rx|Selector1~4_combout\) # ((\u_uart|u_rx|Equal1~0_combout\ & \u_uart|u_rx|cnt2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|Equal1~0_combout\,
	datab => \u_uart|u_rx|cnt2\(3),
	datac => \u_uart|u_rx|c_state.DATA~q\,
	datad => \u_uart|u_rx|Selector1~4_combout\,
	combout => \u_uart|u_rx|cnt2[3]~0_combout\);

-- Location: LCCOMB_X89_Y54_N10
\u_uart|u_rx|cnt2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|cnt2[1]~2_combout\ = \u_uart|u_rx|cnt2\(1) $ (((\u_uart|u_rx|cnt2[3]~0_combout\ & \u_uart|u_rx|cnt2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|cnt2[3]~0_combout\,
	datac => \u_uart|u_rx|cnt2\(1),
	datad => \u_uart|u_rx|cnt2\(0),
	combout => \u_uart|u_rx|cnt2[1]~2_combout\);

-- Location: FF_X89_Y54_N11
\u_uart|u_rx|cnt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|cnt2[1]~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|cnt2\(1));

-- Location: LCCOMB_X89_Y54_N30
\u_uart|u_rx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|Equal1~0_combout\ = (!\u_uart|u_rx|cnt2\(1) & (!\u_uart|u_rx|cnt2\(0) & !\u_uart|u_rx|cnt2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|cnt2\(1),
	datab => \u_uart|u_rx|cnt2\(0),
	datad => \u_uart|u_rx|cnt2\(2),
	combout => \u_uart|u_rx|Equal1~0_combout\);

-- Location: LCCOMB_X89_Y54_N2
\u_uart|u_rx|rx_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_rx|rx_data[0]~0_combout\ = (\u_uart|u_rx|c_state.DATA~q\ & (\u_uart|u_rx|Selector1~4_combout\ & ((\u_uart|u_rx|Equal1~0_combout\) # (!\u_uart|u_rx|cnt2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|Equal1~0_combout\,
	datab => \u_uart|u_rx|cnt2\(3),
	datac => \u_uart|u_rx|c_state.DATA~q\,
	datad => \u_uart|u_rx|Selector1~4_combout\,
	combout => \u_uart|u_rx|rx_data[0]~0_combout\);

-- Location: FF_X87_Y54_N3
\u_uart|u_rx|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_rx|rx_data[7]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_rx|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|rx_data\(7));

-- Location: FF_X87_Y54_N25
\u_uart|u_rx|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart|u_rx|rx_data\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_uart|u_rx|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|rx_data\(6));

-- Location: FF_X87_Y54_N31
\u_uart|u_rx|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart|u_rx|rx_data\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_uart|u_rx|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|rx_data\(5));

-- Location: FF_X87_Y54_N23
\u_uart|u_rx|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart|u_rx|rx_data\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_uart|u_rx|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|rx_data\(4));

-- Location: FF_X87_Y54_N29
\u_uart|u_rx|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart|u_rx|rx_data\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_uart|u_rx|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|rx_data\(3));

-- Location: FF_X87_Y54_N9
\u_uart|u_rx|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart|u_rx|rx_data\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_uart|u_rx|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|rx_data\(2));

-- Location: FF_X87_Y54_N17
\u_uart|u_rx|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart|u_rx|rx_data\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_uart|u_rx|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|rx_data\(1));

-- Location: FF_X87_Y54_N11
\u_uart|u_rx|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart|u_rx|rx_data\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_uart|u_rx|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_rx|rx_data\(0));

-- Location: LCCOMB_X87_Y54_N24
\u_decoder|parser_done~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|parser_done~1_combout\ = (\u_uart|u_rx|rx_data\(5) & (!\u_uart|u_rx|rx_data\(6) & !\u_uart|u_rx|rx_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(5),
	datac => \u_uart|u_rx|rx_data\(6),
	datad => \u_uart|u_rx|rx_data\(7),
	combout => \u_decoder|parser_done~1_combout\);

-- Location: LCCOMB_X87_Y55_N18
\u_decoder|Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Equal21~0_combout\ = (\u_decoder|parser_done~1_combout\ & (!\u_uart|u_rx|rx_data\(4) & \u_uart|u_rx|rx_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|parser_done~1_combout\,
	datac => \u_uart|u_rx|rx_data\(4),
	datad => \u_uart|u_rx|rx_data\(3),
	combout => \u_decoder|Equal21~0_combout\);

-- Location: LCCOMB_X90_Y52_N4
\u_decoder|operator_q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|operator_q~3_combout\ = (\u_decoder|Equal21~0_combout\ & ((\u_uart|u_rx|rx_data\(2) & (!\u_uart|u_rx|rx_data\(1) & \u_uart|u_rx|rx_data\(0))) # (!\u_uart|u_rx|rx_data\(2) & (\u_uart|u_rx|rx_data\(1) & !\u_uart|u_rx|rx_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(2),
	datab => \u_uart|u_rx|rx_data\(1),
	datac => \u_uart|u_rx|rx_data\(0),
	datad => \u_decoder|Equal21~0_combout\,
	combout => \u_decoder|operator_q~3_combout\);

-- Location: LCCOMB_X87_Y55_N2
\u_decoder|cnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|cnt[3]~0_combout\ = (\u_decoder|c_state.DATA1~q\ & \u_uart|u_rx|c_state.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|c_state.DATA1~q\,
	datad => \u_uart|u_rx|c_state.STOP~q\,
	combout => \u_decoder|cnt[3]~0_combout\);

-- Location: LCCOMB_X86_Y55_N12
\u_decoder|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Equal1~0_combout\ = (\u_decoder|cnt\(1) & \u_decoder|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|cnt\(1),
	datad => \u_decoder|cnt\(0),
	combout => \u_decoder|Equal1~0_combout\);

-- Location: LCCOMB_X86_Y55_N14
\u_decoder|cnt[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|cnt[3]~3_combout\ = \u_decoder|cnt\(3) $ (((\u_decoder|cnt[3]~0_combout\ & (\u_decoder|Equal1~0_combout\ & \u_decoder|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|cnt[3]~0_combout\,
	datab => \u_decoder|Equal1~0_combout\,
	datac => \u_decoder|cnt\(3),
	datad => \u_decoder|cnt\(2),
	combout => \u_decoder|cnt[3]~3_combout\);

-- Location: FF_X86_Y55_N15
\u_decoder|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|cnt[3]~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|cnt\(3));

-- Location: LCCOMB_X87_Y55_N4
\u_decoder|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Selector3~0_combout\ = (\u_decoder|cnt\(3)) # (((\u_decoder|cnt\(2)) # (!\u_uart|u_rx|c_state.STOP~q\)) # (!\u_decoder|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|cnt\(3),
	datab => \u_decoder|Equal1~0_combout\,
	datac => \u_decoder|cnt\(2),
	datad => \u_uart|u_rx|c_state.STOP~q\,
	combout => \u_decoder|Selector3~0_combout\);

-- Location: LCCOMB_X87_Y54_N16
\u_decoder|n_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|n_state~0_combout\ = (!\u_uart|u_rx|rx_data\(0) & (!\u_uart|u_rx|rx_data\(2) & (!\u_uart|u_rx|rx_data\(1) & !\u_uart|u_rx|rx_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(0),
	datab => \u_uart|u_rx|rx_data\(2),
	datac => \u_uart|u_rx|rx_data\(1),
	datad => \u_uart|u_rx|rx_data\(3),
	combout => \u_decoder|n_state~0_combout\);

-- Location: LCCOMB_X87_Y55_N12
\u_decoder|n_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|n_state~1_combout\ = (\u_uart|u_rx|c_state.STOP~q\ & (\u_decoder|n_state~0_combout\ & (!\u_uart|u_rx|rx_data\(4) & \u_decoder|parser_done~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|c_state.STOP~q\,
	datab => \u_decoder|n_state~0_combout\,
	datac => \u_uart|u_rx|rx_data\(4),
	datad => \u_decoder|parser_done~1_combout\,
	combout => \u_decoder|n_state~1_combout\);

-- Location: LCCOMB_X88_Y55_N6
\u_decoder|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Selector5~0_combout\ = (\u_uart|u_rx|c_state.STOP~q\ & ((\u_decoder|c_state.OPERATION~q\) # ((!\u_decoder|Equal2~0_combout\ & \u_decoder|c_state.DATA2~q\)))) # (!\u_uart|u_rx|c_state.STOP~q\ & (((\u_decoder|c_state.DATA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|c_state.STOP~q\,
	datab => \u_decoder|Equal2~0_combout\,
	datac => \u_decoder|c_state.DATA2~q\,
	datad => \u_decoder|c_state.OPERATION~q\,
	combout => \u_decoder|Selector5~0_combout\);

-- Location: FF_X88_Y55_N7
\u_decoder|c_state.DATA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|Selector5~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|c_state.DATA2~q\);

-- Location: LCCOMB_X88_Y55_N12
\u_decoder|cnt2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|cnt2[0]~2_combout\ = \u_decoder|cnt2\(0) $ (((\u_decoder|c_state.DATA2~q\ & \u_uart|u_rx|c_state.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|c_state.DATA2~q\,
	datac => \u_decoder|cnt2\(0),
	datad => \u_uart|u_rx|c_state.STOP~q\,
	combout => \u_decoder|cnt2[0]~2_combout\);

-- Location: FF_X88_Y55_N13
\u_decoder|cnt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|cnt2[0]~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|cnt2\(0));

-- Location: LCCOMB_X88_Y55_N2
\u_decoder|cnt2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|cnt2[1]~1_combout\ = \u_decoder|cnt2\(1) $ (((\u_decoder|c_state.DATA2~q\ & (\u_decoder|cnt2\(0) & \u_uart|u_rx|c_state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|c_state.DATA2~q\,
	datab => \u_decoder|cnt2\(0),
	datac => \u_decoder|cnt2\(1),
	datad => \u_uart|u_rx|c_state.STOP~q\,
	combout => \u_decoder|cnt2[1]~1_combout\);

-- Location: FF_X88_Y55_N3
\u_decoder|cnt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|cnt2[1]~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|cnt2\(1));

-- Location: LCCOMB_X87_Y55_N16
\u_decoder|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Equal2~1_combout\ = (\u_decoder|cnt2\(1) & \u_decoder|cnt2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|cnt2\(1),
	datac => \u_decoder|cnt2\(0),
	combout => \u_decoder|Equal2~1_combout\);

-- Location: LCCOMB_X87_Y55_N0
\u_decoder|cnt2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|cnt2[3]~0_combout\ = (\u_decoder|c_state.DATA2~q\ & \u_uart|u_rx|c_state.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|c_state.DATA2~q\,
	datad => \u_uart|u_rx|c_state.STOP~q\,
	combout => \u_decoder|cnt2[3]~0_combout\);

-- Location: LCCOMB_X87_Y55_N14
\u_decoder|cnt2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|cnt2~4_combout\ = (\u_decoder|cnt2\(0) & ((\u_decoder|cnt2\(2) & ((!\u_decoder|cnt2\(1)))) # (!\u_decoder|cnt2\(2) & (\u_decoder|cnt2\(3) & \u_decoder|cnt2\(1))))) # (!\u_decoder|cnt2\(0) & (((\u_decoder|cnt2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|cnt2\(3),
	datab => \u_decoder|cnt2\(0),
	datac => \u_decoder|cnt2\(2),
	datad => \u_decoder|cnt2\(1),
	combout => \u_decoder|cnt2~4_combout\);

-- Location: FF_X87_Y55_N15
\u_decoder|cnt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|cnt2~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|cnt2\(2));

-- Location: LCCOMB_X88_Y55_N30
\u_decoder|cnt2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|cnt2[3]~3_combout\ = \u_decoder|cnt2\(3) $ (((\u_decoder|Equal2~1_combout\ & (\u_decoder|cnt2[3]~0_combout\ & \u_decoder|cnt2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|Equal2~1_combout\,
	datab => \u_decoder|cnt2[3]~0_combout\,
	datac => \u_decoder|cnt2\(3),
	datad => \u_decoder|cnt2\(2),
	combout => \u_decoder|cnt2[3]~3_combout\);

-- Location: FF_X88_Y55_N31
\u_decoder|cnt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|cnt2[3]~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|cnt2\(3));

-- Location: LCCOMB_X87_Y55_N24
\u_decoder|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Equal2~0_combout\ = (!\u_decoder|cnt2\(3) & (\u_decoder|cnt2\(0) & (!\u_decoder|cnt2\(2) & \u_decoder|cnt2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|cnt2\(3),
	datab => \u_decoder|cnt2\(0),
	datac => \u_decoder|cnt2\(2),
	datad => \u_decoder|cnt2\(1),
	combout => \u_decoder|Equal2~0_combout\);

-- Location: LCCOMB_X90_Y55_N2
\u_decoder|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Selector6~0_combout\ = (\u_decoder|Equal2~0_combout\ & \u_decoder|c_state.DATA2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|Equal2~0_combout\,
	datac => \u_decoder|c_state.DATA2~q\,
	combout => \u_decoder|Selector6~0_combout\);

-- Location: FF_X90_Y55_N3
\u_decoder|c_state.END_PROTOCOL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|Selector6~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_rx|c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|c_state.END_PROTOCOL~q\);

-- Location: LCCOMB_X86_Y55_N0
\u_decoder|n_state.RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|n_state.RESULT~0_combout\ = (\u_uart|u_rx|c_state.STOP~q\ & \u_decoder|c_state.END_PROTOCOL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|c_state.STOP~q\,
	datad => \u_decoder|c_state.END_PROTOCOL~q\,
	combout => \u_decoder|n_state.RESULT~0_combout\);

-- Location: FF_X86_Y55_N1
\u_decoder|c_state.RESULT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|n_state.RESULT~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|c_state.RESULT~q\);

-- Location: LCCOMB_X86_Y55_N26
\u_decoder|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Selector0~0_combout\ = (!\u_decoder|c_state.RESULT~q\ & ((\u_decoder|c_state.IDLE~q\) # (\u_uart|u_rx|c_state.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|c_state.RESULT~q\,
	datac => \u_decoder|c_state.IDLE~q\,
	datad => \u_uart|u_rx|c_state.STOP~q\,
	combout => \u_decoder|Selector0~0_combout\);

-- Location: FF_X86_Y55_N27
\u_decoder|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|c_state.IDLE~q\);

-- Location: LCCOMB_X86_Y55_N22
\u_decoder|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Selector1~0_combout\ = (\u_decoder|c_state.IDLE~q\ & (!\u_decoder|n_state~1_combout\ & (\u_decoder|c_state.FORMAT~q\))) # (!\u_decoder|c_state.IDLE~q\ & ((\u_uart|u_rx|c_state.STOP~q\) # ((!\u_decoder|n_state~1_combout\ & 
-- \u_decoder|c_state.FORMAT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|c_state.IDLE~q\,
	datab => \u_decoder|n_state~1_combout\,
	datac => \u_decoder|c_state.FORMAT~q\,
	datad => \u_uart|u_rx|c_state.STOP~q\,
	combout => \u_decoder|Selector1~0_combout\);

-- Location: FF_X86_Y55_N23
\u_decoder|c_state.FORMAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|Selector1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|c_state.FORMAT~q\);

-- Location: LCCOMB_X86_Y55_N16
\u_decoder|c_state.TYPE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|c_state.TYPE~0_combout\ = (\u_decoder|n_state~1_combout\ & (\u_decoder|c_state.FORMAT~q\)) # (!\u_decoder|n_state~1_combout\ & ((\u_decoder|c_state.TYPE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|c_state.FORMAT~q\,
	datab => \u_decoder|n_state~1_combout\,
	datac => \u_decoder|c_state.TYPE~q\,
	combout => \u_decoder|c_state.TYPE~0_combout\);

-- Location: FF_X86_Y55_N17
\u_decoder|c_state.TYPE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|c_state.TYPE~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|c_state.TYPE~q\);

-- Location: LCCOMB_X86_Y55_N2
\u_decoder|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Selector3~1_combout\ = (\u_decoder|Selector3~0_combout\ & ((\u_decoder|c_state.DATA1~q\) # ((\u_decoder|n_state~1_combout\ & \u_decoder|c_state.TYPE~q\)))) # (!\u_decoder|Selector3~0_combout\ & (\u_decoder|n_state~1_combout\ & 
-- ((\u_decoder|c_state.TYPE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|Selector3~0_combout\,
	datab => \u_decoder|n_state~1_combout\,
	datac => \u_decoder|c_state.DATA1~q\,
	datad => \u_decoder|c_state.TYPE~q\,
	combout => \u_decoder|Selector3~1_combout\);

-- Location: FF_X86_Y55_N3
\u_decoder|c_state.DATA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|Selector3~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|c_state.DATA1~q\);

-- Location: LCCOMB_X86_Y55_N10
\u_decoder|cnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|cnt[0]~2_combout\ = \u_decoder|cnt\(0) $ (((\u_decoder|c_state.DATA1~q\ & \u_uart|u_rx|c_state.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|c_state.DATA1~q\,
	datac => \u_decoder|cnt\(0),
	datad => \u_uart|u_rx|c_state.STOP~q\,
	combout => \u_decoder|cnt[0]~2_combout\);

-- Location: FF_X86_Y55_N11
\u_decoder|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|cnt[0]~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|cnt\(0));

-- Location: LCCOMB_X86_Y55_N8
\u_decoder|cnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|cnt[1]~1_combout\ = \u_decoder|cnt\(1) $ (((\u_decoder|cnt\(0) & (\u_decoder|c_state.DATA1~q\ & \u_uart|u_rx|c_state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|cnt\(0),
	datab => \u_decoder|c_state.DATA1~q\,
	datac => \u_decoder|cnt\(1),
	datad => \u_uart|u_rx|c_state.STOP~q\,
	combout => \u_decoder|cnt[1]~1_combout\);

-- Location: FF_X86_Y55_N9
\u_decoder|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|cnt[1]~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|cnt\(1));

-- Location: LCCOMB_X86_Y55_N24
\u_decoder|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|cnt~4_combout\ = (\u_decoder|cnt\(1) & ((\u_decoder|cnt\(2) & ((!\u_decoder|cnt\(0)))) # (!\u_decoder|cnt\(2) & (\u_decoder|cnt\(3) & \u_decoder|cnt\(0))))) # (!\u_decoder|cnt\(1) & (((\u_decoder|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|cnt\(1),
	datab => \u_decoder|cnt\(3),
	datac => \u_decoder|cnt\(2),
	datad => \u_decoder|cnt\(0),
	combout => \u_decoder|cnt~4_combout\);

-- Location: FF_X86_Y55_N25
\u_decoder|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|cnt~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|cnt\(2));

-- Location: LCCOMB_X90_Y55_N8
\u_decoder|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Selector4~0_combout\ = (!\u_decoder|cnt\(2) & (!\u_decoder|cnt\(3) & (\u_decoder|c_state.DATA1~q\ & \u_decoder|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|cnt\(2),
	datab => \u_decoder|cnt\(3),
	datac => \u_decoder|c_state.DATA1~q\,
	datad => \u_decoder|Equal1~0_combout\,
	combout => \u_decoder|Selector4~0_combout\);

-- Location: FF_X90_Y55_N9
\u_decoder|c_state.OPERATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|Selector4~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_rx|c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|c_state.OPERATION~q\);

-- Location: LCCOMB_X87_Y55_N20
\u_decoder|operator_q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|operator_q[2]~1_combout\ = (\u_decoder|c_state.OPERATION~q\ & ((\u_uart|u_rx|rx_data\(2) & (\u_uart|u_rx|rx_data\(0))) # (!\u_uart|u_rx|rx_data\(2) & ((\u_uart|u_rx|rx_data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(0),
	datab => \u_uart|u_rx|rx_data\(2),
	datac => \u_decoder|c_state.OPERATION~q\,
	datad => \u_uart|u_rx|rx_data\(1),
	combout => \u_decoder|operator_q[2]~1_combout\);

-- Location: LCCOMB_X87_Y55_N30
\u_decoder|operator_q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|operator_q[2]~2_combout\ = (\u_uart|u_rx|rx_data\(3) & (\u_decoder|operator_q[2]~1_combout\ & (!\u_uart|u_rx|rx_data\(4) & \u_decoder|parser_done~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(3),
	datab => \u_decoder|operator_q[2]~1_combout\,
	datac => \u_uart|u_rx|rx_data\(4),
	datad => \u_decoder|parser_done~1_combout\,
	combout => \u_decoder|operator_q[2]~2_combout\);

-- Location: FF_X90_Y52_N5
\u_decoder|operator_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|operator_q~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_decoder|operator_q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|operator_q\(1));

-- Location: LCCOMB_X90_Y52_N18
\u_decoder|operator_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|operator_q~0_combout\ = ((\u_uart|u_rx|rx_data\(2) & ((\u_uart|u_rx|rx_data\(1)) # (!\u_uart|u_rx|rx_data\(0)))) # (!\u_uart|u_rx|rx_data\(2) & (!\u_uart|u_rx|rx_data\(1)))) # (!\u_decoder|Equal21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(2),
	datab => \u_uart|u_rx|rx_data\(1),
	datac => \u_uart|u_rx|rx_data\(0),
	datad => \u_decoder|Equal21~0_combout\,
	combout => \u_decoder|operator_q~0_combout\);

-- Location: FF_X90_Y52_N19
\u_decoder|operator_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|operator_q~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_decoder|operator_q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|operator_q\(2));

-- Location: LCCOMB_X90_Y52_N6
\u_decoder|operator_q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|operator_q~4_combout\ = (!\u_uart|u_rx|rx_data\(2) & (\u_uart|u_rx|rx_data\(1) & \u_decoder|Equal21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(2),
	datab => \u_uart|u_rx|rx_data\(1),
	datad => \u_decoder|Equal21~0_combout\,
	combout => \u_decoder|operator_q~4_combout\);

-- Location: FF_X90_Y52_N7
\u_decoder|operator_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|operator_q~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_decoder|operator_q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|operator_q\(0));

-- Location: LCCOMB_X87_Y54_N28
\u_decoder|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Equal3~0_combout\ = (!\u_uart|u_rx|rx_data\(5) & (!\u_uart|u_rx|rx_data\(7) & (!\u_uart|u_rx|rx_data\(3) & \u_uart|u_rx|rx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(5),
	datab => \u_uart|u_rx|rx_data\(7),
	datac => \u_uart|u_rx|rx_data\(3),
	datad => \u_uart|u_rx|rx_data\(6),
	combout => \u_decoder|Equal3~0_combout\);

-- Location: LCCOMB_X90_Y52_N2
\u_decoder|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Equal3~1_combout\ = (\u_uart|u_rx|rx_data\(4) & (\u_decoder|Equal3~0_combout\ & (\u_uart|u_rx|rx_data\(0) & \u_uart|u_rx|rx_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(4),
	datab => \u_decoder|Equal3~0_combout\,
	datac => \u_uart|u_rx|rx_data\(0),
	datad => \u_uart|u_rx|rx_data\(1),
	combout => \u_decoder|Equal3~1_combout\);

-- Location: LCCOMB_X90_Y52_N24
\u_decoder|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|Equal3~2_combout\ = (!\u_uart|u_rx|rx_data\(2) & \u_decoder|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(2),
	datad => \u_decoder|Equal3~1_combout\,
	combout => \u_decoder|Equal3~2_combout\);

-- Location: LCCOMB_X90_Y52_N12
\u_decoder|dtype_q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|dtype_q[1]~0_combout\ = (\u_decoder|c_state.TYPE~q\ & \u_decoder|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|c_state.TYPE~q\,
	datad => \u_decoder|Equal3~1_combout\,
	combout => \u_decoder|dtype_q[1]~0_combout\);

-- Location: FF_X90_Y52_N25
\u_decoder|dtype_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|Equal3~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_decoder|dtype_q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|dtype_q\(0));

-- Location: LCCOMB_X89_Y52_N22
\u_alu|calc_res_q~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|calc_res_q~28_combout\ = (!\u_decoder|operator_q\(1) & (!\u_decoder|operator_q\(2) & (\u_decoder|operator_q\(0) & \u_decoder|dtype_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|operator_q\(1),
	datab => \u_decoder|operator_q\(2),
	datac => \u_decoder|operator_q\(0),
	datad => \u_decoder|dtype_q\(0),
	combout => \u_alu|calc_res_q~28_combout\);

-- Location: LCCOMB_X87_Y54_N8
\u_decoder|parser_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|parser_done~0_combout\ = (\u_uart|u_rx|rx_data\(4) & (\u_uart|u_rx|rx_data\(0) & (\u_uart|u_rx|rx_data\(2) & !\u_uart|u_rx|rx_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(4),
	datab => \u_uart|u_rx|rx_data\(0),
	datac => \u_uart|u_rx|rx_data\(2),
	datad => \u_uart|u_rx|rx_data\(1),
	combout => \u_decoder|parser_done~0_combout\);

-- Location: LCCOMB_X86_Y55_N18
\u_decoder|parser_done~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|parser_done~2_combout\ = (\u_decoder|parser_done~1_combout\ & (\u_uart|u_rx|rx_data\(3) & (\u_decoder|parser_done~0_combout\ & \u_decoder|c_state.RESULT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|parser_done~1_combout\,
	datab => \u_uart|u_rx|rx_data\(3),
	datac => \u_decoder|parser_done~0_combout\,
	datad => \u_decoder|c_state.RESULT~q\,
	combout => \u_decoder|parser_done~2_combout\);

-- Location: LCCOMB_X89_Y52_N18
\u_alu|calc_res_q~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|calc_res_q~26_combout\ = \u_decoder|operator_q\(2) $ (((!\u_decoder|operator_q\(0) & !\u_decoder|operator_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|operator_q\(0),
	datab => \u_decoder|operator_q\(2),
	datad => \u_decoder|operator_q\(1),
	combout => \u_alu|calc_res_q~26_combout\);

-- Location: LCCOMB_X90_Y52_N0
\u_decoder|dtype_q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|dtype_q[1]~1_combout\ = !\u_decoder|Equal3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_decoder|Equal3~2_combout\,
	combout => \u_decoder|dtype_q[1]~1_combout\);

-- Location: FF_X90_Y52_N1
\u_decoder|dtype_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|dtype_q[1]~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_decoder|dtype_q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|dtype_q\(1));

-- Location: LCCOMB_X89_Y52_N12
\u_alu|calc_res_q~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|calc_res_q~27_combout\ = (\u_decoder|parser_done~2_combout\ & (!\u_alu|calc_res_q~26_combout\ & (\u_decoder|dtype_q\(1) $ (\u_decoder|dtype_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|parser_done~2_combout\,
	datab => \u_alu|calc_res_q~26_combout\,
	datac => \u_decoder|dtype_q\(1),
	datad => \u_decoder|dtype_q\(0),
	combout => \u_alu|calc_res_q~27_combout\);

-- Location: FF_X89_Y52_N23
\u_alu|calc_res_q.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|calc_res_q~28_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|calc_res_q~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|calc_res_q.0001~q\);

-- Location: LCCOMB_X89_Y52_N28
\u_alu|calc_res_q~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|calc_res_q~31_combout\ = (!\u_decoder|operator_q\(0) & (!\u_decoder|operator_q\(2) & !\u_decoder|dtype_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|operator_q\(0),
	datab => \u_decoder|operator_q\(2),
	datad => \u_decoder|dtype_q\(0),
	combout => \u_alu|calc_res_q~31_combout\);

-- Location: FF_X89_Y52_N29
\u_alu|calc_res_q.0110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|calc_res_q~31_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|calc_res_q~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|calc_res_q.0110~q\);

-- Location: LCCOMB_X89_Y52_N26
\u_alu|calc_res_q~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|calc_res_q~30_combout\ = (!\u_decoder|operator_q\(0) & (!\u_decoder|operator_q\(2) & \u_decoder|dtype_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|operator_q\(0),
	datab => \u_decoder|operator_q\(2),
	datad => \u_decoder|dtype_q\(0),
	combout => \u_alu|calc_res_q~30_combout\);

-- Location: FF_X89_Y52_N27
\u_alu|calc_res_q.0010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|calc_res_q~30_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|calc_res_q~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|calc_res_q.0010~q\);

-- Location: LCCOMB_X89_Y52_N0
\u_alu|calc_res_q~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|calc_res_q~29_combout\ = (!\u_decoder|operator_q\(1) & (!\u_decoder|operator_q\(2) & (\u_decoder|operator_q\(0) & !\u_decoder|dtype_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|operator_q\(1),
	datab => \u_decoder|operator_q\(2),
	datac => \u_decoder|operator_q\(0),
	datad => \u_decoder|dtype_q\(0),
	combout => \u_alu|calc_res_q~29_combout\);

-- Location: FF_X89_Y52_N1
\u_alu|calc_res_q.0101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|calc_res_q~29_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|calc_res_q~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|calc_res_q.0101~q\);

-- Location: LCCOMB_X89_Y52_N30
\u_alu|alu_done~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|alu_done~1_combout\ = (\u_alu|calc_res_q.0001~q\) # ((\u_alu|calc_res_q.0110~q\) # ((\u_alu|calc_res_q.0010~q\) # (\u_alu|calc_res_q.0101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|calc_res_q.0001~q\,
	datab => \u_alu|calc_res_q.0110~q\,
	datac => \u_alu|calc_res_q.0010~q\,
	datad => \u_alu|calc_res_q.0101~q\,
	combout => \u_alu|alu_done~1_combout\);

-- Location: LCCOMB_X89_Y52_N2
\u_alu|calc_res_q~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|calc_res_q~33_combout\ = (\u_decoder|operator_q\(1) & (!\u_decoder|operator_q\(2) & (\u_decoder|operator_q\(0) & \u_decoder|dtype_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|operator_q\(1),
	datab => \u_decoder|operator_q\(2),
	datac => \u_decoder|operator_q\(0),
	datad => \u_decoder|dtype_q\(0),
	combout => \u_alu|calc_res_q~33_combout\);

-- Location: FF_X89_Y52_N3
\u_alu|calc_res_q.0011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|calc_res_q~33_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|calc_res_q~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|calc_res_q.0011~q\);

-- Location: LCCOMB_X87_Y50_N16
\u_alu|u_shift_add_multi|cnt[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[0]~17_combout\ = \u_alu|u_shift_add_multi|cnt\(0) $ (VCC)
-- \u_alu|u_shift_add_multi|cnt[0]~18\ = CARRY(\u_alu|u_shift_add_multi|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|cnt\(0),
	datad => VCC,
	combout => \u_alu|u_shift_add_multi|cnt[0]~17_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[0]~18\);

-- Location: FF_X86_Y55_N19
\u_alu|u_divider|d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|parser_done~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|d1~q\);

-- Location: FF_X90_Y51_N13
\u_alu|u_divider|d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|d1~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|d2~q\);

-- Location: LCCOMB_X88_Y55_N24
\u_alu|u_shift_add_multi|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|Selector0~0_combout\ = (!\u_alu|u_shift_add_multi|c_state.STOP~q\ & ((\u_alu|u_shift_add_multi|c_state.IDLE~q\) # ((\u_alu|u_divider|d1~q\ & !\u_alu|u_divider|d2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|d1~q\,
	datab => \u_alu|u_shift_add_multi|c_state.STOP~q\,
	datac => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datad => \u_alu|u_divider|d2~q\,
	combout => \u_alu|u_shift_add_multi|Selector0~0_combout\);

-- Location: FF_X88_Y55_N25
\u_alu|u_shift_add_multi|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|c_state.IDLE~q\);

-- Location: LCCOMB_X87_Y50_N4
\u_alu|u_shift_add_multi|cnt[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[8]~51_combout\ = (!\u_alu|u_shift_add_multi|c_state.IDLE~q\) # (!\u_alu|u_shift_add_multi|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_shift_add_multi|Equal0~5_combout\,
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|cnt[8]~51_combout\);

-- Location: FF_X87_Y50_N17
\u_alu|u_shift_add_multi|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[0]~17_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(0));

-- Location: LCCOMB_X87_Y50_N18
\u_alu|u_shift_add_multi|cnt[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[1]~19_combout\ = (\u_alu|u_shift_add_multi|cnt\(1) & (!\u_alu|u_shift_add_multi|cnt[0]~18\)) # (!\u_alu|u_shift_add_multi|cnt\(1) & ((\u_alu|u_shift_add_multi|cnt[0]~18\) # (GND)))
-- \u_alu|u_shift_add_multi|cnt[1]~20\ = CARRY((!\u_alu|u_shift_add_multi|cnt[0]~18\) # (!\u_alu|u_shift_add_multi|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|cnt\(1),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[0]~18\,
	combout => \u_alu|u_shift_add_multi|cnt[1]~19_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[1]~20\);

-- Location: FF_X87_Y50_N19
\u_alu|u_shift_add_multi|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[1]~19_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(1));

-- Location: LCCOMB_X87_Y50_N20
\u_alu|u_shift_add_multi|cnt[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[2]~21_combout\ = (\u_alu|u_shift_add_multi|cnt\(2) & (\u_alu|u_shift_add_multi|cnt[1]~20\ $ (GND))) # (!\u_alu|u_shift_add_multi|cnt\(2) & (!\u_alu|u_shift_add_multi|cnt[1]~20\ & VCC))
-- \u_alu|u_shift_add_multi|cnt[2]~22\ = CARRY((\u_alu|u_shift_add_multi|cnt\(2) & !\u_alu|u_shift_add_multi|cnt[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|cnt\(2),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[1]~20\,
	combout => \u_alu|u_shift_add_multi|cnt[2]~21_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[2]~22\);

-- Location: FF_X87_Y50_N21
\u_alu|u_shift_add_multi|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[2]~21_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(2));

-- Location: LCCOMB_X87_Y50_N22
\u_alu|u_shift_add_multi|cnt[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[3]~23_combout\ = (\u_alu|u_shift_add_multi|cnt\(3) & (!\u_alu|u_shift_add_multi|cnt[2]~22\)) # (!\u_alu|u_shift_add_multi|cnt\(3) & ((\u_alu|u_shift_add_multi|cnt[2]~22\) # (GND)))
-- \u_alu|u_shift_add_multi|cnt[3]~24\ = CARRY((!\u_alu|u_shift_add_multi|cnt[2]~22\) # (!\u_alu|u_shift_add_multi|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|cnt\(3),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[2]~22\,
	combout => \u_alu|u_shift_add_multi|cnt[3]~23_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[3]~24\);

-- Location: FF_X87_Y50_N23
\u_alu|u_shift_add_multi|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[3]~23_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(3));

-- Location: LCCOMB_X87_Y50_N24
\u_alu|u_shift_add_multi|cnt[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[4]~25_combout\ = (\u_alu|u_shift_add_multi|cnt\(4) & (\u_alu|u_shift_add_multi|cnt[3]~24\ $ (GND))) # (!\u_alu|u_shift_add_multi|cnt\(4) & (!\u_alu|u_shift_add_multi|cnt[3]~24\ & VCC))
-- \u_alu|u_shift_add_multi|cnt[4]~26\ = CARRY((\u_alu|u_shift_add_multi|cnt\(4) & !\u_alu|u_shift_add_multi|cnt[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|cnt\(4),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[3]~24\,
	combout => \u_alu|u_shift_add_multi|cnt[4]~25_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[4]~26\);

-- Location: FF_X87_Y50_N25
\u_alu|u_shift_add_multi|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[4]~25_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(4));

-- Location: LCCOMB_X87_Y50_N26
\u_alu|u_shift_add_multi|cnt[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[5]~27_combout\ = (\u_alu|u_shift_add_multi|cnt\(5) & (!\u_alu|u_shift_add_multi|cnt[4]~26\)) # (!\u_alu|u_shift_add_multi|cnt\(5) & ((\u_alu|u_shift_add_multi|cnt[4]~26\) # (GND)))
-- \u_alu|u_shift_add_multi|cnt[5]~28\ = CARRY((!\u_alu|u_shift_add_multi|cnt[4]~26\) # (!\u_alu|u_shift_add_multi|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|cnt\(5),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[4]~26\,
	combout => \u_alu|u_shift_add_multi|cnt[5]~27_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[5]~28\);

-- Location: FF_X87_Y50_N27
\u_alu|u_shift_add_multi|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[5]~27_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(5));

-- Location: LCCOMB_X87_Y50_N28
\u_alu|u_shift_add_multi|cnt[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[6]~29_combout\ = (\u_alu|u_shift_add_multi|cnt\(6) & (\u_alu|u_shift_add_multi|cnt[5]~28\ $ (GND))) # (!\u_alu|u_shift_add_multi|cnt\(6) & (!\u_alu|u_shift_add_multi|cnt[5]~28\ & VCC))
-- \u_alu|u_shift_add_multi|cnt[6]~30\ = CARRY((\u_alu|u_shift_add_multi|cnt\(6) & !\u_alu|u_shift_add_multi|cnt[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|cnt\(6),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[5]~28\,
	combout => \u_alu|u_shift_add_multi|cnt[6]~29_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[6]~30\);

-- Location: FF_X87_Y50_N29
\u_alu|u_shift_add_multi|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[6]~29_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(6));

-- Location: LCCOMB_X87_Y50_N30
\u_alu|u_shift_add_multi|cnt[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[7]~31_combout\ = (\u_alu|u_shift_add_multi|cnt\(7) & (!\u_alu|u_shift_add_multi|cnt[6]~30\)) # (!\u_alu|u_shift_add_multi|cnt\(7) & ((\u_alu|u_shift_add_multi|cnt[6]~30\) # (GND)))
-- \u_alu|u_shift_add_multi|cnt[7]~32\ = CARRY((!\u_alu|u_shift_add_multi|cnt[6]~30\) # (!\u_alu|u_shift_add_multi|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|cnt\(7),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[6]~30\,
	combout => \u_alu|u_shift_add_multi|cnt[7]~31_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[7]~32\);

-- Location: FF_X87_Y50_N31
\u_alu|u_shift_add_multi|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[7]~31_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(7));

-- Location: LCCOMB_X87_Y50_N12
\u_alu|u_shift_add_multi|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|Equal0~1_combout\ = (\u_alu|u_shift_add_multi|cnt\(7)) # ((\u_alu|u_shift_add_multi|cnt\(6)) # ((\u_alu|u_shift_add_multi|cnt\(5)) # (\u_alu|u_shift_add_multi|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|cnt\(7),
	datab => \u_alu|u_shift_add_multi|cnt\(6),
	datac => \u_alu|u_shift_add_multi|cnt\(5),
	datad => \u_alu|u_shift_add_multi|cnt\(4),
	combout => \u_alu|u_shift_add_multi|Equal0~1_combout\);

-- Location: LCCOMB_X87_Y49_N0
\u_alu|u_shift_add_multi|cnt[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[8]~33_combout\ = (\u_alu|u_shift_add_multi|cnt\(8) & (\u_alu|u_shift_add_multi|cnt[7]~32\ $ (GND))) # (!\u_alu|u_shift_add_multi|cnt\(8) & (!\u_alu|u_shift_add_multi|cnt[7]~32\ & VCC))
-- \u_alu|u_shift_add_multi|cnt[8]~34\ = CARRY((\u_alu|u_shift_add_multi|cnt\(8) & !\u_alu|u_shift_add_multi|cnt[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|cnt\(8),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[7]~32\,
	combout => \u_alu|u_shift_add_multi|cnt[8]~33_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[8]~34\);

-- Location: FF_X87_Y49_N1
\u_alu|u_shift_add_multi|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[8]~33_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(8));

-- Location: LCCOMB_X87_Y49_N2
\u_alu|u_shift_add_multi|cnt[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[9]~35_combout\ = (\u_alu|u_shift_add_multi|cnt\(9) & (!\u_alu|u_shift_add_multi|cnt[8]~34\)) # (!\u_alu|u_shift_add_multi|cnt\(9) & ((\u_alu|u_shift_add_multi|cnt[8]~34\) # (GND)))
-- \u_alu|u_shift_add_multi|cnt[9]~36\ = CARRY((!\u_alu|u_shift_add_multi|cnt[8]~34\) # (!\u_alu|u_shift_add_multi|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|cnt\(9),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[8]~34\,
	combout => \u_alu|u_shift_add_multi|cnt[9]~35_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[9]~36\);

-- Location: FF_X87_Y49_N3
\u_alu|u_shift_add_multi|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[9]~35_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(9));

-- Location: LCCOMB_X87_Y49_N4
\u_alu|u_shift_add_multi|cnt[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[10]~37_combout\ = (\u_alu|u_shift_add_multi|cnt\(10) & (\u_alu|u_shift_add_multi|cnt[9]~36\ $ (GND))) # (!\u_alu|u_shift_add_multi|cnt\(10) & (!\u_alu|u_shift_add_multi|cnt[9]~36\ & VCC))
-- \u_alu|u_shift_add_multi|cnt[10]~38\ = CARRY((\u_alu|u_shift_add_multi|cnt\(10) & !\u_alu|u_shift_add_multi|cnt[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|cnt\(10),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[9]~36\,
	combout => \u_alu|u_shift_add_multi|cnt[10]~37_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[10]~38\);

-- Location: FF_X87_Y49_N5
\u_alu|u_shift_add_multi|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[10]~37_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(10));

-- Location: LCCOMB_X87_Y49_N6
\u_alu|u_shift_add_multi|cnt[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[11]~39_combout\ = (\u_alu|u_shift_add_multi|cnt\(11) & (!\u_alu|u_shift_add_multi|cnt[10]~38\)) # (!\u_alu|u_shift_add_multi|cnt\(11) & ((\u_alu|u_shift_add_multi|cnt[10]~38\) # (GND)))
-- \u_alu|u_shift_add_multi|cnt[11]~40\ = CARRY((!\u_alu|u_shift_add_multi|cnt[10]~38\) # (!\u_alu|u_shift_add_multi|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|cnt\(11),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[10]~38\,
	combout => \u_alu|u_shift_add_multi|cnt[11]~39_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[11]~40\);

-- Location: FF_X87_Y49_N7
\u_alu|u_shift_add_multi|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[11]~39_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(11));

-- Location: LCCOMB_X87_Y49_N8
\u_alu|u_shift_add_multi|cnt[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[12]~41_combout\ = (\u_alu|u_shift_add_multi|cnt\(12) & (\u_alu|u_shift_add_multi|cnt[11]~40\ $ (GND))) # (!\u_alu|u_shift_add_multi|cnt\(12) & (!\u_alu|u_shift_add_multi|cnt[11]~40\ & VCC))
-- \u_alu|u_shift_add_multi|cnt[12]~42\ = CARRY((\u_alu|u_shift_add_multi|cnt\(12) & !\u_alu|u_shift_add_multi|cnt[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|cnt\(12),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[11]~40\,
	combout => \u_alu|u_shift_add_multi|cnt[12]~41_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[12]~42\);

-- Location: FF_X87_Y49_N9
\u_alu|u_shift_add_multi|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[12]~41_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(12));

-- Location: LCCOMB_X87_Y49_N10
\u_alu|u_shift_add_multi|cnt[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[13]~43_combout\ = (\u_alu|u_shift_add_multi|cnt\(13) & (!\u_alu|u_shift_add_multi|cnt[12]~42\)) # (!\u_alu|u_shift_add_multi|cnt\(13) & ((\u_alu|u_shift_add_multi|cnt[12]~42\) # (GND)))
-- \u_alu|u_shift_add_multi|cnt[13]~44\ = CARRY((!\u_alu|u_shift_add_multi|cnt[12]~42\) # (!\u_alu|u_shift_add_multi|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|cnt\(13),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[12]~42\,
	combout => \u_alu|u_shift_add_multi|cnt[13]~43_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[13]~44\);

-- Location: FF_X87_Y49_N11
\u_alu|u_shift_add_multi|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[13]~43_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(13));

-- Location: LCCOMB_X87_Y49_N12
\u_alu|u_shift_add_multi|cnt[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[14]~45_combout\ = (\u_alu|u_shift_add_multi|cnt\(14) & (\u_alu|u_shift_add_multi|cnt[13]~44\ $ (GND))) # (!\u_alu|u_shift_add_multi|cnt\(14) & (!\u_alu|u_shift_add_multi|cnt[13]~44\ & VCC))
-- \u_alu|u_shift_add_multi|cnt[14]~46\ = CARRY((\u_alu|u_shift_add_multi|cnt\(14) & !\u_alu|u_shift_add_multi|cnt[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|cnt\(14),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[13]~44\,
	combout => \u_alu|u_shift_add_multi|cnt[14]~45_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[14]~46\);

-- Location: FF_X87_Y49_N13
\u_alu|u_shift_add_multi|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[14]~45_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(14));

-- Location: LCCOMB_X87_Y49_N14
\u_alu|u_shift_add_multi|cnt[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[15]~47_combout\ = (\u_alu|u_shift_add_multi|cnt\(15) & (!\u_alu|u_shift_add_multi|cnt[14]~46\)) # (!\u_alu|u_shift_add_multi|cnt\(15) & ((\u_alu|u_shift_add_multi|cnt[14]~46\) # (GND)))
-- \u_alu|u_shift_add_multi|cnt[15]~48\ = CARRY((!\u_alu|u_shift_add_multi|cnt[14]~46\) # (!\u_alu|u_shift_add_multi|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|cnt\(15),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|cnt[14]~46\,
	combout => \u_alu|u_shift_add_multi|cnt[15]~47_combout\,
	cout => \u_alu|u_shift_add_multi|cnt[15]~48\);

-- Location: FF_X87_Y49_N15
\u_alu|u_shift_add_multi|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[15]~47_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(15));

-- Location: LCCOMB_X87_Y49_N16
\u_alu|u_shift_add_multi|cnt[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|cnt[16]~49_combout\ = \u_alu|u_shift_add_multi|cnt[15]~48\ $ (!\u_alu|u_shift_add_multi|cnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_alu|u_shift_add_multi|cnt\(16),
	cin => \u_alu|u_shift_add_multi|cnt[15]~48\,
	combout => \u_alu|u_shift_add_multi|cnt[16]~49_combout\);

-- Location: FF_X87_Y49_N17
\u_alu|u_shift_add_multi|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|cnt[16]~49_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_shift_add_multi|cnt[8]~51_combout\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|cnt\(16));

-- Location: LCCOMB_X87_Y49_N26
\u_alu|u_shift_add_multi|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|Equal0~2_combout\ = (\u_alu|u_shift_add_multi|cnt\(11)) # ((\u_alu|u_shift_add_multi|cnt\(8)) # ((\u_alu|u_shift_add_multi|cnt\(10)) # (\u_alu|u_shift_add_multi|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|cnt\(11),
	datab => \u_alu|u_shift_add_multi|cnt\(8),
	datac => \u_alu|u_shift_add_multi|cnt\(10),
	datad => \u_alu|u_shift_add_multi|cnt\(9),
	combout => \u_alu|u_shift_add_multi|Equal0~2_combout\);

-- Location: LCCOMB_X87_Y49_N28
\u_alu|u_shift_add_multi|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|Equal0~3_combout\ = (\u_alu|u_shift_add_multi|cnt\(14)) # ((\u_alu|u_shift_add_multi|cnt\(15)) # ((\u_alu|u_shift_add_multi|cnt\(12)) # (\u_alu|u_shift_add_multi|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|cnt\(14),
	datab => \u_alu|u_shift_add_multi|cnt\(15),
	datac => \u_alu|u_shift_add_multi|cnt\(12),
	datad => \u_alu|u_shift_add_multi|cnt\(13),
	combout => \u_alu|u_shift_add_multi|Equal0~3_combout\);

-- Location: LCCOMB_X87_Y49_N30
\u_alu|u_shift_add_multi|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|Equal0~4_combout\ = (\u_alu|u_shift_add_multi|Equal0~2_combout\) # (\u_alu|u_shift_add_multi|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_shift_add_multi|Equal0~2_combout\,
	datad => \u_alu|u_shift_add_multi|Equal0~3_combout\,
	combout => \u_alu|u_shift_add_multi|Equal0~4_combout\);

-- Location: LCCOMB_X87_Y50_N2
\u_alu|u_shift_add_multi|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|Equal0~0_combout\ = (((!\u_alu|u_shift_add_multi|cnt\(1)) # (!\u_alu|u_shift_add_multi|cnt\(3))) # (!\u_alu|u_shift_add_multi|cnt\(2))) # (!\u_alu|u_shift_add_multi|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|cnt\(0),
	datab => \u_alu|u_shift_add_multi|cnt\(2),
	datac => \u_alu|u_shift_add_multi|cnt\(3),
	datad => \u_alu|u_shift_add_multi|cnt\(1),
	combout => \u_alu|u_shift_add_multi|Equal0~0_combout\);

-- Location: LCCOMB_X87_Y50_N14
\u_alu|u_shift_add_multi|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|Equal0~5_combout\ = (\u_alu|u_shift_add_multi|Equal0~1_combout\) # ((\u_alu|u_shift_add_multi|cnt\(16)) # ((\u_alu|u_shift_add_multi|Equal0~4_combout\) # (\u_alu|u_shift_add_multi|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|Equal0~1_combout\,
	datab => \u_alu|u_shift_add_multi|cnt\(16),
	datac => \u_alu|u_shift_add_multi|Equal0~4_combout\,
	datad => \u_alu|u_shift_add_multi|Equal0~0_combout\,
	combout => \u_alu|u_shift_add_multi|Equal0~5_combout\);

-- Location: LCCOMB_X90_Y51_N12
\u_alu|u_divider|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|comb~0_combout\ = (\u_alu|u_divider|d1~q\ & !\u_alu|u_divider|d2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|d1~q\,
	datac => \u_alu|u_divider|d2~q\,
	combout => \u_alu|u_divider|comb~0_combout\);

-- Location: LCCOMB_X87_Y50_N8
\u_alu|u_shift_add_multi|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|Selector1~0_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|Equal0~5_combout\ & (\u_alu|u_shift_add_multi|c_state.DATA~q\))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & 
-- ((\u_alu|u_divider|comb~0_combout\) # ((\u_alu|u_shift_add_multi|Equal0~5_combout\ & \u_alu|u_shift_add_multi|c_state.DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datab => \u_alu|u_shift_add_multi|Equal0~5_combout\,
	datac => \u_alu|u_shift_add_multi|c_state.DATA~q\,
	datad => \u_alu|u_divider|comb~0_combout\,
	combout => \u_alu|u_shift_add_multi|Selector1~0_combout\);

-- Location: FF_X87_Y50_N9
\u_alu|u_shift_add_multi|c_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|Selector1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|c_state.DATA~q\);

-- Location: LCCOMB_X87_Y50_N0
\u_alu|u_shift_add_multi|n_state.STOP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|n_state.STOP~0_combout\ = (!\u_alu|u_shift_add_multi|Equal0~5_combout\ & \u_alu|u_shift_add_multi|c_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|Equal0~5_combout\,
	datac => \u_alu|u_shift_add_multi|c_state.DATA~q\,
	combout => \u_alu|u_shift_add_multi|n_state.STOP~0_combout\);

-- Location: FF_X87_Y50_N1
\u_alu|u_shift_add_multi|c_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|n_state.STOP~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|c_state.STOP~q\);

-- Location: LCCOMB_X91_Y54_N0
\u_alu|u_booth|cnt[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[0]~18_combout\ = \u_alu|u_booth|cnt\(0) $ (VCC)
-- \u_alu|u_booth|cnt[0]~19\ = CARRY(\u_alu|u_booth|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|cnt\(0),
	datad => VCC,
	combout => \u_alu|u_booth|cnt[0]~18_combout\,
	cout => \u_alu|u_booth|cnt[0]~19\);

-- Location: LCCOMB_X88_Y55_N18
\u_alu|u_booth|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Selector0~0_combout\ = (!\u_alu|u_booth|c_state.STOP~q\ & ((\u_alu|u_booth|c_state.IDLE~q\) # ((\u_alu|u_divider|d1~q\ & !\u_alu|u_divider|d2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|d1~q\,
	datab => \u_alu|u_booth|c_state.STOP~q\,
	datac => \u_alu|u_booth|c_state.IDLE~q\,
	datad => \u_alu|u_divider|d2~q\,
	combout => \u_alu|u_booth|Selector0~0_combout\);

-- Location: FF_X88_Y55_N19
\u_alu|u_booth|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|c_state.IDLE~q\);

-- Location: LCCOMB_X88_Y55_N28
\u_alu|u_booth|cnt[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[6]~20_combout\ = (!\u_alu|u_booth|Equal0~4_combout\) # (!\u_alu|u_booth|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|c_state.IDLE~q\,
	datad => \u_alu|u_booth|Equal0~4_combout\,
	combout => \u_alu|u_booth|cnt[6]~20_combout\);

-- Location: FF_X91_Y54_N1
\u_alu|u_booth|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[0]~18_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(0));

-- Location: LCCOMB_X91_Y54_N2
\u_alu|u_booth|cnt[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[1]~21_combout\ = (\u_alu|u_booth|cnt\(1) & (!\u_alu|u_booth|cnt[0]~19\)) # (!\u_alu|u_booth|cnt\(1) & ((\u_alu|u_booth|cnt[0]~19\) # (GND)))
-- \u_alu|u_booth|cnt[1]~22\ = CARRY((!\u_alu|u_booth|cnt[0]~19\) # (!\u_alu|u_booth|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|cnt\(1),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[0]~19\,
	combout => \u_alu|u_booth|cnt[1]~21_combout\,
	cout => \u_alu|u_booth|cnt[1]~22\);

-- Location: FF_X91_Y54_N3
\u_alu|u_booth|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[1]~21_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(1));

-- Location: LCCOMB_X91_Y54_N4
\u_alu|u_booth|cnt[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[2]~23_combout\ = (\u_alu|u_booth|cnt\(2) & (\u_alu|u_booth|cnt[1]~22\ $ (GND))) # (!\u_alu|u_booth|cnt\(2) & (!\u_alu|u_booth|cnt[1]~22\ & VCC))
-- \u_alu|u_booth|cnt[2]~24\ = CARRY((\u_alu|u_booth|cnt\(2) & !\u_alu|u_booth|cnt[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|cnt\(2),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[1]~22\,
	combout => \u_alu|u_booth|cnt[2]~23_combout\,
	cout => \u_alu|u_booth|cnt[2]~24\);

-- Location: FF_X91_Y54_N5
\u_alu|u_booth|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[2]~23_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(2));

-- Location: LCCOMB_X91_Y54_N6
\u_alu|u_booth|cnt[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[3]~25_combout\ = (\u_alu|u_booth|cnt\(3) & (!\u_alu|u_booth|cnt[2]~24\)) # (!\u_alu|u_booth|cnt\(3) & ((\u_alu|u_booth|cnt[2]~24\) # (GND)))
-- \u_alu|u_booth|cnt[3]~26\ = CARRY((!\u_alu|u_booth|cnt[2]~24\) # (!\u_alu|u_booth|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|cnt\(3),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[2]~24\,
	combout => \u_alu|u_booth|cnt[3]~25_combout\,
	cout => \u_alu|u_booth|cnt[3]~26\);

-- Location: FF_X91_Y54_N7
\u_alu|u_booth|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[3]~25_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(3));

-- Location: LCCOMB_X91_Y54_N8
\u_alu|u_booth|cnt[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[4]~27_combout\ = (\u_alu|u_booth|cnt\(4) & (\u_alu|u_booth|cnt[3]~26\ $ (GND))) # (!\u_alu|u_booth|cnt\(4) & (!\u_alu|u_booth|cnt[3]~26\ & VCC))
-- \u_alu|u_booth|cnt[4]~28\ = CARRY((\u_alu|u_booth|cnt\(4) & !\u_alu|u_booth|cnt[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|cnt\(4),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[3]~26\,
	combout => \u_alu|u_booth|cnt[4]~27_combout\,
	cout => \u_alu|u_booth|cnt[4]~28\);

-- Location: FF_X91_Y54_N9
\u_alu|u_booth|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[4]~27_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(4));

-- Location: LCCOMB_X91_Y54_N10
\u_alu|u_booth|cnt[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[5]~29_combout\ = (\u_alu|u_booth|cnt\(5) & (!\u_alu|u_booth|cnt[4]~28\)) # (!\u_alu|u_booth|cnt\(5) & ((\u_alu|u_booth|cnt[4]~28\) # (GND)))
-- \u_alu|u_booth|cnt[5]~30\ = CARRY((!\u_alu|u_booth|cnt[4]~28\) # (!\u_alu|u_booth|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|cnt\(5),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[4]~28\,
	combout => \u_alu|u_booth|cnt[5]~29_combout\,
	cout => \u_alu|u_booth|cnt[5]~30\);

-- Location: FF_X91_Y54_N11
\u_alu|u_booth|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[5]~29_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(5));

-- Location: LCCOMB_X91_Y54_N12
\u_alu|u_booth|cnt[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[6]~31_combout\ = (\u_alu|u_booth|cnt\(6) & (\u_alu|u_booth|cnt[5]~30\ $ (GND))) # (!\u_alu|u_booth|cnt\(6) & (!\u_alu|u_booth|cnt[5]~30\ & VCC))
-- \u_alu|u_booth|cnt[6]~32\ = CARRY((\u_alu|u_booth|cnt\(6) & !\u_alu|u_booth|cnt[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|cnt\(6),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[5]~30\,
	combout => \u_alu|u_booth|cnt[6]~31_combout\,
	cout => \u_alu|u_booth|cnt[6]~32\);

-- Location: FF_X91_Y54_N13
\u_alu|u_booth|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[6]~31_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(6));

-- Location: LCCOMB_X91_Y54_N14
\u_alu|u_booth|cnt[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[7]~33_combout\ = (\u_alu|u_booth|cnt\(7) & (!\u_alu|u_booth|cnt[6]~32\)) # (!\u_alu|u_booth|cnt\(7) & ((\u_alu|u_booth|cnt[6]~32\) # (GND)))
-- \u_alu|u_booth|cnt[7]~34\ = CARRY((!\u_alu|u_booth|cnt[6]~32\) # (!\u_alu|u_booth|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|cnt\(7),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[6]~32\,
	combout => \u_alu|u_booth|cnt[7]~33_combout\,
	cout => \u_alu|u_booth|cnt[7]~34\);

-- Location: FF_X91_Y54_N15
\u_alu|u_booth|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[7]~33_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(7));

-- Location: LCCOMB_X91_Y54_N16
\u_alu|u_booth|cnt[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[8]~35_combout\ = (\u_alu|u_booth|cnt\(8) & (\u_alu|u_booth|cnt[7]~34\ $ (GND))) # (!\u_alu|u_booth|cnt\(8) & (!\u_alu|u_booth|cnt[7]~34\ & VCC))
-- \u_alu|u_booth|cnt[8]~36\ = CARRY((\u_alu|u_booth|cnt\(8) & !\u_alu|u_booth|cnt[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|cnt\(8),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[7]~34\,
	combout => \u_alu|u_booth|cnt[8]~35_combout\,
	cout => \u_alu|u_booth|cnt[8]~36\);

-- Location: FF_X91_Y54_N17
\u_alu|u_booth|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[8]~35_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(8));

-- Location: LCCOMB_X91_Y54_N18
\u_alu|u_booth|cnt[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[9]~37_combout\ = (\u_alu|u_booth|cnt\(9) & (!\u_alu|u_booth|cnt[8]~36\)) # (!\u_alu|u_booth|cnt\(9) & ((\u_alu|u_booth|cnt[8]~36\) # (GND)))
-- \u_alu|u_booth|cnt[9]~38\ = CARRY((!\u_alu|u_booth|cnt[8]~36\) # (!\u_alu|u_booth|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|cnt\(9),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[8]~36\,
	combout => \u_alu|u_booth|cnt[9]~37_combout\,
	cout => \u_alu|u_booth|cnt[9]~38\);

-- Location: FF_X91_Y54_N19
\u_alu|u_booth|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[9]~37_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(9));

-- Location: LCCOMB_X91_Y54_N20
\u_alu|u_booth|cnt[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[10]~39_combout\ = (\u_alu|u_booth|cnt\(10) & (\u_alu|u_booth|cnt[9]~38\ $ (GND))) # (!\u_alu|u_booth|cnt\(10) & (!\u_alu|u_booth|cnt[9]~38\ & VCC))
-- \u_alu|u_booth|cnt[10]~40\ = CARRY((\u_alu|u_booth|cnt\(10) & !\u_alu|u_booth|cnt[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|cnt\(10),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[9]~38\,
	combout => \u_alu|u_booth|cnt[10]~39_combout\,
	cout => \u_alu|u_booth|cnt[10]~40\);

-- Location: FF_X91_Y54_N21
\u_alu|u_booth|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[10]~39_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(10));

-- Location: LCCOMB_X91_Y54_N22
\u_alu|u_booth|cnt[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[11]~41_combout\ = (\u_alu|u_booth|cnt\(11) & (!\u_alu|u_booth|cnt[10]~40\)) # (!\u_alu|u_booth|cnt\(11) & ((\u_alu|u_booth|cnt[10]~40\) # (GND)))
-- \u_alu|u_booth|cnt[11]~42\ = CARRY((!\u_alu|u_booth|cnt[10]~40\) # (!\u_alu|u_booth|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|cnt\(11),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[10]~40\,
	combout => \u_alu|u_booth|cnt[11]~41_combout\,
	cout => \u_alu|u_booth|cnt[11]~42\);

-- Location: FF_X91_Y54_N23
\u_alu|u_booth|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[11]~41_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(11));

-- Location: LCCOMB_X90_Y54_N12
\u_alu|u_booth|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Equal0~2_combout\ = (\u_alu|u_booth|cnt\(11)) # ((\u_alu|u_booth|cnt\(9)) # ((\u_alu|u_booth|cnt\(10)) # (\u_alu|u_booth|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|cnt\(11),
	datab => \u_alu|u_booth|cnt\(9),
	datac => \u_alu|u_booth|cnt\(10),
	datad => \u_alu|u_booth|cnt\(8),
	combout => \u_alu|u_booth|Equal0~2_combout\);

-- Location: LCCOMB_X90_Y54_N2
\u_alu|u_booth|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Equal0~1_combout\ = (\u_alu|u_booth|cnt\(5)) # ((\u_alu|u_booth|cnt\(6)) # ((\u_alu|u_booth|cnt\(7)) # (!\u_alu|u_booth|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|cnt\(5),
	datab => \u_alu|u_booth|cnt\(6),
	datac => \u_alu|u_booth|cnt\(4),
	datad => \u_alu|u_booth|cnt\(7),
	combout => \u_alu|u_booth|Equal0~1_combout\);

-- Location: LCCOMB_X91_Y54_N24
\u_alu|u_booth|cnt[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[12]~43_combout\ = (\u_alu|u_booth|cnt\(12) & (\u_alu|u_booth|cnt[11]~42\ $ (GND))) # (!\u_alu|u_booth|cnt\(12) & (!\u_alu|u_booth|cnt[11]~42\ & VCC))
-- \u_alu|u_booth|cnt[12]~44\ = CARRY((\u_alu|u_booth|cnt\(12) & !\u_alu|u_booth|cnt[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|cnt\(12),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[11]~42\,
	combout => \u_alu|u_booth|cnt[12]~43_combout\,
	cout => \u_alu|u_booth|cnt[12]~44\);

-- Location: FF_X91_Y54_N25
\u_alu|u_booth|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[12]~43_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(12));

-- Location: LCCOMB_X91_Y54_N26
\u_alu|u_booth|cnt[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[13]~45_combout\ = (\u_alu|u_booth|cnt\(13) & (!\u_alu|u_booth|cnt[12]~44\)) # (!\u_alu|u_booth|cnt\(13) & ((\u_alu|u_booth|cnt[12]~44\) # (GND)))
-- \u_alu|u_booth|cnt[13]~46\ = CARRY((!\u_alu|u_booth|cnt[12]~44\) # (!\u_alu|u_booth|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|cnt\(13),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[12]~44\,
	combout => \u_alu|u_booth|cnt[13]~45_combout\,
	cout => \u_alu|u_booth|cnt[13]~46\);

-- Location: FF_X91_Y54_N27
\u_alu|u_booth|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[13]~45_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(13));

-- Location: LCCOMB_X91_Y54_N28
\u_alu|u_booth|cnt[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[14]~47_combout\ = (\u_alu|u_booth|cnt\(14) & (\u_alu|u_booth|cnt[13]~46\ $ (GND))) # (!\u_alu|u_booth|cnt\(14) & (!\u_alu|u_booth|cnt[13]~46\ & VCC))
-- \u_alu|u_booth|cnt[14]~48\ = CARRY((\u_alu|u_booth|cnt\(14) & !\u_alu|u_booth|cnt[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|cnt\(14),
	datad => VCC,
	cin => \u_alu|u_booth|cnt[13]~46\,
	combout => \u_alu|u_booth|cnt[14]~47_combout\,
	cout => \u_alu|u_booth|cnt[14]~48\);

-- Location: FF_X91_Y54_N29
\u_alu|u_booth|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[14]~47_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(14));

-- Location: LCCOMB_X91_Y54_N30
\u_alu|u_booth|cnt[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|cnt[15]~49_combout\ = \u_alu|u_booth|cnt\(15) $ (\u_alu|u_booth|cnt[14]~48\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|cnt\(15),
	cin => \u_alu|u_booth|cnt[14]~48\,
	combout => \u_alu|u_booth|cnt[15]~49_combout\);

-- Location: FF_X91_Y54_N31
\u_alu|u_booth|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|cnt[15]~49_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_booth|cnt[6]~20_combout\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|cnt\(15));

-- Location: LCCOMB_X90_Y54_N6
\u_alu|u_booth|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Equal0~3_combout\ = (\u_alu|u_booth|cnt\(13)) # ((\u_alu|u_booth|cnt\(14)) # ((\u_alu|u_booth|cnt\(15)) # (\u_alu|u_booth|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|cnt\(13),
	datab => \u_alu|u_booth|cnt\(14),
	datac => \u_alu|u_booth|cnt\(15),
	datad => \u_alu|u_booth|cnt\(12),
	combout => \u_alu|u_booth|Equal0~3_combout\);

-- Location: LCCOMB_X90_Y54_N24
\u_alu|u_booth|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Equal0~0_combout\ = (\u_alu|u_booth|cnt\(2)) # ((\u_alu|u_booth|cnt\(1)) # ((\u_alu|u_booth|cnt\(0)) # (\u_alu|u_booth|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|cnt\(2),
	datab => \u_alu|u_booth|cnt\(1),
	datac => \u_alu|u_booth|cnt\(0),
	datad => \u_alu|u_booth|cnt\(3),
	combout => \u_alu|u_booth|Equal0~0_combout\);

-- Location: LCCOMB_X90_Y54_N0
\u_alu|u_booth|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Equal0~4_combout\ = (\u_alu|u_booth|Equal0~2_combout\) # ((\u_alu|u_booth|Equal0~1_combout\) # ((\u_alu|u_booth|Equal0~3_combout\) # (\u_alu|u_booth|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|Equal0~2_combout\,
	datab => \u_alu|u_booth|Equal0~1_combout\,
	datac => \u_alu|u_booth|Equal0~3_combout\,
	datad => \u_alu|u_booth|Equal0~0_combout\,
	combout => \u_alu|u_booth|Equal0~4_combout\);

-- Location: LCCOMB_X90_Y51_N26
\u_alu|u_booth|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Selector1~0_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & (\u_alu|u_booth|Equal0~4_combout\ & (\u_alu|u_booth|c_state.DATA~q\))) # (!\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_divider|comb~0_combout\) # ((\u_alu|u_booth|Equal0~4_combout\ & 
-- \u_alu|u_booth|c_state.DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|c_state.IDLE~q\,
	datab => \u_alu|u_booth|Equal0~4_combout\,
	datac => \u_alu|u_booth|c_state.DATA~q\,
	datad => \u_alu|u_divider|comb~0_combout\,
	combout => \u_alu|u_booth|Selector1~0_combout\);

-- Location: FF_X90_Y51_N27
\u_alu|u_booth|c_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|Selector1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|c_state.DATA~q\);

-- Location: LCCOMB_X90_Y51_N4
\u_alu|u_booth|n_state.STOP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|n_state.STOP~0_combout\ = (!\u_alu|u_booth|Equal0~4_combout\ & \u_alu|u_booth|c_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|Equal0~4_combout\,
	datac => \u_alu|u_booth|c_state.DATA~q\,
	combout => \u_alu|u_booth|n_state.STOP~0_combout\);

-- Location: FF_X90_Y51_N5
\u_alu|u_booth|c_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|n_state.STOP~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|c_state.STOP~q\);

-- Location: LCCOMB_X89_Y52_N24
\u_alu|calc_res_q~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|calc_res_q~32_combout\ = (\u_decoder|operator_q\(1) & (!\u_decoder|operator_q\(2) & (\u_decoder|operator_q\(0) & !\u_decoder|dtype_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|operator_q\(1),
	datab => \u_decoder|operator_q\(2),
	datac => \u_decoder|operator_q\(0),
	datad => \u_decoder|dtype_q\(0),
	combout => \u_alu|calc_res_q~32_combout\);

-- Location: FF_X89_Y52_N25
\u_alu|calc_res_q.0111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|calc_res_q~32_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|calc_res_q~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|calc_res_q.0111~q\);

-- Location: LCCOMB_X88_Y52_N20
\u_alu|alu_done~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|alu_done~2_combout\ = (\u_alu|calc_res_q.0011~q\ & (!\u_alu|u_booth|c_state.STOP~q\ & ((!\u_alu|calc_res_q.0111~q\) # (!\u_alu|u_shift_add_multi|c_state.STOP~q\)))) # (!\u_alu|calc_res_q.0011~q\ & (((!\u_alu|calc_res_q.0111~q\)) # 
-- (!\u_alu|u_shift_add_multi|c_state.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|calc_res_q.0011~q\,
	datab => \u_alu|u_shift_add_multi|c_state.STOP~q\,
	datac => \u_alu|u_booth|c_state.STOP~q\,
	datad => \u_alu|calc_res_q.0111~q\,
	combout => \u_alu|alu_done~2_combout\);

-- Location: LCCOMB_X88_Y55_N22
\u_alu|u_add|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|Selector0~0_combout\ = (!\u_alu|u_add|c_state.STOP~q\ & ((\u_alu|u_add|c_state.IDLE~q\) # ((\u_alu|u_divider|d1~q\ & !\u_alu|u_divider|d2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|d1~q\,
	datab => \u_alu|u_add|c_state.STOP~q\,
	datac => \u_alu|u_add|c_state.IDLE~q\,
	datad => \u_alu|u_divider|d2~q\,
	combout => \u_alu|u_add|Selector0~0_combout\);

-- Location: FF_X88_Y55_N23
\u_alu|u_add|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|c_state.IDLE~q\);

-- Location: LCCOMB_X88_Y55_N20
\u_alu|u_add|n_state.DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|n_state.DATA~0_combout\ = (\u_alu|u_divider|d1~q\ & (!\u_alu|u_add|c_state.IDLE~q\ & !\u_alu|u_divider|d2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|d1~q\,
	datac => \u_alu|u_add|c_state.IDLE~q\,
	datad => \u_alu|u_divider|d2~q\,
	combout => \u_alu|u_add|n_state.DATA~0_combout\);

-- Location: FF_X88_Y55_N21
\u_alu|u_add|c_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|n_state.DATA~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|c_state.DATA~q\);

-- Location: FF_X89_Y52_N5
\u_alu|u_add|c_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_add|c_state.DATA~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|c_state.STOP~q\);

-- Location: LCCOMB_X89_Y51_N14
\u_alu|u_divider|cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|cnt[0]~5_combout\ = \u_alu|u_divider|cnt\(0) $ (VCC)
-- \u_alu|u_divider|cnt[0]~6\ = CARRY(\u_alu|u_divider|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|cnt\(0),
	datad => VCC,
	combout => \u_alu|u_divider|cnt[0]~5_combout\,
	cout => \u_alu|u_divider|cnt[0]~6\);

-- Location: LCCOMB_X89_Y51_N18
\u_alu|u_divider|cnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|cnt[2]~10_combout\ = (\u_alu|u_divider|cnt\(2) & (\u_alu|u_divider|cnt[1]~9\ $ (GND))) # (!\u_alu|u_divider|cnt\(2) & (!\u_alu|u_divider|cnt[1]~9\ & VCC))
-- \u_alu|u_divider|cnt[2]~11\ = CARRY((\u_alu|u_divider|cnt\(2) & !\u_alu|u_divider|cnt[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|cnt\(2),
	datad => VCC,
	cin => \u_alu|u_divider|cnt[1]~9\,
	combout => \u_alu|u_divider|cnt[2]~10_combout\,
	cout => \u_alu|u_divider|cnt[2]~11\);

-- Location: LCCOMB_X89_Y51_N20
\u_alu|u_divider|cnt[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|cnt[3]~12_combout\ = (\u_alu|u_divider|cnt\(3) & (!\u_alu|u_divider|cnt[2]~11\)) # (!\u_alu|u_divider|cnt\(3) & ((\u_alu|u_divider|cnt[2]~11\) # (GND)))
-- \u_alu|u_divider|cnt[3]~13\ = CARRY((!\u_alu|u_divider|cnt[2]~11\) # (!\u_alu|u_divider|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|cnt\(3),
	datad => VCC,
	cin => \u_alu|u_divider|cnt[2]~11\,
	combout => \u_alu|u_divider|cnt[3]~12_combout\,
	cout => \u_alu|u_divider|cnt[3]~13\);

-- Location: FF_X89_Y51_N21
\u_alu|u_divider|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|cnt[3]~12_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_divider|cnt[2]~7_combout\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|cnt\(3));

-- Location: LCCOMB_X89_Y51_N22
\u_alu|u_divider|cnt[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|cnt[4]~14_combout\ = \u_alu|u_divider|cnt\(4) $ (!\u_alu|u_divider|cnt[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|cnt\(4),
	cin => \u_alu|u_divider|cnt[3]~13\,
	combout => \u_alu|u_divider|cnt[4]~14_combout\);

-- Location: FF_X89_Y51_N23
\u_alu|u_divider|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|cnt[4]~14_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_divider|cnt[2]~7_combout\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|cnt\(4));

-- Location: LCCOMB_X89_Y51_N24
\u_alu|u_divider|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Selector0~0_combout\ = (!\u_alu|u_divider|c_state.STOP~q\ & ((\u_alu|u_divider|c_state.IDLE~q\) # ((!\u_alu|u_divider|d2~q\ & \u_alu|u_divider|d1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|c_state.STOP~q\,
	datab => \u_alu|u_divider|d2~q\,
	datac => \u_alu|u_divider|c_state.IDLE~q\,
	datad => \u_alu|u_divider|d1~q\,
	combout => \u_alu|u_divider|Selector0~0_combout\);

-- Location: FF_X89_Y51_N25
\u_alu|u_divider|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|c_state.IDLE~q\);

-- Location: LCCOMB_X89_Y51_N8
\u_alu|u_divider|cnt[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|cnt[2]~7_combout\ = ((!\u_alu|u_divider|Equal0~0_combout\ & \u_alu|u_divider|cnt\(4))) # (!\u_alu|u_divider|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|Equal0~0_combout\,
	datac => \u_alu|u_divider|cnt\(4),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|cnt[2]~7_combout\);

-- Location: FF_X89_Y51_N15
\u_alu|u_divider|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|cnt[0]~5_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_divider|cnt[2]~7_combout\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|cnt\(0));

-- Location: LCCOMB_X89_Y51_N16
\u_alu|u_divider|cnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|cnt[1]~8_combout\ = (\u_alu|u_divider|cnt\(1) & (!\u_alu|u_divider|cnt[0]~6\)) # (!\u_alu|u_divider|cnt\(1) & ((\u_alu|u_divider|cnt[0]~6\) # (GND)))
-- \u_alu|u_divider|cnt[1]~9\ = CARRY((!\u_alu|u_divider|cnt[0]~6\) # (!\u_alu|u_divider|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|cnt\(1),
	datad => VCC,
	cin => \u_alu|u_divider|cnt[0]~6\,
	combout => \u_alu|u_divider|cnt[1]~8_combout\,
	cout => \u_alu|u_divider|cnt[1]~9\);

-- Location: FF_X89_Y51_N17
\u_alu|u_divider|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|cnt[1]~8_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_divider|cnt[2]~7_combout\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|cnt\(1));

-- Location: FF_X89_Y51_N19
\u_alu|u_divider|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|cnt[2]~10_combout\,
	clrn => \n_rst~input_o\,
	sclr => \u_alu|u_divider|cnt[2]~7_combout\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|cnt\(2));

-- Location: LCCOMB_X89_Y51_N2
\u_alu|u_divider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Equal0~0_combout\ = (\u_alu|u_divider|cnt\(2)) # ((\u_alu|u_divider|cnt\(3)) # ((\u_alu|u_divider|cnt\(0)) # (\u_alu|u_divider|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|cnt\(2),
	datab => \u_alu|u_divider|cnt\(3),
	datac => \u_alu|u_divider|cnt\(0),
	datad => \u_alu|u_divider|cnt\(1),
	combout => \u_alu|u_divider|Equal0~0_combout\);

-- Location: LCCOMB_X89_Y51_N26
\u_alu|u_divider|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Selector1~0_combout\ = (!\u_alu|u_divider|c_state.IDLE~q\ & (!\u_alu|u_divider|d2~q\ & \u_alu|u_divider|d1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|c_state.IDLE~q\,
	datac => \u_alu|u_divider|d2~q\,
	datad => \u_alu|u_divider|d1~q\,
	combout => \u_alu|u_divider|Selector1~0_combout\);

-- Location: LCCOMB_X89_Y51_N12
\u_alu|u_divider|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Selector1~1_combout\ = (\u_alu|u_divider|Selector1~0_combout\) # ((\u_alu|u_divider|c_state.DATA~q\ & ((\u_alu|u_divider|Equal0~0_combout\) # (!\u_alu|u_divider|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Selector1~0_combout\,
	datab => \u_alu|u_divider|cnt\(4),
	datac => \u_alu|u_divider|c_state.DATA~q\,
	datad => \u_alu|u_divider|Equal0~0_combout\,
	combout => \u_alu|u_divider|Selector1~1_combout\);

-- Location: FF_X89_Y51_N13
\u_alu|u_divider|c_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Selector1~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|c_state.DATA~q\);

-- Location: LCCOMB_X89_Y51_N0
\u_alu|u_divider|n_state.STOP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|n_state.STOP~0_combout\ = (!\u_alu|u_divider|Equal0~0_combout\ & (\u_alu|u_divider|cnt\(4) & \u_alu|u_divider|c_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|Equal0~0_combout\,
	datac => \u_alu|u_divider|cnt\(4),
	datad => \u_alu|u_divider|c_state.DATA~q\,
	combout => \u_alu|u_divider|n_state.STOP~0_combout\);

-- Location: FF_X89_Y51_N1
\u_alu|u_divider|c_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|n_state.STOP~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|c_state.STOP~q\);

-- Location: LCCOMB_X89_Y52_N16
\u_alu|calc_res_q~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|calc_res_q~25_combout\ = (\u_decoder|operator_q\(2) & !\u_decoder|dtype_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|operator_q\(2),
	datad => \u_decoder|dtype_q\(0),
	combout => \u_alu|calc_res_q~25_combout\);

-- Location: FF_X89_Y52_N17
\u_alu|calc_res_q.1000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|calc_res_q~25_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|calc_res_q~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|calc_res_q.1000~q\);

-- Location: LCCOMB_X89_Y52_N10
\u_alu|alu_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|alu_done~0_combout\ = (\u_alu|u_divider|c_state.STOP~q\ & \u_alu|calc_res_q.1000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|c_state.STOP~q\,
	datad => \u_alu|calc_res_q.1000~q\,
	combout => \u_alu|alu_done~0_combout\);

-- Location: LCCOMB_X89_Y52_N4
\u_alu|alu_done~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|alu_done~3_combout\ = ((\u_alu|alu_done~0_combout\) # ((\u_alu|alu_done~1_combout\ & \u_alu|u_add|c_state.STOP~q\))) # (!\u_alu|alu_done~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~1_combout\,
	datab => \u_alu|alu_done~2_combout\,
	datac => \u_alu|u_add|c_state.STOP~q\,
	datad => \u_alu|alu_done~0_combout\,
	combout => \u_alu|alu_done~3_combout\);

-- Location: LCCOMB_X90_Y51_N22
\u_encoder|cnt2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt2[3]~0_combout\ = (\u_encoder|c_state.DATA~q\ & ((\u_encoder|Equal1~0_combout\) # (!\u_encoder|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|c_state.DATA~q\,
	datac => \u_encoder|Equal1~0_combout\,
	datad => \u_encoder|Equal0~4_combout\,
	combout => \u_encoder|cnt2[3]~0_combout\);

-- Location: LCCOMB_X90_Y51_N20
\u_encoder|cnt2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt2[0]~4_combout\ = (\u_encoder|c_state.DATA~q\ & (!\u_encoder|Equal1~0_combout\ & (\u_encoder|cnt2\(0) $ (!\u_encoder|Equal0~4_combout\)))) # (!\u_encoder|c_state.DATA~q\ & (((\u_encoder|cnt2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|c_state.DATA~q\,
	datab => \u_encoder|Equal1~0_combout\,
	datac => \u_encoder|cnt2\(0),
	datad => \u_encoder|Equal0~4_combout\,
	combout => \u_encoder|cnt2[0]~4_combout\);

-- Location: FF_X90_Y51_N21
\u_encoder|cnt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|cnt2[0]~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt2\(0));

-- Location: LCCOMB_X90_Y51_N18
\u_encoder|cnt2[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt2[1]~3_combout\ = \u_encoder|cnt2\(1) $ (((\u_encoder|cnt2[3]~0_combout\ & \u_encoder|cnt2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt2[3]~0_combout\,
	datab => \u_encoder|cnt2\(0),
	datac => \u_encoder|cnt2\(1),
	combout => \u_encoder|cnt2[1]~3_combout\);

-- Location: FF_X90_Y51_N19
\u_encoder|cnt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|cnt2[1]~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt2\(1));

-- Location: LCCOMB_X90_Y51_N8
\u_encoder|cnt2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt2[2]~2_combout\ = \u_encoder|cnt2\(2) $ (((\u_encoder|cnt2[3]~0_combout\ & (\u_encoder|cnt2\(0) & \u_encoder|cnt2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt2[3]~0_combout\,
	datab => \u_encoder|cnt2\(0),
	datac => \u_encoder|cnt2\(2),
	datad => \u_encoder|cnt2\(1),
	combout => \u_encoder|cnt2[2]~2_combout\);

-- Location: FF_X90_Y51_N9
\u_encoder|cnt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|cnt2[2]~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt2\(2));

-- Location: LCCOMB_X90_Y51_N28
\u_encoder|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add1~0_combout\ = \u_encoder|cnt2\(3) $ (((\u_encoder|cnt2\(0) & (\u_encoder|cnt2\(2) & \u_encoder|cnt2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt2\(3),
	datab => \u_encoder|cnt2\(0),
	datac => \u_encoder|cnt2\(2),
	datad => \u_encoder|cnt2\(1),
	combout => \u_encoder|Add1~0_combout\);

-- Location: LCCOMB_X90_Y51_N6
\u_encoder|cnt2[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt2[3]~1_combout\ = (\u_encoder|cnt2[3]~0_combout\ & (!\u_encoder|Equal1~0_combout\ & ((\u_encoder|Add1~0_combout\)))) # (!\u_encoder|cnt2[3]~0_combout\ & (((\u_encoder|cnt2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt2[3]~0_combout\,
	datab => \u_encoder|Equal1~0_combout\,
	datac => \u_encoder|cnt2\(3),
	datad => \u_encoder|Add1~0_combout\,
	combout => \u_encoder|cnt2[3]~1_combout\);

-- Location: FF_X90_Y51_N7
\u_encoder|cnt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|cnt2[3]~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt2\(3));

-- Location: LCCOMB_X90_Y51_N14
\u_encoder|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Equal1~0_combout\ = (\u_encoder|cnt2\(3) & (!\u_encoder|cnt2\(0) & (!\u_encoder|cnt2\(2) & !\u_encoder|cnt2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt2\(3),
	datab => \u_encoder|cnt2\(0),
	datac => \u_encoder|cnt2\(2),
	datad => \u_encoder|cnt2\(1),
	combout => \u_encoder|Equal1~0_combout\);

-- Location: LCCOMB_X90_Y51_N10
\u_encoder|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Selector0~0_combout\ = (!\u_encoder|cnt2\(3) & (!\u_encoder|cnt2\(0) & (!\u_encoder|cnt2\(2) & !\u_encoder|cnt2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt2\(3),
	datab => \u_encoder|cnt2\(0),
	datac => \u_encoder|cnt2\(2),
	datad => \u_encoder|cnt2\(1),
	combout => \u_encoder|Selector0~0_combout\);

-- Location: LCCOMB_X90_Y51_N0
\u_encoder|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Selector2~0_combout\ = (\u_encoder|Selector0~0_combout\ & (\u_encoder|Equal1~0_combout\ & ((\u_encoder|c_state.DATA~q\)))) # (!\u_encoder|Selector0~0_combout\ & ((\u_encoder|c_state.STOP~q\) # ((\u_encoder|Equal1~0_combout\ & 
-- \u_encoder|c_state.DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|Selector0~0_combout\,
	datab => \u_encoder|Equal1~0_combout\,
	datac => \u_encoder|c_state.STOP~q\,
	datad => \u_encoder|c_state.DATA~q\,
	combout => \u_encoder|Selector2~0_combout\);

-- Location: FF_X90_Y51_N1
\u_encoder|c_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Selector2~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|c_state.STOP~q\);

-- Location: LCCOMB_X90_Y51_N16
\u_encoder|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Selector0~1_combout\ = (\u_alu|alu_done~3_combout\ & (((!\u_encoder|Selector0~0_combout\)) # (!\u_encoder|c_state.STOP~q\))) # (!\u_alu|alu_done~3_combout\ & (\u_encoder|c_state.IDLE~q\ & ((!\u_encoder|Selector0~0_combout\) # 
-- (!\u_encoder|c_state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~3_combout\,
	datab => \u_encoder|c_state.STOP~q\,
	datac => \u_encoder|c_state.IDLE~q\,
	datad => \u_encoder|Selector0~0_combout\,
	combout => \u_encoder|Selector0~1_combout\);

-- Location: FF_X90_Y51_N17
\u_encoder|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Selector0~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|c_state.IDLE~q\);

-- Location: LCCOMB_X90_Y51_N2
\u_encoder|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Selector1~0_combout\ = (\u_alu|alu_done~3_combout\ & (((!\u_encoder|Equal1~0_combout\ & \u_encoder|c_state.DATA~q\)) # (!\u_encoder|c_state.IDLE~q\))) # (!\u_alu|alu_done~3_combout\ & (!\u_encoder|Equal1~0_combout\ & 
-- (\u_encoder|c_state.DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~3_combout\,
	datab => \u_encoder|Equal1~0_combout\,
	datac => \u_encoder|c_state.DATA~q\,
	datad => \u_encoder|c_state.IDLE~q\,
	combout => \u_encoder|Selector1~0_combout\);

-- Location: FF_X90_Y51_N3
\u_encoder|c_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Selector1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|c_state.DATA~q\);

-- Location: FF_X92_Y51_N21
\u_encoder|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|cnt~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(0));

-- Location: LCCOMB_X91_Y51_N2
\u_encoder|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~2_combout\ = (\u_encoder|cnt\(1) & (!\u_encoder|Add0~1\)) # (!\u_encoder|cnt\(1) & ((\u_encoder|Add0~1\) # (GND)))
-- \u_encoder|Add0~3\ = CARRY((!\u_encoder|Add0~1\) # (!\u_encoder|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|cnt\(1),
	datad => VCC,
	cin => \u_encoder|Add0~1\,
	combout => \u_encoder|Add0~2_combout\,
	cout => \u_encoder|Add0~3\);

-- Location: LCCOMB_X92_Y51_N14
\u_encoder|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt~5_combout\ = (\u_encoder|Add0~2_combout\ & \u_encoder|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|Add0~2_combout\,
	datac => \u_encoder|Equal0~4_combout\,
	combout => \u_encoder|cnt~5_combout\);

-- Location: FF_X92_Y51_N15
\u_encoder|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|cnt~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(1));

-- Location: LCCOMB_X91_Y51_N4
\u_encoder|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~4_combout\ = (\u_encoder|cnt\(2) & (\u_encoder|Add0~3\ $ (GND))) # (!\u_encoder|cnt\(2) & (!\u_encoder|Add0~3\ & VCC))
-- \u_encoder|Add0~5\ = CARRY((\u_encoder|cnt\(2) & !\u_encoder|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|cnt\(2),
	datad => VCC,
	cin => \u_encoder|Add0~3\,
	combout => \u_encoder|Add0~4_combout\,
	cout => \u_encoder|Add0~5\);

-- Location: FF_X91_Y51_N5
\u_encoder|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Add0~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(2));

-- Location: LCCOMB_X91_Y51_N6
\u_encoder|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~6_combout\ = (\u_encoder|cnt\(3) & (!\u_encoder|Add0~5\)) # (!\u_encoder|cnt\(3) & ((\u_encoder|Add0~5\) # (GND)))
-- \u_encoder|Add0~7\ = CARRY((!\u_encoder|Add0~5\) # (!\u_encoder|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(3),
	datad => VCC,
	cin => \u_encoder|Add0~5\,
	combout => \u_encoder|Add0~6_combout\,
	cout => \u_encoder|Add0~7\);

-- Location: FF_X91_Y51_N7
\u_encoder|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Add0~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(3));

-- Location: LCCOMB_X91_Y51_N8
\u_encoder|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~8_combout\ = (\u_encoder|cnt\(4) & (\u_encoder|Add0~7\ $ (GND))) # (!\u_encoder|cnt\(4) & (!\u_encoder|Add0~7\ & VCC))
-- \u_encoder|Add0~9\ = CARRY((\u_encoder|cnt\(4) & !\u_encoder|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|cnt\(4),
	datad => VCC,
	cin => \u_encoder|Add0~7\,
	combout => \u_encoder|Add0~8_combout\,
	cout => \u_encoder|Add0~9\);

-- Location: LCCOMB_X92_Y51_N0
\u_encoder|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt~3_combout\ = (\u_encoder|Add0~8_combout\ & \u_encoder|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|Add0~8_combout\,
	datac => \u_encoder|Equal0~4_combout\,
	combout => \u_encoder|cnt~3_combout\);

-- Location: FF_X92_Y51_N1
\u_encoder|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|cnt~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(4));

-- Location: LCCOMB_X91_Y51_N10
\u_encoder|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~10_combout\ = (\u_encoder|cnt\(5) & (!\u_encoder|Add0~9\)) # (!\u_encoder|cnt\(5) & ((\u_encoder|Add0~9\) # (GND)))
-- \u_encoder|Add0~11\ = CARRY((!\u_encoder|Add0~9\) # (!\u_encoder|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(5),
	datad => VCC,
	cin => \u_encoder|Add0~9\,
	combout => \u_encoder|Add0~10_combout\,
	cout => \u_encoder|Add0~11\);

-- Location: LCCOMB_X92_Y51_N6
\u_encoder|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt~2_combout\ = (\u_encoder|Add0~10_combout\ & \u_encoder|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|Add0~10_combout\,
	datac => \u_encoder|Equal0~4_combout\,
	combout => \u_encoder|cnt~2_combout\);

-- Location: FF_X92_Y51_N7
\u_encoder|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|cnt~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(5));

-- Location: LCCOMB_X91_Y51_N12
\u_encoder|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~12_combout\ = (\u_encoder|cnt\(6) & (\u_encoder|Add0~11\ $ (GND))) # (!\u_encoder|cnt\(6) & (!\u_encoder|Add0~11\ & VCC))
-- \u_encoder|Add0~13\ = CARRY((\u_encoder|cnt\(6) & !\u_encoder|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(6),
	datad => VCC,
	cin => \u_encoder|Add0~11\,
	combout => \u_encoder|Add0~12_combout\,
	cout => \u_encoder|Add0~13\);

-- Location: FF_X91_Y51_N13
\u_encoder|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Add0~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(6));

-- Location: LCCOMB_X91_Y51_N14
\u_encoder|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~14_combout\ = (\u_encoder|cnt\(7) & (!\u_encoder|Add0~13\)) # (!\u_encoder|cnt\(7) & ((\u_encoder|Add0~13\) # (GND)))
-- \u_encoder|Add0~15\ = CARRY((!\u_encoder|Add0~13\) # (!\u_encoder|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|cnt\(7),
	datad => VCC,
	cin => \u_encoder|Add0~13\,
	combout => \u_encoder|Add0~14_combout\,
	cout => \u_encoder|Add0~15\);

-- Location: LCCOMB_X92_Y51_N12
\u_encoder|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt~1_combout\ = (\u_encoder|Add0~14_combout\ & \u_encoder|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|Add0~14_combout\,
	datac => \u_encoder|Equal0~4_combout\,
	combout => \u_encoder|cnt~1_combout\);

-- Location: FF_X92_Y51_N13
\u_encoder|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|cnt~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(7));

-- Location: LCCOMB_X92_Y51_N10
\u_encoder|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Equal0~2_combout\ = (((\u_encoder|cnt\(6)) # (!\u_encoder|cnt\(5))) # (!\u_encoder|cnt\(4))) # (!\u_encoder|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(7),
	datab => \u_encoder|cnt\(4),
	datac => \u_encoder|cnt\(6),
	datad => \u_encoder|cnt\(5),
	combout => \u_encoder|Equal0~2_combout\);

-- Location: LCCOMB_X92_Y51_N16
\u_encoder|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Equal0~3_combout\ = (\u_encoder|cnt\(3)) # ((\u_encoder|cnt\(2)) # ((\u_encoder|cnt\(0)) # (!\u_encoder|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(3),
	datab => \u_encoder|cnt\(2),
	datac => \u_encoder|cnt\(1),
	datad => \u_encoder|cnt\(0),
	combout => \u_encoder|Equal0~3_combout\);

-- Location: LCCOMB_X91_Y51_N16
\u_encoder|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~16_combout\ = (\u_encoder|cnt\(8) & (\u_encoder|Add0~15\ $ (GND))) # (!\u_encoder|cnt\(8) & (!\u_encoder|Add0~15\ & VCC))
-- \u_encoder|Add0~17\ = CARRY((\u_encoder|cnt\(8) & !\u_encoder|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|cnt\(8),
	datad => VCC,
	cin => \u_encoder|Add0~15\,
	combout => \u_encoder|Add0~16_combout\,
	cout => \u_encoder|Add0~17\);

-- Location: LCCOMB_X92_Y51_N24
\u_encoder|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|cnt~0_combout\ = (\u_encoder|Equal0~4_combout\ & \u_encoder|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|Equal0~4_combout\,
	datac => \u_encoder|Add0~16_combout\,
	combout => \u_encoder|cnt~0_combout\);

-- Location: FF_X92_Y51_N25
\u_encoder|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|cnt~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(8));

-- Location: LCCOMB_X91_Y51_N18
\u_encoder|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~18_combout\ = (\u_encoder|cnt\(9) & (!\u_encoder|Add0~17\)) # (!\u_encoder|cnt\(9) & ((\u_encoder|Add0~17\) # (GND)))
-- \u_encoder|Add0~19\ = CARRY((!\u_encoder|Add0~17\) # (!\u_encoder|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|cnt\(9),
	datad => VCC,
	cin => \u_encoder|Add0~17\,
	combout => \u_encoder|Add0~18_combout\,
	cout => \u_encoder|Add0~19\);

-- Location: FF_X91_Y51_N19
\u_encoder|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Add0~18_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(9));

-- Location: LCCOMB_X91_Y51_N20
\u_encoder|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~20_combout\ = (\u_encoder|cnt\(10) & (\u_encoder|Add0~19\ $ (GND))) # (!\u_encoder|cnt\(10) & (!\u_encoder|Add0~19\ & VCC))
-- \u_encoder|Add0~21\ = CARRY((\u_encoder|cnt\(10) & !\u_encoder|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|cnt\(10),
	datad => VCC,
	cin => \u_encoder|Add0~19\,
	combout => \u_encoder|Add0~20_combout\,
	cout => \u_encoder|Add0~21\);

-- Location: FF_X91_Y51_N21
\u_encoder|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Add0~20_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(10));

-- Location: LCCOMB_X91_Y51_N22
\u_encoder|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~22_combout\ = (\u_encoder|cnt\(11) & (!\u_encoder|Add0~21\)) # (!\u_encoder|cnt\(11) & ((\u_encoder|Add0~21\) # (GND)))
-- \u_encoder|Add0~23\ = CARRY((!\u_encoder|Add0~21\) # (!\u_encoder|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(11),
	datad => VCC,
	cin => \u_encoder|Add0~21\,
	combout => \u_encoder|Add0~22_combout\,
	cout => \u_encoder|Add0~23\);

-- Location: FF_X91_Y51_N23
\u_encoder|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Add0~22_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(11));

-- Location: LCCOMB_X91_Y51_N24
\u_encoder|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~24_combout\ = (\u_encoder|cnt\(12) & (\u_encoder|Add0~23\ $ (GND))) # (!\u_encoder|cnt\(12) & (!\u_encoder|Add0~23\ & VCC))
-- \u_encoder|Add0~25\ = CARRY((\u_encoder|cnt\(12) & !\u_encoder|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|cnt\(12),
	datad => VCC,
	cin => \u_encoder|Add0~23\,
	combout => \u_encoder|Add0~24_combout\,
	cout => \u_encoder|Add0~25\);

-- Location: FF_X91_Y51_N25
\u_encoder|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Add0~24_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(12));

-- Location: LCCOMB_X91_Y51_N26
\u_encoder|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~26_combout\ = (\u_encoder|cnt\(13) & (!\u_encoder|Add0~25\)) # (!\u_encoder|cnt\(13) & ((\u_encoder|Add0~25\) # (GND)))
-- \u_encoder|Add0~27\ = CARRY((!\u_encoder|Add0~25\) # (!\u_encoder|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(13),
	datad => VCC,
	cin => \u_encoder|Add0~25\,
	combout => \u_encoder|Add0~26_combout\,
	cout => \u_encoder|Add0~27\);

-- Location: FF_X91_Y51_N27
\u_encoder|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Add0~26_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(13));

-- Location: LCCOMB_X91_Y51_N28
\u_encoder|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~28_combout\ = (\u_encoder|cnt\(14) & (\u_encoder|Add0~27\ $ (GND))) # (!\u_encoder|cnt\(14) & (!\u_encoder|Add0~27\ & VCC))
-- \u_encoder|Add0~29\ = CARRY((\u_encoder|cnt\(14) & !\u_encoder|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|cnt\(14),
	datad => VCC,
	cin => \u_encoder|Add0~27\,
	combout => \u_encoder|Add0~28_combout\,
	cout => \u_encoder|Add0~29\);

-- Location: FF_X91_Y51_N29
\u_encoder|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Add0~28_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(14));

-- Location: LCCOMB_X91_Y51_N30
\u_encoder|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Add0~30_combout\ = \u_encoder|cnt\(15) $ (\u_encoder|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(15),
	cin => \u_encoder|Add0~29\,
	combout => \u_encoder|Add0~30_combout\);

-- Location: FF_X91_Y51_N31
\u_encoder|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|Add0~30_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|cnt\(15));

-- Location: LCCOMB_X90_Y51_N24
\u_encoder|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Equal0~0_combout\ = (\u_encoder|cnt\(13)) # ((\u_encoder|cnt\(14)) # ((\u_encoder|cnt\(15)) # (\u_encoder|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(13),
	datab => \u_encoder|cnt\(14),
	datac => \u_encoder|cnt\(15),
	datad => \u_encoder|cnt\(12),
	combout => \u_encoder|Equal0~0_combout\);

-- Location: LCCOMB_X92_Y51_N18
\u_encoder|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Equal0~1_combout\ = ((\u_encoder|cnt\(10)) # ((\u_encoder|cnt\(11)) # (\u_encoder|cnt\(9)))) # (!\u_encoder|cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|cnt\(8),
	datab => \u_encoder|cnt\(10),
	datac => \u_encoder|cnt\(11),
	datad => \u_encoder|cnt\(9),
	combout => \u_encoder|Equal0~1_combout\);

-- Location: LCCOMB_X92_Y51_N26
\u_encoder|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|Equal0~4_combout\ = (\u_encoder|Equal0~2_combout\) # ((\u_encoder|Equal0~3_combout\) # ((\u_encoder|Equal0~0_combout\) # (\u_encoder|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|Equal0~2_combout\,
	datab => \u_encoder|Equal0~3_combout\,
	datac => \u_encoder|Equal0~0_combout\,
	datad => \u_encoder|Equal0~1_combout\,
	combout => \u_encoder|Equal0~4_combout\);

-- Location: LCCOMB_X91_Y56_N0
\u_uart|u_tx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~0_combout\ = \u_uart|u_tx|cnt\(0) $ (VCC)
-- \u_uart|u_tx|Add0~1\ = CARRY(\u_uart|u_tx|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|cnt\(0),
	datad => VCC,
	combout => \u_uart|u_tx|Add0~0_combout\,
	cout => \u_uart|u_tx|Add0~1\);

-- Location: LCCOMB_X92_Y56_N12
\u_uart|u_tx|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt~4_combout\ = (\u_uart|u_tx|Equal0~4_combout\ & \u_uart|u_tx|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|Equal0~4_combout\,
	datac => \u_uart|u_tx|Add0~0_combout\,
	combout => \u_uart|u_tx|cnt~4_combout\);

-- Location: LCCOMB_X92_Y52_N18
\u_uart|u_tx|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Selector3~0_combout\ = (\u_uart|u_tx|c_state.DATA~q\ & ((\u_uart|u_tx|Equal1~0_combout\) # ((\u_uart|u_tx|c_state.STOP~q\ & !\u_uart|u_tx|Equal2~0_combout\)))) # (!\u_uart|u_tx|c_state.DATA~q\ & (((\u_uart|u_tx|c_state.STOP~q\ & 
-- !\u_uart|u_tx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|c_state.DATA~q\,
	datab => \u_uart|u_tx|Equal1~0_combout\,
	datac => \u_uart|u_tx|c_state.STOP~q\,
	datad => \u_uart|u_tx|Equal2~0_combout\,
	combout => \u_uart|u_tx|Selector3~0_combout\);

-- Location: FF_X92_Y52_N19
\u_uart|u_tx|c_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Selector3~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|c_state.STOP~q\);

-- Location: LCCOMB_X92_Y52_N6
\u_uart|u_tx|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Selector0~0_combout\ = (\u_encoder|Equal0~4_combout\ & (\u_uart|u_tx|c_state.IDLE~q\ & ((!\u_uart|u_tx|c_state.STOP~q\) # (!\u_uart|u_tx|Equal2~0_combout\)))) # (!\u_encoder|Equal0~4_combout\ & (((!\u_uart|u_tx|c_state.STOP~q\)) # 
-- (!\u_uart|u_tx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|Equal0~4_combout\,
	datab => \u_uart|u_tx|Equal2~0_combout\,
	datac => \u_uart|u_tx|c_state.IDLE~q\,
	datad => \u_uart|u_tx|c_state.STOP~q\,
	combout => \u_uart|u_tx|Selector0~0_combout\);

-- Location: FF_X92_Y52_N7
\u_uart|u_tx|c_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Selector0~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|c_state.IDLE~q\);

-- Location: FF_X92_Y56_N13
\u_uart|u_tx|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|cnt~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(0));

-- Location: LCCOMB_X91_Y56_N2
\u_uart|u_tx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~2_combout\ = (\u_uart|u_tx|cnt\(1) & (!\u_uart|u_tx|Add0~1\)) # (!\u_uart|u_tx|cnt\(1) & ((\u_uart|u_tx|Add0~1\) # (GND)))
-- \u_uart|u_tx|Add0~3\ = CARRY((!\u_uart|u_tx|Add0~1\) # (!\u_uart|u_tx|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|cnt\(1),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~1\,
	combout => \u_uart|u_tx|Add0~2_combout\,
	cout => \u_uart|u_tx|Add0~3\);

-- Location: LCCOMB_X92_Y56_N14
\u_uart|u_tx|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt~5_combout\ = (\u_uart|u_tx|Add0~2_combout\ & \u_uart|u_tx|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|Add0~2_combout\,
	datac => \u_uart|u_tx|Equal0~4_combout\,
	combout => \u_uart|u_tx|cnt~5_combout\);

-- Location: FF_X92_Y56_N15
\u_uart|u_tx|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|cnt~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(1));

-- Location: LCCOMB_X91_Y56_N4
\u_uart|u_tx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~4_combout\ = (\u_uart|u_tx|cnt\(2) & (\u_uart|u_tx|Add0~3\ $ (GND))) # (!\u_uart|u_tx|cnt\(2) & (!\u_uart|u_tx|Add0~3\ & VCC))
-- \u_uart|u_tx|Add0~5\ = CARRY((\u_uart|u_tx|cnt\(2) & !\u_uart|u_tx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|cnt\(2),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~3\,
	combout => \u_uart|u_tx|Add0~4_combout\,
	cout => \u_uart|u_tx|Add0~5\);

-- Location: FF_X91_Y56_N5
\u_uart|u_tx|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Add0~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(2));

-- Location: LCCOMB_X91_Y56_N6
\u_uart|u_tx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~6_combout\ = (\u_uart|u_tx|cnt\(3) & (!\u_uart|u_tx|Add0~5\)) # (!\u_uart|u_tx|cnt\(3) & ((\u_uart|u_tx|Add0~5\) # (GND)))
-- \u_uart|u_tx|Add0~7\ = CARRY((!\u_uart|u_tx|Add0~5\) # (!\u_uart|u_tx|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt\(3),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~5\,
	combout => \u_uart|u_tx|Add0~6_combout\,
	cout => \u_uart|u_tx|Add0~7\);

-- Location: FF_X91_Y56_N7
\u_uart|u_tx|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Add0~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(3));

-- Location: LCCOMB_X91_Y56_N8
\u_uart|u_tx|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~8_combout\ = (\u_uart|u_tx|cnt\(4) & (\u_uart|u_tx|Add0~7\ $ (GND))) # (!\u_uart|u_tx|cnt\(4) & (!\u_uart|u_tx|Add0~7\ & VCC))
-- \u_uart|u_tx|Add0~9\ = CARRY((\u_uart|u_tx|cnt\(4) & !\u_uart|u_tx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|cnt\(4),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~7\,
	combout => \u_uart|u_tx|Add0~8_combout\,
	cout => \u_uart|u_tx|Add0~9\);

-- Location: LCCOMB_X92_Y56_N0
\u_uart|u_tx|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt~3_combout\ = (\u_uart|u_tx|Add0~8_combout\ & \u_uart|u_tx|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|Add0~8_combout\,
	datac => \u_uart|u_tx|Equal0~4_combout\,
	combout => \u_uart|u_tx|cnt~3_combout\);

-- Location: FF_X92_Y56_N1
\u_uart|u_tx|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|cnt~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(4));

-- Location: LCCOMB_X91_Y56_N10
\u_uart|u_tx|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~10_combout\ = (\u_uart|u_tx|cnt\(5) & (!\u_uart|u_tx|Add0~9\)) # (!\u_uart|u_tx|cnt\(5) & ((\u_uart|u_tx|Add0~9\) # (GND)))
-- \u_uart|u_tx|Add0~11\ = CARRY((!\u_uart|u_tx|Add0~9\) # (!\u_uart|u_tx|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt\(5),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~9\,
	combout => \u_uart|u_tx|Add0~10_combout\,
	cout => \u_uart|u_tx|Add0~11\);

-- Location: LCCOMB_X92_Y56_N6
\u_uart|u_tx|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt~2_combout\ = (\u_uart|u_tx|Add0~10_combout\ & \u_uart|u_tx|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|Add0~10_combout\,
	datac => \u_uart|u_tx|Equal0~4_combout\,
	combout => \u_uart|u_tx|cnt~2_combout\);

-- Location: FF_X92_Y56_N7
\u_uart|u_tx|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|cnt~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(5));

-- Location: LCCOMB_X91_Y56_N12
\u_uart|u_tx|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~12_combout\ = (\u_uart|u_tx|cnt\(6) & (\u_uart|u_tx|Add0~11\ $ (GND))) # (!\u_uart|u_tx|cnt\(6) & (!\u_uart|u_tx|Add0~11\ & VCC))
-- \u_uart|u_tx|Add0~13\ = CARRY((\u_uart|u_tx|cnt\(6) & !\u_uart|u_tx|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt\(6),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~11\,
	combout => \u_uart|u_tx|Add0~12_combout\,
	cout => \u_uart|u_tx|Add0~13\);

-- Location: FF_X91_Y56_N13
\u_uart|u_tx|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Add0~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(6));

-- Location: LCCOMB_X91_Y56_N14
\u_uart|u_tx|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~14_combout\ = (\u_uart|u_tx|cnt\(7) & (!\u_uart|u_tx|Add0~13\)) # (!\u_uart|u_tx|cnt\(7) & ((\u_uart|u_tx|Add0~13\) # (GND)))
-- \u_uart|u_tx|Add0~15\ = CARRY((!\u_uart|u_tx|Add0~13\) # (!\u_uart|u_tx|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|cnt\(7),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~13\,
	combout => \u_uart|u_tx|Add0~14_combout\,
	cout => \u_uart|u_tx|Add0~15\);

-- Location: LCCOMB_X92_Y56_N28
\u_uart|u_tx|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt~1_combout\ = (\u_uart|u_tx|Equal0~4_combout\ & \u_uart|u_tx|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart|u_tx|Equal0~4_combout\,
	datad => \u_uart|u_tx|Add0~14_combout\,
	combout => \u_uart|u_tx|cnt~1_combout\);

-- Location: FF_X92_Y56_N29
\u_uart|u_tx|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|cnt~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(7));

-- Location: LCCOMB_X92_Y56_N10
\u_uart|u_tx|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Equal0~2_combout\ = (((\u_uart|u_tx|cnt\(6)) # (!\u_uart|u_tx|cnt\(4))) # (!\u_uart|u_tx|cnt\(7))) # (!\u_uart|u_tx|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt\(5),
	datab => \u_uart|u_tx|cnt\(7),
	datac => \u_uart|u_tx|cnt\(6),
	datad => \u_uart|u_tx|cnt\(4),
	combout => \u_uart|u_tx|Equal0~2_combout\);

-- Location: LCCOMB_X92_Y56_N24
\u_uart|u_tx|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Equal0~3_combout\ = ((\u_uart|u_tx|cnt\(3)) # ((\u_uart|u_tx|cnt\(2)) # (\u_uart|u_tx|cnt\(0)))) # (!\u_uart|u_tx|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt\(1),
	datab => \u_uart|u_tx|cnt\(3),
	datac => \u_uart|u_tx|cnt\(2),
	datad => \u_uart|u_tx|cnt\(0),
	combout => \u_uart|u_tx|Equal0~3_combout\);

-- Location: LCCOMB_X91_Y56_N16
\u_uart|u_tx|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~16_combout\ = (\u_uart|u_tx|cnt\(8) & (\u_uart|u_tx|Add0~15\ $ (GND))) # (!\u_uart|u_tx|cnt\(8) & (!\u_uart|u_tx|Add0~15\ & VCC))
-- \u_uart|u_tx|Add0~17\ = CARRY((\u_uart|u_tx|cnt\(8) & !\u_uart|u_tx|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|cnt\(8),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~15\,
	combout => \u_uart|u_tx|Add0~16_combout\,
	cout => \u_uart|u_tx|Add0~17\);

-- Location: LCCOMB_X92_Y56_N16
\u_uart|u_tx|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt~0_combout\ = (\u_uart|u_tx|Equal0~4_combout\ & \u_uart|u_tx|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|Equal0~4_combout\,
	datac => \u_uart|u_tx|Add0~16_combout\,
	combout => \u_uart|u_tx|cnt~0_combout\);

-- Location: FF_X92_Y56_N17
\u_uart|u_tx|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|cnt~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(8));

-- Location: LCCOMB_X91_Y56_N18
\u_uart|u_tx|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~18_combout\ = (\u_uart|u_tx|cnt\(9) & (!\u_uart|u_tx|Add0~17\)) # (!\u_uart|u_tx|cnt\(9) & ((\u_uart|u_tx|Add0~17\) # (GND)))
-- \u_uart|u_tx|Add0~19\ = CARRY((!\u_uart|u_tx|Add0~17\) # (!\u_uart|u_tx|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|cnt\(9),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~17\,
	combout => \u_uart|u_tx|Add0~18_combout\,
	cout => \u_uart|u_tx|Add0~19\);

-- Location: FF_X91_Y56_N19
\u_uart|u_tx|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Add0~18_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(9));

-- Location: LCCOMB_X91_Y56_N20
\u_uart|u_tx|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~20_combout\ = (\u_uart|u_tx|cnt\(10) & (\u_uart|u_tx|Add0~19\ $ (GND))) # (!\u_uart|u_tx|cnt\(10) & (!\u_uart|u_tx|Add0~19\ & VCC))
-- \u_uart|u_tx|Add0~21\ = CARRY((\u_uart|u_tx|cnt\(10) & !\u_uart|u_tx|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|cnt\(10),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~19\,
	combout => \u_uart|u_tx|Add0~20_combout\,
	cout => \u_uart|u_tx|Add0~21\);

-- Location: FF_X91_Y56_N21
\u_uart|u_tx|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Add0~20_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(10));

-- Location: LCCOMB_X91_Y56_N22
\u_uart|u_tx|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~22_combout\ = (\u_uart|u_tx|cnt\(11) & (!\u_uart|u_tx|Add0~21\)) # (!\u_uart|u_tx|cnt\(11) & ((\u_uart|u_tx|Add0~21\) # (GND)))
-- \u_uart|u_tx|Add0~23\ = CARRY((!\u_uart|u_tx|Add0~21\) # (!\u_uart|u_tx|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt\(11),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~21\,
	combout => \u_uart|u_tx|Add0~22_combout\,
	cout => \u_uart|u_tx|Add0~23\);

-- Location: FF_X91_Y56_N23
\u_uart|u_tx|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Add0~22_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(11));

-- Location: LCCOMB_X91_Y56_N24
\u_uart|u_tx|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~24_combout\ = (\u_uart|u_tx|cnt\(12) & (\u_uart|u_tx|Add0~23\ $ (GND))) # (!\u_uart|u_tx|cnt\(12) & (!\u_uart|u_tx|Add0~23\ & VCC))
-- \u_uart|u_tx|Add0~25\ = CARRY((\u_uart|u_tx|cnt\(12) & !\u_uart|u_tx|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|cnt\(12),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~23\,
	combout => \u_uart|u_tx|Add0~24_combout\,
	cout => \u_uart|u_tx|Add0~25\);

-- Location: FF_X91_Y56_N25
\u_uart|u_tx|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Add0~24_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(12));

-- Location: LCCOMB_X91_Y56_N26
\u_uart|u_tx|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~26_combout\ = (\u_uart|u_tx|cnt\(13) & (!\u_uart|u_tx|Add0~25\)) # (!\u_uart|u_tx|cnt\(13) & ((\u_uart|u_tx|Add0~25\) # (GND)))
-- \u_uart|u_tx|Add0~27\ = CARRY((!\u_uart|u_tx|Add0~25\) # (!\u_uart|u_tx|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt\(13),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~25\,
	combout => \u_uart|u_tx|Add0~26_combout\,
	cout => \u_uart|u_tx|Add0~27\);

-- Location: FF_X91_Y56_N27
\u_uart|u_tx|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Add0~26_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(13));

-- Location: LCCOMB_X91_Y56_N28
\u_uart|u_tx|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~28_combout\ = (\u_uart|u_tx|cnt\(14) & (\u_uart|u_tx|Add0~27\ $ (GND))) # (!\u_uart|u_tx|cnt\(14) & (!\u_uart|u_tx|Add0~27\ & VCC))
-- \u_uart|u_tx|Add0~29\ = CARRY((\u_uart|u_tx|cnt\(14) & !\u_uart|u_tx|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|cnt\(14),
	datad => VCC,
	cin => \u_uart|u_tx|Add0~27\,
	combout => \u_uart|u_tx|Add0~28_combout\,
	cout => \u_uart|u_tx|Add0~29\);

-- Location: FF_X91_Y56_N29
\u_uart|u_tx|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Add0~28_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(14));

-- Location: LCCOMB_X91_Y56_N30
\u_uart|u_tx|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add0~30_combout\ = \u_uart|u_tx|cnt\(15) $ (\u_uart|u_tx|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt\(15),
	cin => \u_uart|u_tx|Add0~29\,
	combout => \u_uart|u_tx|Add0~30_combout\);

-- Location: FF_X91_Y56_N31
\u_uart|u_tx|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Add0~30_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|c_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt\(15));

-- Location: LCCOMB_X90_Y56_N24
\u_uart|u_tx|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Equal0~0_combout\ = (\u_uart|u_tx|cnt\(13)) # ((\u_uart|u_tx|cnt\(14)) # ((\u_uart|u_tx|cnt\(15)) # (\u_uart|u_tx|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt\(13),
	datab => \u_uart|u_tx|cnt\(14),
	datac => \u_uart|u_tx|cnt\(15),
	datad => \u_uart|u_tx|cnt\(12),
	combout => \u_uart|u_tx|Equal0~0_combout\);

-- Location: LCCOMB_X92_Y56_N18
\u_uart|u_tx|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Equal0~1_combout\ = ((\u_uart|u_tx|cnt\(9)) # ((\u_uart|u_tx|cnt\(10)) # (\u_uart|u_tx|cnt\(11)))) # (!\u_uart|u_tx|cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt\(8),
	datab => \u_uart|u_tx|cnt\(9),
	datac => \u_uart|u_tx|cnt\(10),
	datad => \u_uart|u_tx|cnt\(11),
	combout => \u_uart|u_tx|Equal0~1_combout\);

-- Location: LCCOMB_X92_Y56_N26
\u_uart|u_tx|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Equal0~4_combout\ = (\u_uart|u_tx|Equal0~2_combout\) # ((\u_uart|u_tx|Equal0~3_combout\) # ((\u_uart|u_tx|Equal0~0_combout\) # (\u_uart|u_tx|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|Equal0~2_combout\,
	datab => \u_uart|u_tx|Equal0~3_combout\,
	datac => \u_uart|u_tx|Equal0~0_combout\,
	datad => \u_uart|u_tx|Equal0~1_combout\,
	combout => \u_uart|u_tx|Equal0~4_combout\);

-- Location: LCCOMB_X92_Y52_N20
\u_uart|u_tx|cnt2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt2[0]~2_combout\ = \u_uart|u_tx|cnt2\(0) $ (((\u_uart|u_tx|c_state.DATA~q\ & ((\u_uart|u_tx|Equal1~0_combout\) # (!\u_uart|u_tx|Equal0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|c_state.DATA~q\,
	datab => \u_uart|u_tx|Equal1~0_combout\,
	datac => \u_uart|u_tx|cnt2\(0),
	datad => \u_uart|u_tx|Equal0~4_combout\,
	combout => \u_uart|u_tx|cnt2[0]~2_combout\);

-- Location: FF_X92_Y52_N21
\u_uart|u_tx|cnt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|cnt2[0]~2_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt2\(0));

-- Location: LCCOMB_X92_Y56_N30
\u_uart|u_tx|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Add1~0_combout\ = \u_uart|u_tx|cnt2\(3) $ (((\u_uart|u_tx|cnt2\(2) & (\u_uart|u_tx|cnt2\(0) & \u_uart|u_tx|cnt2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt2\(2),
	datab => \u_uart|u_tx|cnt2\(0),
	datac => \u_uart|u_tx|cnt2\(1),
	datad => \u_uart|u_tx|cnt2\(3),
	combout => \u_uart|u_tx|Add1~0_combout\);

-- Location: LCCOMB_X92_Y56_N20
\u_uart|u_tx|cnt2[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt2[3]~1_combout\ = (\u_uart|u_tx|cnt2[3]~0_combout\ & (\u_uart|u_tx|Add1~0_combout\ & ((!\u_uart|u_tx|Equal1~0_combout\)))) # (!\u_uart|u_tx|cnt2[3]~0_combout\ & (((\u_uart|u_tx|cnt2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|Add1~0_combout\,
	datab => \u_uart|u_tx|cnt2[3]~0_combout\,
	datac => \u_uart|u_tx|cnt2\(3),
	datad => \u_uart|u_tx|Equal1~0_combout\,
	combout => \u_uart|u_tx|cnt2[3]~1_combout\);

-- Location: FF_X92_Y56_N21
\u_uart|u_tx|cnt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|cnt2[3]~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt2\(3));

-- Location: LCCOMB_X92_Y56_N2
\u_uart|u_tx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Equal1~0_combout\ = (!\u_uart|u_tx|cnt2\(2) & (\u_uart|u_tx|cnt2\(0) & (!\u_uart|u_tx|cnt2\(1) & \u_uart|u_tx|cnt2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt2\(2),
	datab => \u_uart|u_tx|cnt2\(0),
	datac => \u_uart|u_tx|cnt2\(1),
	datad => \u_uart|u_tx|cnt2\(3),
	combout => \u_uart|u_tx|Equal1~0_combout\);

-- Location: LCCOMB_X92_Y52_N12
\u_uart|u_tx|cnt2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt2[3]~0_combout\ = (\u_uart|u_tx|c_state.DATA~q\ & ((\u_uart|u_tx|Equal1~0_combout\) # (!\u_uart|u_tx|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|Equal1~0_combout\,
	datac => \u_uart|u_tx|c_state.DATA~q\,
	datad => \u_uart|u_tx|Equal0~4_combout\,
	combout => \u_uart|u_tx|cnt2[3]~0_combout\);

-- Location: LCCOMB_X92_Y56_N8
\u_uart|u_tx|cnt2[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt2[1]~4_combout\ = (\u_uart|u_tx|cnt2[3]~0_combout\ & (!\u_uart|u_tx|Equal1~0_combout\ & (\u_uart|u_tx|cnt2\(0) $ (\u_uart|u_tx|cnt2\(1))))) # (!\u_uart|u_tx|cnt2[3]~0_combout\ & (((\u_uart|u_tx|cnt2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt2[3]~0_combout\,
	datab => \u_uart|u_tx|cnt2\(0),
	datac => \u_uart|u_tx|cnt2\(1),
	datad => \u_uart|u_tx|Equal1~0_combout\,
	combout => \u_uart|u_tx|cnt2[1]~4_combout\);

-- Location: FF_X92_Y56_N9
\u_uart|u_tx|cnt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|cnt2[1]~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt2\(1));

-- Location: LCCOMB_X92_Y56_N22
\u_uart|u_tx|cnt2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|cnt2[2]~3_combout\ = \u_uart|u_tx|cnt2\(2) $ (((\u_uart|u_tx|cnt2\(1) & (\u_uart|u_tx|cnt2[3]~0_combout\ & \u_uart|u_tx|cnt2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt2\(1),
	datab => \u_uart|u_tx|cnt2[3]~0_combout\,
	datac => \u_uart|u_tx|cnt2\(2),
	datad => \u_uart|u_tx|cnt2\(0),
	combout => \u_uart|u_tx|cnt2[2]~3_combout\);

-- Location: FF_X92_Y56_N23
\u_uart|u_tx|cnt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|cnt2[2]~3_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|cnt2\(2));

-- Location: LCCOMB_X92_Y56_N4
\u_uart|u_tx|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Equal2~0_combout\ = (!\u_uart|u_tx|cnt2\(2) & (!\u_uart|u_tx|cnt2\(0) & (!\u_uart|u_tx|cnt2\(1) & !\u_uart|u_tx|cnt2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|cnt2\(2),
	datab => \u_uart|u_tx|cnt2\(0),
	datac => \u_uart|u_tx|cnt2\(1),
	datad => \u_uart|u_tx|cnt2\(3),
	combout => \u_uart|u_tx|Equal2~0_combout\);

-- Location: LCCOMB_X92_Y52_N4
\u_uart|u_tx|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Selector1~0_combout\ = (\u_encoder|Equal0~4_combout\ & (!\u_uart|u_tx|Equal2~0_combout\ & (\u_uart|u_tx|c_state.START~q\))) # (!\u_encoder|Equal0~4_combout\ & (((!\u_uart|u_tx|Equal2~0_combout\ & \u_uart|u_tx|c_state.START~q\)) # 
-- (!\u_uart|u_tx|c_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|Equal0~4_combout\,
	datab => \u_uart|u_tx|Equal2~0_combout\,
	datac => \u_uart|u_tx|c_state.START~q\,
	datad => \u_uart|u_tx|c_state.IDLE~q\,
	combout => \u_uart|u_tx|Selector1~0_combout\);

-- Location: FF_X92_Y52_N5
\u_uart|u_tx|c_state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Selector1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|c_state.START~q\);

-- Location: LCCOMB_X92_Y52_N22
\u_uart|u_tx|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|Selector2~0_combout\ = (\u_uart|u_tx|c_state.START~q\ & ((\u_uart|u_tx|Equal2~0_combout\) # ((!\u_uart|u_tx|Equal1~0_combout\ & \u_uart|u_tx|c_state.DATA~q\)))) # (!\u_uart|u_tx|c_state.START~q\ & (!\u_uart|u_tx|Equal1~0_combout\ & 
-- (\u_uart|u_tx|c_state.DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|c_state.START~q\,
	datab => \u_uart|u_tx|Equal1~0_combout\,
	datac => \u_uart|u_tx|c_state.DATA~q\,
	datad => \u_uart|u_tx|Equal2~0_combout\,
	combout => \u_uart|u_tx|Selector2~0_combout\);

-- Location: FF_X92_Y52_N23
\u_uart|u_tx|c_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|Selector2~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|c_state.DATA~q\);

-- Location: LCCOMB_X88_Y53_N10
\u_decoder|src2_q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q~7_combout\ = (\u_uart|u_rx|rx_data\(6) & ((\u_uart|u_rx|rx_data\(1) & ((\u_uart|u_rx|rx_data\(2)) # (!\u_uart|u_rx|rx_data\(0)))) # (!\u_uart|u_rx|rx_data\(1) & (!\u_uart|u_rx|rx_data\(0) & \u_uart|u_rx|rx_data\(2))))) # 
-- (!\u_uart|u_rx|rx_data\(6) & (((\u_uart|u_rx|rx_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(6),
	datab => \u_uart|u_rx|rx_data\(1),
	datac => \u_uart|u_rx|rx_data\(0),
	datad => \u_uart|u_rx|rx_data\(2),
	combout => \u_decoder|src2_q~7_combout\);

-- Location: LCCOMB_X87_Y54_N10
\u_decoder|src2_q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q[3]~0_combout\ = (\u_uart|u_rx|rx_data\(2) & ((\u_uart|u_rx|rx_data\(5)) # ((!\u_uart|u_rx|rx_data\(1)) # (!\u_uart|u_rx|rx_data\(0))))) # (!\u_uart|u_rx|rx_data\(2) & ((\u_uart|u_rx|rx_data\(1)) # ((!\u_uart|u_rx|rx_data\(5) & 
-- \u_uart|u_rx|rx_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(5),
	datab => \u_uart|u_rx|rx_data\(2),
	datac => \u_uart|u_rx|rx_data\(0),
	datad => \u_uart|u_rx|rx_data\(1),
	combout => \u_decoder|src2_q[3]~0_combout\);

-- Location: LCCOMB_X87_Y54_N30
\u_decoder|src2_q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q[3]~1_combout\ = (!\u_uart|u_rx|rx_data\(7) & ((\u_uart|u_rx|rx_data\(4) & (\u_uart|u_rx|rx_data\(5) & !\u_uart|u_rx|rx_data\(6))) # (!\u_uart|u_rx|rx_data\(4) & (!\u_uart|u_rx|rx_data\(5) & \u_uart|u_rx|rx_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(4),
	datab => \u_uart|u_rx|rx_data\(7),
	datac => \u_uart|u_rx|rx_data\(5),
	datad => \u_uart|u_rx|rx_data\(6),
	combout => \u_decoder|src2_q[3]~1_combout\);

-- Location: LCCOMB_X87_Y54_N22
\u_decoder|src2_q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q[3]~2_combout\ = (\u_decoder|src2_q[3]~1_combout\ & ((\u_decoder|src2_q[3]~0_combout\ & (!\u_uart|u_rx|rx_data\(3))) # (!\u_decoder|src2_q[3]~0_combout\ & ((\u_uart|u_rx|rx_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2_q[3]~0_combout\,
	datab => \u_uart|u_rx|rx_data\(3),
	datac => \u_uart|u_rx|rx_data\(4),
	datad => \u_decoder|src2_q[3]~1_combout\,
	combout => \u_decoder|src2_q[3]~2_combout\);

-- Location: LCCOMB_X87_Y55_N22
\u_decoder|src1_q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src1_q[0]~0_combout\ = (\u_decoder|c_state.DATA1~q\ & \u_decoder|src2_q[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|c_state.DATA1~q\,
	datad => \u_decoder|src2_q[3]~2_combout\,
	combout => \u_decoder|src1_q[0]~0_combout\);

-- Location: FF_X88_Y53_N11
\u_decoder|src1_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|src2_q~7_combout\,
	asdata => \u_uart|u_rx|rx_data\(0),
	clrn => \n_rst~input_o\,
	sload => \u_uart|u_rx|rx_data\(3),
	ena => \u_decoder|src1_q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1_q\(0));

-- Location: FF_X87_Y53_N3
\u_decoder|src1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1_q\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(0));

-- Location: FF_X84_Y53_N11
\u_decoder|src1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(4));

-- Location: FF_X84_Y53_N1
\u_decoder|src1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(8));

-- Location: LCCOMB_X89_Y55_N24
\u_decoder|src2_q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q~5_combout\ = (\u_uart|u_rx|rx_data\(2)) # ((\u_uart|u_rx|rx_data\(0) & \u_uart|u_rx|rx_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(0),
	datac => \u_uart|u_rx|rx_data\(2),
	datad => \u_uart|u_rx|rx_data\(1),
	combout => \u_decoder|src2_q~5_combout\);

-- Location: FF_X89_Y55_N25
\u_decoder|src1_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|src2_q~5_combout\,
	asdata => \u_uart|u_rx|rx_data\(2),
	clrn => \n_rst~input_o\,
	sclr => \u_uart|u_rx|rx_data\(3),
	sload => \u_uart|u_rx|ALT_INV_rx_data\(6),
	ena => \u_decoder|src1_q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1_q\(2));

-- Location: FF_X86_Y55_N31
\u_decoder|src1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1_q\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(2));

-- Location: FF_X84_Y53_N5
\u_decoder|src1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(6));

-- Location: LCCOMB_X89_Y55_N2
\u_decoder|src2_q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q~6_combout\ = (\u_uart|u_rx|rx_data\(2) & ((\u_uart|u_rx|rx_data\(1)) # (\u_uart|u_rx|rx_data\(0)))) # (!\u_uart|u_rx|rx_data\(2) & ((!\u_uart|u_rx|rx_data\(0)) # (!\u_uart|u_rx|rx_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_rx|rx_data\(2),
	datac => \u_uart|u_rx|rx_data\(1),
	datad => \u_uart|u_rx|rx_data\(0),
	combout => \u_decoder|src2_q~6_combout\);

-- Location: FF_X89_Y55_N3
\u_decoder|src1_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|src2_q~6_combout\,
	asdata => \u_uart|u_rx|rx_data\(1),
	clrn => \n_rst~input_o\,
	sclr => \u_uart|u_rx|rx_data\(3),
	sload => \u_uart|u_rx|ALT_INV_rx_data\(6),
	ena => \u_decoder|src1_q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1_q\(1));

-- Location: FF_X87_Y53_N1
\u_decoder|src1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1_q\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(1));

-- Location: LCCOMB_X88_Y55_N10
\u_decoder|src2_q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q[1]~feeder_combout\ = \u_decoder|src2_q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_decoder|src2_q~6_combout\,
	combout => \u_decoder|src2_q[1]~feeder_combout\);

-- Location: LCCOMB_X87_Y55_N10
\u_decoder|src2_q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q[3]~3_combout\ = (\u_decoder|src2_q[3]~2_combout\ & \u_decoder|c_state.DATA2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2_q[3]~2_combout\,
	datad => \u_decoder|c_state.DATA2~q\,
	combout => \u_decoder|src2_q[3]~3_combout\);

-- Location: FF_X88_Y55_N11
\u_decoder|src2_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|src2_q[1]~feeder_combout\,
	asdata => \u_uart|u_rx|rx_data\(1),
	clrn => \n_rst~input_o\,
	sclr => \u_uart|u_rx|rx_data\(3),
	sload => \u_uart|u_rx|ALT_INV_rx_data\(6),
	ena => \u_decoder|src2_q[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2_q\(1));

-- Location: FF_X86_Y54_N3
\u_decoder|src2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2_q\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(1));

-- Location: FF_X86_Y54_N11
\u_decoder|src2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(5));

-- Location: FF_X86_Y54_N19
\u_decoder|src2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(9));

-- Location: FF_X86_Y54_N27
\u_decoder|src2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(9),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(13));

-- Location: LCCOMB_X87_Y55_N28
\u_alu|u_divider|A[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|A[16]~0_combout\ = !\u_alu|u_divider|Add1~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_divider|Add1~32_combout\,
	combout => \u_alu|u_divider|A[16]~0_combout\);

-- Location: FF_X87_Y55_N29
\u_alu|u_divider|A[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|A[16]~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(16));

-- Location: LCCOMB_X88_Y53_N0
\u_decoder|src2_q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q[0]~feeder_combout\ = \u_decoder|src2_q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_decoder|src2_q~7_combout\,
	combout => \u_decoder|src2_q[0]~feeder_combout\);

-- Location: FF_X88_Y53_N1
\u_decoder|src2_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|src2_q[0]~feeder_combout\,
	asdata => \u_uart|u_rx|rx_data\(0),
	clrn => \n_rst~input_o\,
	sload => \u_uart|u_rx|rx_data\(3),
	ena => \u_decoder|src2_q[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2_q\(0));

-- Location: FF_X87_Y55_N9
\u_decoder|src2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2_q\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(0));

-- Location: FF_X86_Y54_N9
\u_decoder|src2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(4));

-- Location: FF_X86_Y54_N17
\u_decoder|src2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(8));

-- Location: FF_X86_Y54_N25
\u_decoder|src2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(8),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(12));

-- Location: LCCOMB_X88_Y55_N0
\u_decoder|src2_q[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q[3]~4_combout\ = (\u_decoder|src2_q[3]~3_combout\ & ((\u_uart|u_rx|rx_data\(3)) # ((\u_uart|u_rx|rx_data\(6))))) # (!\u_decoder|src2_q[3]~3_combout\ & (((\u_decoder|src2_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_rx|rx_data\(3),
	datab => \u_uart|u_rx|rx_data\(6),
	datac => \u_decoder|src2_q\(3),
	datad => \u_decoder|src2_q[3]~3_combout\,
	combout => \u_decoder|src2_q[3]~4_combout\);

-- Location: FF_X88_Y55_N1
\u_decoder|src2_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|src2_q[3]~4_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2_q\(3));

-- Location: FF_X86_Y54_N7
\u_decoder|src2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2_q\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(3));

-- Location: FF_X86_Y54_N15
\u_decoder|src2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(7));

-- Location: FF_X86_Y54_N23
\u_decoder|src2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(11));

-- Location: LCCOMB_X88_Y55_N8
\u_decoder|src2_q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src2_q[2]~feeder_combout\ = \u_decoder|src2_q~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_decoder|src2_q~5_combout\,
	combout => \u_decoder|src2_q[2]~feeder_combout\);

-- Location: FF_X88_Y55_N9
\u_decoder|src2_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|src2_q[2]~feeder_combout\,
	asdata => \u_uart|u_rx|rx_data\(2),
	clrn => \n_rst~input_o\,
	sclr => \u_uart|u_rx|rx_data\(3),
	sload => \u_uart|u_rx|ALT_INV_rx_data\(6),
	ena => \u_decoder|src2_q[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2_q\(2));

-- Location: FF_X86_Y54_N5
\u_decoder|src2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2_q\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(2));

-- Location: FF_X86_Y54_N13
\u_decoder|src2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(6));

-- Location: FF_X86_Y54_N21
\u_decoder|src2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(10));

-- Location: LCCOMB_X87_Y55_N8
\u_alu|u_divider|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~0_combout\ = \u_decoder|src2\(0) $ (\u_alu|u_divider|A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_decoder|src2\(0),
	datad => \u_alu|u_divider|A\(16),
	combout => \u_alu|u_divider|Add2~0_combout\);

-- Location: LCCOMB_X86_Y54_N0
\u_alu|u_divider|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~1_combout\ = (\u_alu|u_divider|A\(16) & (!\u_alu|u_divider|Add2~0_combout\ & VCC)) # (!\u_alu|u_divider|A\(16) & (\u_alu|u_divider|Add2~0_combout\ $ (GND)))
-- \u_alu|u_divider|Add2~2\ = CARRY((!\u_alu|u_divider|A\(16) & !\u_alu|u_divider|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(16),
	datab => \u_alu|u_divider|Add2~0_combout\,
	datad => VCC,
	combout => \u_alu|u_divider|Add2~1_combout\,
	cout => \u_alu|u_divider|Add2~2\);

-- Location: LCCOMB_X86_Y54_N2
\u_alu|u_divider|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~3_combout\ = (\u_alu|u_divider|Add2~2\ & (\u_alu|u_divider|A\(16) $ ((\u_decoder|src2\(1))))) # (!\u_alu|u_divider|Add2~2\ & ((\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(1))) # (GND)))
-- \u_alu|u_divider|Add2~4\ = CARRY((\u_alu|u_divider|A\(16) $ (\u_decoder|src2\(1))) # (!\u_alu|u_divider|Add2~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(16),
	datab => \u_decoder|src2\(1),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~2\,
	combout => \u_alu|u_divider|Add2~3_combout\,
	cout => \u_alu|u_divider|Add2~4\);

-- Location: LCCOMB_X86_Y54_N4
\u_alu|u_divider|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~5_combout\ = (\u_alu|u_divider|Add2~4\ & ((\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(2))))) # (!\u_alu|u_divider|Add2~4\ & (\u_alu|u_divider|A\(16) $ (\u_decoder|src2\(2) $ (GND))))
-- \u_alu|u_divider|Add2~6\ = CARRY((!\u_alu|u_divider|Add2~4\ & (\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(16),
	datab => \u_decoder|src2\(2),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~4\,
	combout => \u_alu|u_divider|Add2~5_combout\,
	cout => \u_alu|u_divider|Add2~6\);

-- Location: LCCOMB_X86_Y54_N6
\u_alu|u_divider|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~7_combout\ = (\u_alu|u_divider|Add2~6\ & (\u_alu|u_divider|A\(16) $ ((\u_decoder|src2\(3))))) # (!\u_alu|u_divider|Add2~6\ & ((\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(3))) # (GND)))
-- \u_alu|u_divider|Add2~8\ = CARRY((\u_alu|u_divider|A\(16) $ (\u_decoder|src2\(3))) # (!\u_alu|u_divider|Add2~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(16),
	datab => \u_decoder|src2\(3),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~6\,
	combout => \u_alu|u_divider|Add2~7_combout\,
	cout => \u_alu|u_divider|Add2~8\);

-- Location: LCCOMB_X86_Y54_N8
\u_alu|u_divider|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~9_combout\ = (\u_alu|u_divider|Add2~8\ & ((\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(4))))) # (!\u_alu|u_divider|Add2~8\ & (\u_alu|u_divider|A\(16) $ (\u_decoder|src2\(4) $ (GND))))
-- \u_alu|u_divider|Add2~10\ = CARRY((!\u_alu|u_divider|Add2~8\ & (\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(16),
	datab => \u_decoder|src2\(4),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~8\,
	combout => \u_alu|u_divider|Add2~9_combout\,
	cout => \u_alu|u_divider|Add2~10\);

-- Location: LCCOMB_X86_Y54_N10
\u_alu|u_divider|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~11_combout\ = (\u_alu|u_divider|Add2~10\ & (\u_alu|u_divider|A\(16) $ ((\u_decoder|src2\(5))))) # (!\u_alu|u_divider|Add2~10\ & ((\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(5))) # (GND)))
-- \u_alu|u_divider|Add2~12\ = CARRY((\u_alu|u_divider|A\(16) $ (\u_decoder|src2\(5))) # (!\u_alu|u_divider|Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(16),
	datab => \u_decoder|src2\(5),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~10\,
	combout => \u_alu|u_divider|Add2~11_combout\,
	cout => \u_alu|u_divider|Add2~12\);

-- Location: LCCOMB_X86_Y54_N12
\u_alu|u_divider|Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~13_combout\ = (\u_alu|u_divider|Add2~12\ & ((\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(6))))) # (!\u_alu|u_divider|Add2~12\ & (\u_alu|u_divider|A\(16) $ (\u_decoder|src2\(6) $ (GND))))
-- \u_alu|u_divider|Add2~14\ = CARRY((!\u_alu|u_divider|Add2~12\ & (\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(16),
	datab => \u_decoder|src2\(6),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~12\,
	combout => \u_alu|u_divider|Add2~13_combout\,
	cout => \u_alu|u_divider|Add2~14\);

-- Location: LCCOMB_X86_Y54_N14
\u_alu|u_divider|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~15_combout\ = (\u_alu|u_divider|Add2~14\ & (\u_decoder|src2\(7) $ ((\u_alu|u_divider|A\(16))))) # (!\u_alu|u_divider|Add2~14\ & ((\u_decoder|src2\(7) $ (!\u_alu|u_divider|A\(16))) # (GND)))
-- \u_alu|u_divider|Add2~16\ = CARRY((\u_decoder|src2\(7) $ (\u_alu|u_divider|A\(16))) # (!\u_alu|u_divider|Add2~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(7),
	datab => \u_alu|u_divider|A\(16),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~14\,
	combout => \u_alu|u_divider|Add2~15_combout\,
	cout => \u_alu|u_divider|Add2~16\);

-- Location: LCCOMB_X86_Y54_N16
\u_alu|u_divider|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~17_combout\ = (\u_alu|u_divider|Add2~16\ & ((\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(8))))) # (!\u_alu|u_divider|Add2~16\ & (\u_alu|u_divider|A\(16) $ (\u_decoder|src2\(8) $ (GND))))
-- \u_alu|u_divider|Add2~18\ = CARRY((!\u_alu|u_divider|Add2~16\ & (\u_alu|u_divider|A\(16) $ (!\u_decoder|src2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(16),
	datab => \u_decoder|src2\(8),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~16\,
	combout => \u_alu|u_divider|Add2~17_combout\,
	cout => \u_alu|u_divider|Add2~18\);

-- Location: LCCOMB_X86_Y54_N18
\u_alu|u_divider|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~19_combout\ = (\u_alu|u_divider|Add2~18\ & (\u_decoder|src2\(9) $ ((\u_alu|u_divider|A\(16))))) # (!\u_alu|u_divider|Add2~18\ & ((\u_decoder|src2\(9) $ (!\u_alu|u_divider|A\(16))) # (GND)))
-- \u_alu|u_divider|Add2~20\ = CARRY((\u_decoder|src2\(9) $ (\u_alu|u_divider|A\(16))) # (!\u_alu|u_divider|Add2~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(9),
	datab => \u_alu|u_divider|A\(16),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~18\,
	combout => \u_alu|u_divider|Add2~19_combout\,
	cout => \u_alu|u_divider|Add2~20\);

-- Location: LCCOMB_X86_Y54_N20
\u_alu|u_divider|Add2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~21_combout\ = (\u_alu|u_divider|Add2~20\ & ((\u_decoder|src2\(10) $ (!\u_alu|u_divider|A\(16))))) # (!\u_alu|u_divider|Add2~20\ & (\u_decoder|src2\(10) $ (\u_alu|u_divider|A\(16) $ (GND))))
-- \u_alu|u_divider|Add2~22\ = CARRY((!\u_alu|u_divider|Add2~20\ & (\u_decoder|src2\(10) $ (!\u_alu|u_divider|A\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(10),
	datab => \u_alu|u_divider|A\(16),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~20\,
	combout => \u_alu|u_divider|Add2~21_combout\,
	cout => \u_alu|u_divider|Add2~22\);

-- Location: LCCOMB_X86_Y54_N22
\u_alu|u_divider|Add2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~23_combout\ = (\u_alu|u_divider|Add2~22\ & (\u_decoder|src2\(11) $ ((\u_alu|u_divider|A\(16))))) # (!\u_alu|u_divider|Add2~22\ & ((\u_decoder|src2\(11) $ (!\u_alu|u_divider|A\(16))) # (GND)))
-- \u_alu|u_divider|Add2~24\ = CARRY((\u_decoder|src2\(11) $ (\u_alu|u_divider|A\(16))) # (!\u_alu|u_divider|Add2~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(11),
	datab => \u_alu|u_divider|A\(16),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~22\,
	combout => \u_alu|u_divider|Add2~23_combout\,
	cout => \u_alu|u_divider|Add2~24\);

-- Location: LCCOMB_X86_Y54_N24
\u_alu|u_divider|Add2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~25_combout\ = (\u_alu|u_divider|Add2~24\ & ((\u_decoder|src2\(12) $ (!\u_alu|u_divider|A\(16))))) # (!\u_alu|u_divider|Add2~24\ & (\u_decoder|src2\(12) $ (\u_alu|u_divider|A\(16) $ (GND))))
-- \u_alu|u_divider|Add2~26\ = CARRY((!\u_alu|u_divider|Add2~24\ & (\u_decoder|src2\(12) $ (!\u_alu|u_divider|A\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(12),
	datab => \u_alu|u_divider|A\(16),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~24\,
	combout => \u_alu|u_divider|Add2~25_combout\,
	cout => \u_alu|u_divider|Add2~26\);

-- Location: LCCOMB_X86_Y54_N26
\u_alu|u_divider|Add2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~27_combout\ = (\u_alu|u_divider|Add2~26\ & (\u_decoder|src2\(13) $ ((\u_alu|u_divider|A\(16))))) # (!\u_alu|u_divider|Add2~26\ & ((\u_decoder|src2\(13) $ (!\u_alu|u_divider|A\(16))) # (GND)))
-- \u_alu|u_divider|Add2~28\ = CARRY((\u_decoder|src2\(13) $ (\u_alu|u_divider|A\(16))) # (!\u_alu|u_divider|Add2~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(13),
	datab => \u_alu|u_divider|A\(16),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~26\,
	combout => \u_alu|u_divider|Add2~27_combout\,
	cout => \u_alu|u_divider|Add2~28\);

-- Location: FF_X84_Y53_N13
\u_decoder|src1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(10));

-- Location: FF_X86_Y52_N23
\u_decoder|src1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(14));

-- Location: LCCOMB_X88_Y51_N16
\u_alu|u_divider|sum_Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~2_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(13))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|sum_Q\(13),
	datac => \u_decoder|src1\(14),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~2_combout\);

-- Location: FF_X88_Y51_N17
\u_alu|u_divider|sum_Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(14));

-- Location: LCCOMB_X86_Y55_N20
\u_decoder|src1_q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_decoder|src1_q[3]~1_combout\ = (\u_decoder|src1_q[0]~0_combout\ & ((\u_uart|u_rx|rx_data\(3)) # ((\u_uart|u_rx|rx_data\(6))))) # (!\u_decoder|src1_q[0]~0_combout\ & (((\u_decoder|src1_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1_q[0]~0_combout\,
	datab => \u_uart|u_rx|rx_data\(3),
	datac => \u_decoder|src1_q\(3),
	datad => \u_uart|u_rx|rx_data\(6),
	combout => \u_decoder|src1_q[3]~1_combout\);

-- Location: FF_X86_Y55_N21
\u_decoder|src1_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_decoder|src1_q[3]~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1_q\(3));

-- Location: FF_X86_Y55_N29
\u_decoder|src1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1_q\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(3));

-- Location: FF_X84_Y53_N7
\u_decoder|src1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(7));

-- Location: FF_X84_Y53_N9
\u_decoder|src1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(11));

-- Location: FF_X86_Y52_N31
\u_decoder|src1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(11),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(15));

-- Location: LCCOMB_X88_Y51_N26
\u_alu|u_divider|sum_Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~3_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(14))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|sum_Q\(14),
	datac => \u_decoder|src1\(15),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~3_combout\);

-- Location: FF_X88_Y51_N27
\u_alu|u_divider|sum_Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(15));

-- Location: LCCOMB_X85_Y54_N16
\u_alu|u_divider|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~0_combout\ = (\u_alu|u_divider|Add2~1_combout\ & (\u_alu|u_divider|sum_Q\(15) $ (VCC))) # (!\u_alu|u_divider|Add2~1_combout\ & (\u_alu|u_divider|sum_Q\(15) & VCC))
-- \u_alu|u_divider|Add1~1\ = CARRY((\u_alu|u_divider|Add2~1_combout\ & \u_alu|u_divider|sum_Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add2~1_combout\,
	datab => \u_alu|u_divider|sum_Q\(15),
	datad => VCC,
	combout => \u_alu|u_divider|Add1~0_combout\,
	cout => \u_alu|u_divider|Add1~1\);

-- Location: FF_X85_Y54_N17
\u_alu|u_divider|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(0));

-- Location: LCCOMB_X85_Y54_N18
\u_alu|u_divider|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~2_combout\ = (\u_alu|u_divider|Add2~3_combout\ & ((\u_alu|u_divider|A\(0) & (\u_alu|u_divider|Add1~1\ & VCC)) # (!\u_alu|u_divider|A\(0) & (!\u_alu|u_divider|Add1~1\)))) # (!\u_alu|u_divider|Add2~3_combout\ & ((\u_alu|u_divider|A\(0) 
-- & (!\u_alu|u_divider|Add1~1\)) # (!\u_alu|u_divider|A\(0) & ((\u_alu|u_divider|Add1~1\) # (GND)))))
-- \u_alu|u_divider|Add1~3\ = CARRY((\u_alu|u_divider|Add2~3_combout\ & (!\u_alu|u_divider|A\(0) & !\u_alu|u_divider|Add1~1\)) # (!\u_alu|u_divider|Add2~3_combout\ & ((!\u_alu|u_divider|Add1~1\) # (!\u_alu|u_divider|A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add2~3_combout\,
	datab => \u_alu|u_divider|A\(0),
	datad => VCC,
	cin => \u_alu|u_divider|Add1~1\,
	combout => \u_alu|u_divider|Add1~2_combout\,
	cout => \u_alu|u_divider|Add1~3\);

-- Location: FF_X85_Y54_N19
\u_alu|u_divider|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(1));

-- Location: LCCOMB_X85_Y54_N20
\u_alu|u_divider|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~4_combout\ = ((\u_alu|u_divider|Add2~5_combout\ $ (\u_alu|u_divider|A\(1) $ (!\u_alu|u_divider|Add1~3\)))) # (GND)
-- \u_alu|u_divider|Add1~5\ = CARRY((\u_alu|u_divider|Add2~5_combout\ & ((\u_alu|u_divider|A\(1)) # (!\u_alu|u_divider|Add1~3\))) # (!\u_alu|u_divider|Add2~5_combout\ & (\u_alu|u_divider|A\(1) & !\u_alu|u_divider|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add2~5_combout\,
	datab => \u_alu|u_divider|A\(1),
	datad => VCC,
	cin => \u_alu|u_divider|Add1~3\,
	combout => \u_alu|u_divider|Add1~4_combout\,
	cout => \u_alu|u_divider|Add1~5\);

-- Location: FF_X85_Y54_N21
\u_alu|u_divider|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(2));

-- Location: LCCOMB_X85_Y54_N22
\u_alu|u_divider|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~6_combout\ = (\u_alu|u_divider|Add2~7_combout\ & ((\u_alu|u_divider|A\(2) & (\u_alu|u_divider|Add1~5\ & VCC)) # (!\u_alu|u_divider|A\(2) & (!\u_alu|u_divider|Add1~5\)))) # (!\u_alu|u_divider|Add2~7_combout\ & ((\u_alu|u_divider|A\(2) 
-- & (!\u_alu|u_divider|Add1~5\)) # (!\u_alu|u_divider|A\(2) & ((\u_alu|u_divider|Add1~5\) # (GND)))))
-- \u_alu|u_divider|Add1~7\ = CARRY((\u_alu|u_divider|Add2~7_combout\ & (!\u_alu|u_divider|A\(2) & !\u_alu|u_divider|Add1~5\)) # (!\u_alu|u_divider|Add2~7_combout\ & ((!\u_alu|u_divider|Add1~5\) # (!\u_alu|u_divider|A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add2~7_combout\,
	datab => \u_alu|u_divider|A\(2),
	datad => VCC,
	cin => \u_alu|u_divider|Add1~5\,
	combout => \u_alu|u_divider|Add1~6_combout\,
	cout => \u_alu|u_divider|Add1~7\);

-- Location: FF_X85_Y54_N23
\u_alu|u_divider|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(3));

-- Location: LCCOMB_X85_Y54_N24
\u_alu|u_divider|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~8_combout\ = ((\u_alu|u_divider|A\(3) $ (\u_alu|u_divider|Add2~9_combout\ $ (!\u_alu|u_divider|Add1~7\)))) # (GND)
-- \u_alu|u_divider|Add1~9\ = CARRY((\u_alu|u_divider|A\(3) & ((\u_alu|u_divider|Add2~9_combout\) # (!\u_alu|u_divider|Add1~7\))) # (!\u_alu|u_divider|A\(3) & (\u_alu|u_divider|Add2~9_combout\ & !\u_alu|u_divider|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(3),
	datab => \u_alu|u_divider|Add2~9_combout\,
	datad => VCC,
	cin => \u_alu|u_divider|Add1~7\,
	combout => \u_alu|u_divider|Add1~8_combout\,
	cout => \u_alu|u_divider|Add1~9\);

-- Location: FF_X85_Y54_N25
\u_alu|u_divider|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(4));

-- Location: LCCOMB_X85_Y54_N26
\u_alu|u_divider|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~10_combout\ = (\u_alu|u_divider|Add2~11_combout\ & ((\u_alu|u_divider|A\(4) & (\u_alu|u_divider|Add1~9\ & VCC)) # (!\u_alu|u_divider|A\(4) & (!\u_alu|u_divider|Add1~9\)))) # (!\u_alu|u_divider|Add2~11_combout\ & 
-- ((\u_alu|u_divider|A\(4) & (!\u_alu|u_divider|Add1~9\)) # (!\u_alu|u_divider|A\(4) & ((\u_alu|u_divider|Add1~9\) # (GND)))))
-- \u_alu|u_divider|Add1~11\ = CARRY((\u_alu|u_divider|Add2~11_combout\ & (!\u_alu|u_divider|A\(4) & !\u_alu|u_divider|Add1~9\)) # (!\u_alu|u_divider|Add2~11_combout\ & ((!\u_alu|u_divider|Add1~9\) # (!\u_alu|u_divider|A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add2~11_combout\,
	datab => \u_alu|u_divider|A\(4),
	datad => VCC,
	cin => \u_alu|u_divider|Add1~9\,
	combout => \u_alu|u_divider|Add1~10_combout\,
	cout => \u_alu|u_divider|Add1~11\);

-- Location: FF_X85_Y54_N27
\u_alu|u_divider|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(5));

-- Location: LCCOMB_X85_Y54_N28
\u_alu|u_divider|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~12_combout\ = ((\u_alu|u_divider|A\(5) $ (\u_alu|u_divider|Add2~13_combout\ $ (!\u_alu|u_divider|Add1~11\)))) # (GND)
-- \u_alu|u_divider|Add1~13\ = CARRY((\u_alu|u_divider|A\(5) & ((\u_alu|u_divider|Add2~13_combout\) # (!\u_alu|u_divider|Add1~11\))) # (!\u_alu|u_divider|A\(5) & (\u_alu|u_divider|Add2~13_combout\ & !\u_alu|u_divider|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(5),
	datab => \u_alu|u_divider|Add2~13_combout\,
	datad => VCC,
	cin => \u_alu|u_divider|Add1~11\,
	combout => \u_alu|u_divider|Add1~12_combout\,
	cout => \u_alu|u_divider|Add1~13\);

-- Location: FF_X85_Y54_N29
\u_alu|u_divider|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(6));

-- Location: LCCOMB_X85_Y54_N30
\u_alu|u_divider|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~14_combout\ = (\u_alu|u_divider|A\(6) & ((\u_alu|u_divider|Add2~15_combout\ & (\u_alu|u_divider|Add1~13\ & VCC)) # (!\u_alu|u_divider|Add2~15_combout\ & (!\u_alu|u_divider|Add1~13\)))) # (!\u_alu|u_divider|A\(6) & 
-- ((\u_alu|u_divider|Add2~15_combout\ & (!\u_alu|u_divider|Add1~13\)) # (!\u_alu|u_divider|Add2~15_combout\ & ((\u_alu|u_divider|Add1~13\) # (GND)))))
-- \u_alu|u_divider|Add1~15\ = CARRY((\u_alu|u_divider|A\(6) & (!\u_alu|u_divider|Add2~15_combout\ & !\u_alu|u_divider|Add1~13\)) # (!\u_alu|u_divider|A\(6) & ((!\u_alu|u_divider|Add1~13\) # (!\u_alu|u_divider|Add2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(6),
	datab => \u_alu|u_divider|Add2~15_combout\,
	datad => VCC,
	cin => \u_alu|u_divider|Add1~13\,
	combout => \u_alu|u_divider|Add1~14_combout\,
	cout => \u_alu|u_divider|Add1~15\);

-- Location: FF_X85_Y54_N31
\u_alu|u_divider|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(7));

-- Location: LCCOMB_X85_Y53_N0
\u_alu|u_divider|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~16_combout\ = ((\u_alu|u_divider|Add2~17_combout\ $ (\u_alu|u_divider|A\(7) $ (!\u_alu|u_divider|Add1~15\)))) # (GND)
-- \u_alu|u_divider|Add1~17\ = CARRY((\u_alu|u_divider|Add2~17_combout\ & ((\u_alu|u_divider|A\(7)) # (!\u_alu|u_divider|Add1~15\))) # (!\u_alu|u_divider|Add2~17_combout\ & (\u_alu|u_divider|A\(7) & !\u_alu|u_divider|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add2~17_combout\,
	datab => \u_alu|u_divider|A\(7),
	datad => VCC,
	cin => \u_alu|u_divider|Add1~15\,
	combout => \u_alu|u_divider|Add1~16_combout\,
	cout => \u_alu|u_divider|Add1~17\);

-- Location: FF_X85_Y53_N1
\u_alu|u_divider|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~16_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(8));

-- Location: LCCOMB_X85_Y53_N2
\u_alu|u_divider|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~18_combout\ = (\u_alu|u_divider|Add2~19_combout\ & ((\u_alu|u_divider|A\(8) & (\u_alu|u_divider|Add1~17\ & VCC)) # (!\u_alu|u_divider|A\(8) & (!\u_alu|u_divider|Add1~17\)))) # (!\u_alu|u_divider|Add2~19_combout\ & 
-- ((\u_alu|u_divider|A\(8) & (!\u_alu|u_divider|Add1~17\)) # (!\u_alu|u_divider|A\(8) & ((\u_alu|u_divider|Add1~17\) # (GND)))))
-- \u_alu|u_divider|Add1~19\ = CARRY((\u_alu|u_divider|Add2~19_combout\ & (!\u_alu|u_divider|A\(8) & !\u_alu|u_divider|Add1~17\)) # (!\u_alu|u_divider|Add2~19_combout\ & ((!\u_alu|u_divider|Add1~17\) # (!\u_alu|u_divider|A\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add2~19_combout\,
	datab => \u_alu|u_divider|A\(8),
	datad => VCC,
	cin => \u_alu|u_divider|Add1~17\,
	combout => \u_alu|u_divider|Add1~18_combout\,
	cout => \u_alu|u_divider|Add1~19\);

-- Location: FF_X85_Y53_N3
\u_alu|u_divider|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~18_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(9));

-- Location: LCCOMB_X85_Y53_N4
\u_alu|u_divider|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~20_combout\ = ((\u_alu|u_divider|Add2~21_combout\ $ (\u_alu|u_divider|A\(9) $ (!\u_alu|u_divider|Add1~19\)))) # (GND)
-- \u_alu|u_divider|Add1~21\ = CARRY((\u_alu|u_divider|Add2~21_combout\ & ((\u_alu|u_divider|A\(9)) # (!\u_alu|u_divider|Add1~19\))) # (!\u_alu|u_divider|Add2~21_combout\ & (\u_alu|u_divider|A\(9) & !\u_alu|u_divider|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add2~21_combout\,
	datab => \u_alu|u_divider|A\(9),
	datad => VCC,
	cin => \u_alu|u_divider|Add1~19\,
	combout => \u_alu|u_divider|Add1~20_combout\,
	cout => \u_alu|u_divider|Add1~21\);

-- Location: FF_X85_Y53_N5
\u_alu|u_divider|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~20_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(10));

-- Location: LCCOMB_X85_Y53_N6
\u_alu|u_divider|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~22_combout\ = (\u_alu|u_divider|Add2~23_combout\ & ((\u_alu|u_divider|A\(10) & (\u_alu|u_divider|Add1~21\ & VCC)) # (!\u_alu|u_divider|A\(10) & (!\u_alu|u_divider|Add1~21\)))) # (!\u_alu|u_divider|Add2~23_combout\ & 
-- ((\u_alu|u_divider|A\(10) & (!\u_alu|u_divider|Add1~21\)) # (!\u_alu|u_divider|A\(10) & ((\u_alu|u_divider|Add1~21\) # (GND)))))
-- \u_alu|u_divider|Add1~23\ = CARRY((\u_alu|u_divider|Add2~23_combout\ & (!\u_alu|u_divider|A\(10) & !\u_alu|u_divider|Add1~21\)) # (!\u_alu|u_divider|Add2~23_combout\ & ((!\u_alu|u_divider|Add1~21\) # (!\u_alu|u_divider|A\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add2~23_combout\,
	datab => \u_alu|u_divider|A\(10),
	datad => VCC,
	cin => \u_alu|u_divider|Add1~21\,
	combout => \u_alu|u_divider|Add1~22_combout\,
	cout => \u_alu|u_divider|Add1~23\);

-- Location: FF_X85_Y53_N7
\u_alu|u_divider|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~22_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(11));

-- Location: LCCOMB_X85_Y53_N8
\u_alu|u_divider|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~24_combout\ = ((\u_alu|u_divider|A\(11) $ (\u_alu|u_divider|Add2~25_combout\ $ (!\u_alu|u_divider|Add1~23\)))) # (GND)
-- \u_alu|u_divider|Add1~25\ = CARRY((\u_alu|u_divider|A\(11) & ((\u_alu|u_divider|Add2~25_combout\) # (!\u_alu|u_divider|Add1~23\))) # (!\u_alu|u_divider|A\(11) & (\u_alu|u_divider|Add2~25_combout\ & !\u_alu|u_divider|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(11),
	datab => \u_alu|u_divider|Add2~25_combout\,
	datad => VCC,
	cin => \u_alu|u_divider|Add1~23\,
	combout => \u_alu|u_divider|Add1~24_combout\,
	cout => \u_alu|u_divider|Add1~25\);

-- Location: FF_X85_Y53_N9
\u_alu|u_divider|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~24_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(12));

-- Location: LCCOMB_X85_Y53_N10
\u_alu|u_divider|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~26_combout\ = (\u_alu|u_divider|Add2~27_combout\ & ((\u_alu|u_divider|A\(12) & (\u_alu|u_divider|Add1~25\ & VCC)) # (!\u_alu|u_divider|A\(12) & (!\u_alu|u_divider|Add1~25\)))) # (!\u_alu|u_divider|Add2~27_combout\ & 
-- ((\u_alu|u_divider|A\(12) & (!\u_alu|u_divider|Add1~25\)) # (!\u_alu|u_divider|A\(12) & ((\u_alu|u_divider|Add1~25\) # (GND)))))
-- \u_alu|u_divider|Add1~27\ = CARRY((\u_alu|u_divider|Add2~27_combout\ & (!\u_alu|u_divider|A\(12) & !\u_alu|u_divider|Add1~25\)) # (!\u_alu|u_divider|Add2~27_combout\ & ((!\u_alu|u_divider|Add1~25\) # (!\u_alu|u_divider|A\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add2~27_combout\,
	datab => \u_alu|u_divider|A\(12),
	datad => VCC,
	cin => \u_alu|u_divider|Add1~25\,
	combout => \u_alu|u_divider|Add1~26_combout\,
	cout => \u_alu|u_divider|Add1~27\);

-- Location: FF_X85_Y53_N11
\u_alu|u_divider|A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~26_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(13));

-- Location: FF_X86_Y54_N29
\u_decoder|src2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(14));

-- Location: LCCOMB_X86_Y54_N28
\u_alu|u_divider|Add2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~29_combout\ = (\u_alu|u_divider|Add2~28\ & ((\u_decoder|src2\(14) $ (!\u_alu|u_divider|A\(16))))) # (!\u_alu|u_divider|Add2~28\ & (\u_decoder|src2\(14) $ (\u_alu|u_divider|A\(16) $ (GND))))
-- \u_alu|u_divider|Add2~30\ = CARRY((!\u_alu|u_divider|Add2~28\ & (\u_decoder|src2\(14) $ (!\u_alu|u_divider|A\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(14),
	datab => \u_alu|u_divider|A\(16),
	datad => VCC,
	cin => \u_alu|u_divider|Add2~28\,
	combout => \u_alu|u_divider|Add2~29_combout\,
	cout => \u_alu|u_divider|Add2~30\);

-- Location: LCCOMB_X85_Y53_N12
\u_alu|u_divider|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~28_combout\ = ((\u_alu|u_divider|A\(13) $ (\u_alu|u_divider|Add2~29_combout\ $ (!\u_alu|u_divider|Add1~27\)))) # (GND)
-- \u_alu|u_divider|Add1~29\ = CARRY((\u_alu|u_divider|A\(13) & ((\u_alu|u_divider|Add2~29_combout\) # (!\u_alu|u_divider|Add1~27\))) # (!\u_alu|u_divider|A\(13) & (\u_alu|u_divider|Add2~29_combout\ & !\u_alu|u_divider|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(13),
	datab => \u_alu|u_divider|Add2~29_combout\,
	datad => VCC,
	cin => \u_alu|u_divider|Add1~27\,
	combout => \u_alu|u_divider|Add1~28_combout\,
	cout => \u_alu|u_divider|Add1~29\);

-- Location: FF_X85_Y53_N13
\u_alu|u_divider|A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~28_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(14));

-- Location: FF_X83_Y52_N15
\u_decoder|src2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src2\(11),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src2\(15));

-- Location: LCCOMB_X86_Y54_N30
\u_alu|u_divider|Add2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add2~31_combout\ = \u_decoder|src2\(15) $ (\u_alu|u_divider|Add2~30\ $ (!\u_alu|u_divider|A\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(15),
	datad => \u_alu|u_divider|A\(16),
	cin => \u_alu|u_divider|Add2~30\,
	combout => \u_alu|u_divider|Add2~31_combout\);

-- Location: LCCOMB_X85_Y53_N14
\u_alu|u_divider|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~30_combout\ = (\u_alu|u_divider|A\(14) & ((\u_alu|u_divider|Add2~31_combout\ & (\u_alu|u_divider|Add1~29\ & VCC)) # (!\u_alu|u_divider|Add2~31_combout\ & (!\u_alu|u_divider|Add1~29\)))) # (!\u_alu|u_divider|A\(14) & 
-- ((\u_alu|u_divider|Add2~31_combout\ & (!\u_alu|u_divider|Add1~29\)) # (!\u_alu|u_divider|Add2~31_combout\ & ((\u_alu|u_divider|Add1~29\) # (GND)))))
-- \u_alu|u_divider|Add1~31\ = CARRY((\u_alu|u_divider|A\(14) & (!\u_alu|u_divider|Add2~31_combout\ & !\u_alu|u_divider|Add1~29\)) # (!\u_alu|u_divider|A\(14) & ((!\u_alu|u_divider|Add1~29\) # (!\u_alu|u_divider|Add2~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|A\(14),
	datab => \u_alu|u_divider|Add2~31_combout\,
	datad => VCC,
	cin => \u_alu|u_divider|Add1~29\,
	combout => \u_alu|u_divider|Add1~30_combout\,
	cout => \u_alu|u_divider|Add1~31\);

-- Location: FF_X85_Y53_N15
\u_alu|u_divider|A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Add1~30_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|A\(15));

-- Location: LCCOMB_X85_Y53_N16
\u_alu|u_divider|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Add1~32_combout\ = \u_alu|u_divider|A\(15) $ (\u_alu|u_divider|Add1~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|A\(15),
	cin => \u_alu|u_divider|Add1~31\,
	combout => \u_alu|u_divider|Add1~32_combout\);

-- Location: LCCOMB_X84_Y51_N26
\u_alu|u_divider|sum_Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~13_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|Add1~32_combout\)) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Add1~32_combout\,
	datab => \u_decoder|src1\(0),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~13_combout\);

-- Location: FF_X84_Y51_N27
\u_alu|u_divider|sum_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~13_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(0));

-- Location: LCCOMB_X84_Y51_N20
\u_alu|u_divider|sum_Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~14_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(0)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|c_state.IDLE~q\,
	datab => \u_decoder|src1\(1),
	datac => \u_alu|u_divider|sum_Q\(0),
	combout => \u_alu|u_divider|sum_Q~14_combout\);

-- Location: FF_X84_Y51_N21
\u_alu|u_divider|sum_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(1));

-- Location: LCCOMB_X84_Y51_N6
\u_alu|u_divider|sum_Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~15_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(1))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|sum_Q\(1),
	datac => \u_decoder|src1\(2),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~15_combout\);

-- Location: FF_X84_Y51_N7
\u_alu|u_divider|sum_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~15_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(2));

-- Location: LCCOMB_X84_Y51_N16
\u_alu|u_divider|sum_Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~12_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(2))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|sum_Q\(2),
	datab => \u_decoder|src1\(3),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~12_combout\);

-- Location: FF_X84_Y51_N17
\u_alu|u_divider|sum_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(3));

-- Location: LCCOMB_X84_Y51_N18
\u_alu|u_divider|sum_Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~9_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(3)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(4),
	datab => \u_alu|u_divider|sum_Q\(3),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~9_combout\);

-- Location: FF_X84_Y51_N19
\u_alu|u_divider|sum_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~9_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(4));

-- Location: FF_X84_Y53_N3
\u_decoder|src1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(5));

-- Location: LCCOMB_X84_Y51_N22
\u_alu|u_divider|sum_Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~10_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(4))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|sum_Q\(4),
	datac => \u_alu|u_divider|c_state.IDLE~q\,
	datad => \u_decoder|src1\(5),
	combout => \u_alu|u_divider|sum_Q~10_combout\);

-- Location: FF_X84_Y51_N23
\u_alu|u_divider|sum_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(5));

-- Location: LCCOMB_X84_Y51_N10
\u_alu|u_divider|sum_Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~11_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(5)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(6),
	datac => \u_alu|u_divider|sum_Q\(5),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~11_combout\);

-- Location: FF_X84_Y51_N11
\u_alu|u_divider|sum_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~11_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(6));

-- Location: LCCOMB_X84_Y51_N0
\u_alu|u_divider|sum_Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~8_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(6))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|sum_Q\(6),
	datac => \u_decoder|src1\(7),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~8_combout\);

-- Location: FF_X84_Y51_N1
\u_alu|u_divider|sum_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(7));

-- Location: LCCOMB_X88_Y51_N20
\u_alu|u_divider|sum_Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~5_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(7)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(8),
	datac => \u_alu|u_divider|sum_Q\(7),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~5_combout\);

-- Location: FF_X88_Y51_N21
\u_alu|u_divider|sum_Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(8));

-- Location: FF_X86_Y52_N27
\u_decoder|src1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(9));

-- Location: LCCOMB_X88_Y51_N14
\u_alu|u_divider|sum_Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~6_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(8))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|sum_Q\(8),
	datac => \u_decoder|src1\(9),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~6_combout\);

-- Location: FF_X88_Y51_N15
\u_alu|u_divider|sum_Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(9));

-- Location: LCCOMB_X89_Y51_N30
\u_alu|u_divider|sum_Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~7_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(9))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|sum_Q\(9),
	datac => \u_decoder|src1\(10),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~7_combout\);

-- Location: FF_X89_Y51_N31
\u_alu|u_divider|sum_Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(10));

-- Location: LCCOMB_X89_Y51_N28
\u_alu|u_divider|sum_Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~4_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(10))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|sum_Q\(10),
	datab => \u_decoder|src1\(11),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~4_combout\);

-- Location: FF_X89_Y51_N29
\u_alu|u_divider|sum_Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(11));

-- Location: FF_X86_Y52_N25
\u_decoder|src1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(8),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(12));

-- Location: LCCOMB_X89_Y51_N6
\u_alu|u_divider|sum_Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~0_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(11))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|sum_Q\(11),
	datac => \u_decoder|src1\(12),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~0_combout\);

-- Location: FF_X89_Y51_N7
\u_alu|u_divider|sum_Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(12));

-- Location: FF_X86_Y52_N29
\u_decoder|src1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_decoder|src1\(9),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_decoder|cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_decoder|src1\(13));

-- Location: LCCOMB_X88_Y51_N0
\u_alu|u_divider|sum_Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|sum_Q~1_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(12))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|sum_Q\(12),
	datac => \u_decoder|src1\(13),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|sum_Q~1_combout\);

-- Location: FF_X88_Y51_N1
\u_alu|u_divider|sum_Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|sum_Q~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|sum_Q\(13));

-- Location: LCCOMB_X88_Y51_N12
\u_alu|u_divider|Q_product~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~1_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(13))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|sum_Q\(13),
	datac => \u_decoder|src1\(13),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~1_combout\);

-- Location: FF_X88_Y51_N13
\u_alu|u_divider|Q_product[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(13));

-- Location: LCCOMB_X89_Y52_N20
\u_alu|alu_done~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|alu_done~5_combout\ = (!\u_alu|calc_res_q.0010~q\ & !\u_alu|calc_res_q.0110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|calc_res_q.0010~q\,
	datad => \u_alu|calc_res_q.0110~q\,
	combout => \u_alu|alu_done~5_combout\);

-- Location: LCCOMB_X88_Y52_N2
\u_encoder|calc_res_q[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q[23]~1_combout\ = (\u_alu|alu_done~5_combout\ & (((!\u_alu|calc_res_q.0011~q\)) # (!\u_alu|u_booth|c_state.STOP~q\))) # (!\u_alu|alu_done~5_combout\ & (!\u_alu|alu_done~3_combout\ & ((!\u_alu|calc_res_q.0011~q\) # 
-- (!\u_alu|u_booth|c_state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~5_combout\,
	datab => \u_alu|u_booth|c_state.STOP~q\,
	datac => \u_alu|alu_done~3_combout\,
	datad => \u_alu|calc_res_q.0011~q\,
	combout => \u_encoder|calc_res_q[23]~1_combout\);

-- Location: LCCOMB_X83_Y53_N16
\u_alu|u_substraction|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~1_cout\ = CARRY(!\u_decoder|src2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(0),
	datad => VCC,
	cout => \u_alu|u_substraction|Add0~1_cout\);

-- Location: LCCOMB_X83_Y53_N18
\u_alu|u_substraction|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~2_combout\ = (\u_decoder|src2\(1) & ((\u_alu|u_substraction|Add0~1_cout\) # (GND))) # (!\u_decoder|src2\(1) & (!\u_alu|u_substraction|Add0~1_cout\))
-- \u_alu|u_substraction|Add0~3\ = CARRY((\u_decoder|src2\(1)) # (!\u_alu|u_substraction|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(1),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~1_cout\,
	combout => \u_alu|u_substraction|Add0~2_combout\,
	cout => \u_alu|u_substraction|Add0~3\);

-- Location: LCCOMB_X83_Y53_N20
\u_alu|u_substraction|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~4_combout\ = (\u_decoder|src2\(2) & (!\u_alu|u_substraction|Add0~3\ & VCC)) # (!\u_decoder|src2\(2) & (\u_alu|u_substraction|Add0~3\ $ (GND)))
-- \u_alu|u_substraction|Add0~5\ = CARRY((!\u_decoder|src2\(2) & !\u_alu|u_substraction|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(2),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~3\,
	combout => \u_alu|u_substraction|Add0~4_combout\,
	cout => \u_alu|u_substraction|Add0~5\);

-- Location: LCCOMB_X83_Y53_N22
\u_alu|u_substraction|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~6_combout\ = (\u_decoder|src2\(3) & ((\u_alu|u_substraction|Add0~5\) # (GND))) # (!\u_decoder|src2\(3) & (!\u_alu|u_substraction|Add0~5\))
-- \u_alu|u_substraction|Add0~7\ = CARRY((\u_decoder|src2\(3)) # (!\u_alu|u_substraction|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(3),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~5\,
	combout => \u_alu|u_substraction|Add0~6_combout\,
	cout => \u_alu|u_substraction|Add0~7\);

-- Location: LCCOMB_X83_Y53_N24
\u_alu|u_substraction|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~8_combout\ = (\u_decoder|src2\(4) & (!\u_alu|u_substraction|Add0~7\ & VCC)) # (!\u_decoder|src2\(4) & (\u_alu|u_substraction|Add0~7\ $ (GND)))
-- \u_alu|u_substraction|Add0~9\ = CARRY((!\u_decoder|src2\(4) & !\u_alu|u_substraction|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(4),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~7\,
	combout => \u_alu|u_substraction|Add0~8_combout\,
	cout => \u_alu|u_substraction|Add0~9\);

-- Location: LCCOMB_X83_Y53_N26
\u_alu|u_substraction|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~10_combout\ = (\u_decoder|src2\(5) & ((\u_alu|u_substraction|Add0~9\) # (GND))) # (!\u_decoder|src2\(5) & (!\u_alu|u_substraction|Add0~9\))
-- \u_alu|u_substraction|Add0~11\ = CARRY((\u_decoder|src2\(5)) # (!\u_alu|u_substraction|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(5),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~9\,
	combout => \u_alu|u_substraction|Add0~10_combout\,
	cout => \u_alu|u_substraction|Add0~11\);

-- Location: LCCOMB_X83_Y53_N28
\u_alu|u_substraction|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~12_combout\ = (\u_decoder|src2\(6) & (!\u_alu|u_substraction|Add0~11\ & VCC)) # (!\u_decoder|src2\(6) & (\u_alu|u_substraction|Add0~11\ $ (GND)))
-- \u_alu|u_substraction|Add0~13\ = CARRY((!\u_decoder|src2\(6) & !\u_alu|u_substraction|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(6),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~11\,
	combout => \u_alu|u_substraction|Add0~12_combout\,
	cout => \u_alu|u_substraction|Add0~13\);

-- Location: LCCOMB_X83_Y53_N30
\u_alu|u_substraction|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~14_combout\ = (\u_decoder|src2\(7) & ((\u_alu|u_substraction|Add0~13\) # (GND))) # (!\u_decoder|src2\(7) & (!\u_alu|u_substraction|Add0~13\))
-- \u_alu|u_substraction|Add0~15\ = CARRY((\u_decoder|src2\(7)) # (!\u_alu|u_substraction|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(7),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~13\,
	combout => \u_alu|u_substraction|Add0~14_combout\,
	cout => \u_alu|u_substraction|Add0~15\);

-- Location: LCCOMB_X83_Y52_N0
\u_alu|u_substraction|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~16_combout\ = (\u_decoder|src2\(8) & (!\u_alu|u_substraction|Add0~15\ & VCC)) # (!\u_decoder|src2\(8) & (\u_alu|u_substraction|Add0~15\ $ (GND)))
-- \u_alu|u_substraction|Add0~17\ = CARRY((!\u_decoder|src2\(8) & !\u_alu|u_substraction|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(8),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~15\,
	combout => \u_alu|u_substraction|Add0~16_combout\,
	cout => \u_alu|u_substraction|Add0~17\);

-- Location: LCCOMB_X83_Y52_N2
\u_alu|u_substraction|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~18_combout\ = (\u_decoder|src2\(9) & ((\u_alu|u_substraction|Add0~17\) # (GND))) # (!\u_decoder|src2\(9) & (!\u_alu|u_substraction|Add0~17\))
-- \u_alu|u_substraction|Add0~19\ = CARRY((\u_decoder|src2\(9)) # (!\u_alu|u_substraction|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(9),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~17\,
	combout => \u_alu|u_substraction|Add0~18_combout\,
	cout => \u_alu|u_substraction|Add0~19\);

-- Location: LCCOMB_X83_Y52_N4
\u_alu|u_substraction|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~20_combout\ = (\u_decoder|src2\(10) & (!\u_alu|u_substraction|Add0~19\ & VCC)) # (!\u_decoder|src2\(10) & (\u_alu|u_substraction|Add0~19\ $ (GND)))
-- \u_alu|u_substraction|Add0~21\ = CARRY((!\u_decoder|src2\(10) & !\u_alu|u_substraction|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(10),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~19\,
	combout => \u_alu|u_substraction|Add0~20_combout\,
	cout => \u_alu|u_substraction|Add0~21\);

-- Location: LCCOMB_X83_Y52_N6
\u_alu|u_substraction|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~22_combout\ = (\u_decoder|src2\(11) & ((\u_alu|u_substraction|Add0~21\) # (GND))) # (!\u_decoder|src2\(11) & (!\u_alu|u_substraction|Add0~21\))
-- \u_alu|u_substraction|Add0~23\ = CARRY((\u_decoder|src2\(11)) # (!\u_alu|u_substraction|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(11),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~21\,
	combout => \u_alu|u_substraction|Add0~22_combout\,
	cout => \u_alu|u_substraction|Add0~23\);

-- Location: LCCOMB_X83_Y52_N8
\u_alu|u_substraction|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~24_combout\ = (\u_decoder|src2\(12) & (!\u_alu|u_substraction|Add0~23\ & VCC)) # (!\u_decoder|src2\(12) & (\u_alu|u_substraction|Add0~23\ $ (GND)))
-- \u_alu|u_substraction|Add0~25\ = CARRY((!\u_decoder|src2\(12) & !\u_alu|u_substraction|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(12),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~23\,
	combout => \u_alu|u_substraction|Add0~24_combout\,
	cout => \u_alu|u_substraction|Add0~25\);

-- Location: LCCOMB_X83_Y52_N10
\u_alu|u_substraction|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~26_combout\ = (\u_decoder|src2\(13) & ((\u_alu|u_substraction|Add0~25\) # (GND))) # (!\u_decoder|src2\(13) & (!\u_alu|u_substraction|Add0~25\))
-- \u_alu|u_substraction|Add0~27\ = CARRY((\u_decoder|src2\(13)) # (!\u_alu|u_substraction|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(13),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~25\,
	combout => \u_alu|u_substraction|Add0~26_combout\,
	cout => \u_alu|u_substraction|Add0~27\);

-- Location: LCCOMB_X83_Y52_N12
\u_alu|u_substraction|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~28_combout\ = (\u_decoder|src2\(14) & (!\u_alu|u_substraction|Add0~27\ & VCC)) # (!\u_decoder|src2\(14) & (\u_alu|u_substraction|Add0~27\ $ (GND)))
-- \u_alu|u_substraction|Add0~29\ = CARRY((!\u_decoder|src2\(14) & !\u_alu|u_substraction|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(14),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~27\,
	combout => \u_alu|u_substraction|Add0~28_combout\,
	cout => \u_alu|u_substraction|Add0~29\);

-- Location: LCCOMB_X83_Y52_N14
\u_alu|u_substraction|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~30_combout\ = (\u_decoder|src2\(15) & ((\u_alu|u_substraction|Add0~29\) # (GND))) # (!\u_decoder|src2\(15) & (!\u_alu|u_substraction|Add0~29\))
-- \u_alu|u_substraction|Add0~31\ = CARRY((\u_decoder|src2\(15)) # (!\u_alu|u_substraction|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(15),
	datad => VCC,
	cin => \u_alu|u_substraction|Add0~29\,
	combout => \u_alu|u_substraction|Add0~30_combout\,
	cout => \u_alu|u_substraction|Add0~31\);

-- Location: LCCOMB_X83_Y52_N16
\u_alu|u_substraction|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|Add0~32_combout\ = !\u_alu|u_substraction|Add0~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_alu|u_substraction|Add0~31\,
	combout => \u_alu|u_substraction|Add0~32_combout\);

-- Location: LCCOMB_X84_Y53_N14
\u_alu|u_substraction|calc_res[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[0]~18_combout\ = (\u_decoder|src2\(0) & (\u_decoder|src1\(0) $ (VCC))) # (!\u_decoder|src2\(0) & (\u_decoder|src1\(0) & VCC))
-- \u_alu|u_substraction|calc_res[0]~19\ = CARRY((\u_decoder|src2\(0) & \u_decoder|src1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(0),
	datab => \u_decoder|src1\(0),
	datad => VCC,
	combout => \u_alu|u_substraction|calc_res[0]~18_combout\,
	cout => \u_alu|u_substraction|calc_res[0]~19\);

-- Location: LCCOMB_X84_Y53_N16
\u_alu|u_substraction|calc_res[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[1]~20_combout\ = (\u_decoder|src1\(1) & ((\u_alu|u_substraction|Add0~2_combout\ & (\u_alu|u_substraction|calc_res[0]~19\ & VCC)) # (!\u_alu|u_substraction|Add0~2_combout\ & (!\u_alu|u_substraction|calc_res[0]~19\)))) # 
-- (!\u_decoder|src1\(1) & ((\u_alu|u_substraction|Add0~2_combout\ & (!\u_alu|u_substraction|calc_res[0]~19\)) # (!\u_alu|u_substraction|Add0~2_combout\ & ((\u_alu|u_substraction|calc_res[0]~19\) # (GND)))))
-- \u_alu|u_substraction|calc_res[1]~21\ = CARRY((\u_decoder|src1\(1) & (!\u_alu|u_substraction|Add0~2_combout\ & !\u_alu|u_substraction|calc_res[0]~19\)) # (!\u_decoder|src1\(1) & ((!\u_alu|u_substraction|calc_res[0]~19\) # 
-- (!\u_alu|u_substraction|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(1),
	datab => \u_alu|u_substraction|Add0~2_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[0]~19\,
	combout => \u_alu|u_substraction|calc_res[1]~20_combout\,
	cout => \u_alu|u_substraction|calc_res[1]~21\);

-- Location: LCCOMB_X84_Y53_N18
\u_alu|u_substraction|calc_res[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[2]~22_combout\ = ((\u_decoder|src1\(2) $ (\u_alu|u_substraction|Add0~4_combout\ $ (!\u_alu|u_substraction|calc_res[1]~21\)))) # (GND)
-- \u_alu|u_substraction|calc_res[2]~23\ = CARRY((\u_decoder|src1\(2) & ((\u_alu|u_substraction|Add0~4_combout\) # (!\u_alu|u_substraction|calc_res[1]~21\))) # (!\u_decoder|src1\(2) & (\u_alu|u_substraction|Add0~4_combout\ & 
-- !\u_alu|u_substraction|calc_res[1]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(2),
	datab => \u_alu|u_substraction|Add0~4_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[1]~21\,
	combout => \u_alu|u_substraction|calc_res[2]~22_combout\,
	cout => \u_alu|u_substraction|calc_res[2]~23\);

-- Location: LCCOMB_X84_Y53_N20
\u_alu|u_substraction|calc_res[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[3]~24_combout\ = (\u_decoder|src1\(3) & ((\u_alu|u_substraction|Add0~6_combout\ & (\u_alu|u_substraction|calc_res[2]~23\ & VCC)) # (!\u_alu|u_substraction|Add0~6_combout\ & (!\u_alu|u_substraction|calc_res[2]~23\)))) # 
-- (!\u_decoder|src1\(3) & ((\u_alu|u_substraction|Add0~6_combout\ & (!\u_alu|u_substraction|calc_res[2]~23\)) # (!\u_alu|u_substraction|Add0~6_combout\ & ((\u_alu|u_substraction|calc_res[2]~23\) # (GND)))))
-- \u_alu|u_substraction|calc_res[3]~25\ = CARRY((\u_decoder|src1\(3) & (!\u_alu|u_substraction|Add0~6_combout\ & !\u_alu|u_substraction|calc_res[2]~23\)) # (!\u_decoder|src1\(3) & ((!\u_alu|u_substraction|calc_res[2]~23\) # 
-- (!\u_alu|u_substraction|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(3),
	datab => \u_alu|u_substraction|Add0~6_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[2]~23\,
	combout => \u_alu|u_substraction|calc_res[3]~24_combout\,
	cout => \u_alu|u_substraction|calc_res[3]~25\);

-- Location: LCCOMB_X84_Y53_N22
\u_alu|u_substraction|calc_res[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[4]~26_combout\ = ((\u_decoder|src1\(4) $ (\u_alu|u_substraction|Add0~8_combout\ $ (!\u_alu|u_substraction|calc_res[3]~25\)))) # (GND)
-- \u_alu|u_substraction|calc_res[4]~27\ = CARRY((\u_decoder|src1\(4) & ((\u_alu|u_substraction|Add0~8_combout\) # (!\u_alu|u_substraction|calc_res[3]~25\))) # (!\u_decoder|src1\(4) & (\u_alu|u_substraction|Add0~8_combout\ & 
-- !\u_alu|u_substraction|calc_res[3]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(4),
	datab => \u_alu|u_substraction|Add0~8_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[3]~25\,
	combout => \u_alu|u_substraction|calc_res[4]~26_combout\,
	cout => \u_alu|u_substraction|calc_res[4]~27\);

-- Location: LCCOMB_X84_Y53_N24
\u_alu|u_substraction|calc_res[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[5]~28_combout\ = (\u_alu|u_substraction|Add0~10_combout\ & ((\u_decoder|src1\(5) & (\u_alu|u_substraction|calc_res[4]~27\ & VCC)) # (!\u_decoder|src1\(5) & (!\u_alu|u_substraction|calc_res[4]~27\)))) # 
-- (!\u_alu|u_substraction|Add0~10_combout\ & ((\u_decoder|src1\(5) & (!\u_alu|u_substraction|calc_res[4]~27\)) # (!\u_decoder|src1\(5) & ((\u_alu|u_substraction|calc_res[4]~27\) # (GND)))))
-- \u_alu|u_substraction|calc_res[5]~29\ = CARRY((\u_alu|u_substraction|Add0~10_combout\ & (!\u_decoder|src1\(5) & !\u_alu|u_substraction|calc_res[4]~27\)) # (!\u_alu|u_substraction|Add0~10_combout\ & ((!\u_alu|u_substraction|calc_res[4]~27\) # 
-- (!\u_decoder|src1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|Add0~10_combout\,
	datab => \u_decoder|src1\(5),
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[4]~27\,
	combout => \u_alu|u_substraction|calc_res[5]~28_combout\,
	cout => \u_alu|u_substraction|calc_res[5]~29\);

-- Location: LCCOMB_X84_Y53_N26
\u_alu|u_substraction|calc_res[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[6]~30_combout\ = ((\u_decoder|src1\(6) $ (\u_alu|u_substraction|Add0~12_combout\ $ (!\u_alu|u_substraction|calc_res[5]~29\)))) # (GND)
-- \u_alu|u_substraction|calc_res[6]~31\ = CARRY((\u_decoder|src1\(6) & ((\u_alu|u_substraction|Add0~12_combout\) # (!\u_alu|u_substraction|calc_res[5]~29\))) # (!\u_decoder|src1\(6) & (\u_alu|u_substraction|Add0~12_combout\ & 
-- !\u_alu|u_substraction|calc_res[5]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(6),
	datab => \u_alu|u_substraction|Add0~12_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[5]~29\,
	combout => \u_alu|u_substraction|calc_res[6]~30_combout\,
	cout => \u_alu|u_substraction|calc_res[6]~31\);

-- Location: LCCOMB_X84_Y53_N28
\u_alu|u_substraction|calc_res[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[7]~32_combout\ = (\u_decoder|src1\(7) & ((\u_alu|u_substraction|Add0~14_combout\ & (\u_alu|u_substraction|calc_res[6]~31\ & VCC)) # (!\u_alu|u_substraction|Add0~14_combout\ & (!\u_alu|u_substraction|calc_res[6]~31\)))) # 
-- (!\u_decoder|src1\(7) & ((\u_alu|u_substraction|Add0~14_combout\ & (!\u_alu|u_substraction|calc_res[6]~31\)) # (!\u_alu|u_substraction|Add0~14_combout\ & ((\u_alu|u_substraction|calc_res[6]~31\) # (GND)))))
-- \u_alu|u_substraction|calc_res[7]~33\ = CARRY((\u_decoder|src1\(7) & (!\u_alu|u_substraction|Add0~14_combout\ & !\u_alu|u_substraction|calc_res[6]~31\)) # (!\u_decoder|src1\(7) & ((!\u_alu|u_substraction|calc_res[6]~31\) # 
-- (!\u_alu|u_substraction|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(7),
	datab => \u_alu|u_substraction|Add0~14_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[6]~31\,
	combout => \u_alu|u_substraction|calc_res[7]~32_combout\,
	cout => \u_alu|u_substraction|calc_res[7]~33\);

-- Location: LCCOMB_X84_Y53_N30
\u_alu|u_substraction|calc_res[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[8]~34_combout\ = ((\u_alu|u_substraction|Add0~16_combout\ $ (\u_decoder|src1\(8) $ (!\u_alu|u_substraction|calc_res[7]~33\)))) # (GND)
-- \u_alu|u_substraction|calc_res[8]~35\ = CARRY((\u_alu|u_substraction|Add0~16_combout\ & ((\u_decoder|src1\(8)) # (!\u_alu|u_substraction|calc_res[7]~33\))) # (!\u_alu|u_substraction|Add0~16_combout\ & (\u_decoder|src1\(8) & 
-- !\u_alu|u_substraction|calc_res[7]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|Add0~16_combout\,
	datab => \u_decoder|src1\(8),
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[7]~33\,
	combout => \u_alu|u_substraction|calc_res[8]~34_combout\,
	cout => \u_alu|u_substraction|calc_res[8]~35\);

-- Location: LCCOMB_X84_Y52_N0
\u_alu|u_substraction|calc_res[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[9]~36_combout\ = (\u_decoder|src1\(9) & ((\u_alu|u_substraction|Add0~18_combout\ & (\u_alu|u_substraction|calc_res[8]~35\ & VCC)) # (!\u_alu|u_substraction|Add0~18_combout\ & (!\u_alu|u_substraction|calc_res[8]~35\)))) # 
-- (!\u_decoder|src1\(9) & ((\u_alu|u_substraction|Add0~18_combout\ & (!\u_alu|u_substraction|calc_res[8]~35\)) # (!\u_alu|u_substraction|Add0~18_combout\ & ((\u_alu|u_substraction|calc_res[8]~35\) # (GND)))))
-- \u_alu|u_substraction|calc_res[9]~37\ = CARRY((\u_decoder|src1\(9) & (!\u_alu|u_substraction|Add0~18_combout\ & !\u_alu|u_substraction|calc_res[8]~35\)) # (!\u_decoder|src1\(9) & ((!\u_alu|u_substraction|calc_res[8]~35\) # 
-- (!\u_alu|u_substraction|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(9),
	datab => \u_alu|u_substraction|Add0~18_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[8]~35\,
	combout => \u_alu|u_substraction|calc_res[9]~36_combout\,
	cout => \u_alu|u_substraction|calc_res[9]~37\);

-- Location: LCCOMB_X84_Y52_N2
\u_alu|u_substraction|calc_res[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[10]~38_combout\ = ((\u_decoder|src1\(10) $ (\u_alu|u_substraction|Add0~20_combout\ $ (!\u_alu|u_substraction|calc_res[9]~37\)))) # (GND)
-- \u_alu|u_substraction|calc_res[10]~39\ = CARRY((\u_decoder|src1\(10) & ((\u_alu|u_substraction|Add0~20_combout\) # (!\u_alu|u_substraction|calc_res[9]~37\))) # (!\u_decoder|src1\(10) & (\u_alu|u_substraction|Add0~20_combout\ & 
-- !\u_alu|u_substraction|calc_res[9]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(10),
	datab => \u_alu|u_substraction|Add0~20_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[9]~37\,
	combout => \u_alu|u_substraction|calc_res[10]~38_combout\,
	cout => \u_alu|u_substraction|calc_res[10]~39\);

-- Location: LCCOMB_X84_Y52_N4
\u_alu|u_substraction|calc_res[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[11]~40_combout\ = (\u_alu|u_substraction|Add0~22_combout\ & ((\u_decoder|src1\(11) & (\u_alu|u_substraction|calc_res[10]~39\ & VCC)) # (!\u_decoder|src1\(11) & (!\u_alu|u_substraction|calc_res[10]~39\)))) # 
-- (!\u_alu|u_substraction|Add0~22_combout\ & ((\u_decoder|src1\(11) & (!\u_alu|u_substraction|calc_res[10]~39\)) # (!\u_decoder|src1\(11) & ((\u_alu|u_substraction|calc_res[10]~39\) # (GND)))))
-- \u_alu|u_substraction|calc_res[11]~41\ = CARRY((\u_alu|u_substraction|Add0~22_combout\ & (!\u_decoder|src1\(11) & !\u_alu|u_substraction|calc_res[10]~39\)) # (!\u_alu|u_substraction|Add0~22_combout\ & ((!\u_alu|u_substraction|calc_res[10]~39\) # 
-- (!\u_decoder|src1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|Add0~22_combout\,
	datab => \u_decoder|src1\(11),
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[10]~39\,
	combout => \u_alu|u_substraction|calc_res[11]~40_combout\,
	cout => \u_alu|u_substraction|calc_res[11]~41\);

-- Location: LCCOMB_X84_Y52_N6
\u_alu|u_substraction|calc_res[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[12]~42_combout\ = ((\u_decoder|src1\(12) $ (\u_alu|u_substraction|Add0~24_combout\ $ (!\u_alu|u_substraction|calc_res[11]~41\)))) # (GND)
-- \u_alu|u_substraction|calc_res[12]~43\ = CARRY((\u_decoder|src1\(12) & ((\u_alu|u_substraction|Add0~24_combout\) # (!\u_alu|u_substraction|calc_res[11]~41\))) # (!\u_decoder|src1\(12) & (\u_alu|u_substraction|Add0~24_combout\ & 
-- !\u_alu|u_substraction|calc_res[11]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(12),
	datab => \u_alu|u_substraction|Add0~24_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[11]~41\,
	combout => \u_alu|u_substraction|calc_res[12]~42_combout\,
	cout => \u_alu|u_substraction|calc_res[12]~43\);

-- Location: LCCOMB_X84_Y52_N8
\u_alu|u_substraction|calc_res[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[13]~44_combout\ = (\u_alu|u_substraction|Add0~26_combout\ & ((\u_decoder|src1\(13) & (\u_alu|u_substraction|calc_res[12]~43\ & VCC)) # (!\u_decoder|src1\(13) & (!\u_alu|u_substraction|calc_res[12]~43\)))) # 
-- (!\u_alu|u_substraction|Add0~26_combout\ & ((\u_decoder|src1\(13) & (!\u_alu|u_substraction|calc_res[12]~43\)) # (!\u_decoder|src1\(13) & ((\u_alu|u_substraction|calc_res[12]~43\) # (GND)))))
-- \u_alu|u_substraction|calc_res[13]~45\ = CARRY((\u_alu|u_substraction|Add0~26_combout\ & (!\u_decoder|src1\(13) & !\u_alu|u_substraction|calc_res[12]~43\)) # (!\u_alu|u_substraction|Add0~26_combout\ & ((!\u_alu|u_substraction|calc_res[12]~43\) # 
-- (!\u_decoder|src1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|Add0~26_combout\,
	datab => \u_decoder|src1\(13),
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[12]~43\,
	combout => \u_alu|u_substraction|calc_res[13]~44_combout\,
	cout => \u_alu|u_substraction|calc_res[13]~45\);

-- Location: LCCOMB_X84_Y52_N10
\u_alu|u_substraction|calc_res[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[14]~46_combout\ = ((\u_alu|u_substraction|Add0~28_combout\ $ (\u_decoder|src1\(14) $ (!\u_alu|u_substraction|calc_res[13]~45\)))) # (GND)
-- \u_alu|u_substraction|calc_res[14]~47\ = CARRY((\u_alu|u_substraction|Add0~28_combout\ & ((\u_decoder|src1\(14)) # (!\u_alu|u_substraction|calc_res[13]~45\))) # (!\u_alu|u_substraction|Add0~28_combout\ & (\u_decoder|src1\(14) & 
-- !\u_alu|u_substraction|calc_res[13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|Add0~28_combout\,
	datab => \u_decoder|src1\(14),
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[13]~45\,
	combout => \u_alu|u_substraction|calc_res[14]~46_combout\,
	cout => \u_alu|u_substraction|calc_res[14]~47\);

-- Location: LCCOMB_X84_Y52_N12
\u_alu|u_substraction|calc_res[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[15]~48_combout\ = (\u_decoder|src1\(15) & ((\u_alu|u_substraction|Add0~30_combout\ & (\u_alu|u_substraction|calc_res[14]~47\ & VCC)) # (!\u_alu|u_substraction|Add0~30_combout\ & (!\u_alu|u_substraction|calc_res[14]~47\)))) # 
-- (!\u_decoder|src1\(15) & ((\u_alu|u_substraction|Add0~30_combout\ & (!\u_alu|u_substraction|calc_res[14]~47\)) # (!\u_alu|u_substraction|Add0~30_combout\ & ((\u_alu|u_substraction|calc_res[14]~47\) # (GND)))))
-- \u_alu|u_substraction|calc_res[15]~49\ = CARRY((\u_decoder|src1\(15) & (!\u_alu|u_substraction|Add0~30_combout\ & !\u_alu|u_substraction|calc_res[14]~47\)) # (!\u_decoder|src1\(15) & ((!\u_alu|u_substraction|calc_res[14]~47\) # 
-- (!\u_alu|u_substraction|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(15),
	datab => \u_alu|u_substraction|Add0~30_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[14]~47\,
	combout => \u_alu|u_substraction|calc_res[15]~48_combout\,
	cout => \u_alu|u_substraction|calc_res[15]~49\);

-- Location: LCCOMB_X84_Y52_N14
\u_alu|u_substraction|calc_res[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[16]~50_combout\ = (\u_alu|u_substraction|Add0~32_combout\ & (!\u_alu|u_substraction|calc_res[15]~49\ & VCC)) # (!\u_alu|u_substraction|Add0~32_combout\ & (\u_alu|u_substraction|calc_res[15]~49\ $ (GND)))
-- \u_alu|u_substraction|calc_res[16]~51\ = CARRY((!\u_alu|u_substraction|Add0~32_combout\ & !\u_alu|u_substraction|calc_res[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|Add0~32_combout\,
	datad => VCC,
	cin => \u_alu|u_substraction|calc_res[15]~49\,
	combout => \u_alu|u_substraction|calc_res[16]~50_combout\,
	cout => \u_alu|u_substraction|calc_res[16]~51\);

-- Location: LCCOMB_X84_Y52_N16
\u_alu|u_substraction|calc_res[31]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_substraction|calc_res[31]~52_combout\ = \u_alu|u_substraction|Add0~32_combout\ $ (!\u_alu|u_substraction|calc_res[16]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|Add0~32_combout\,
	cin => \u_alu|u_substraction|calc_res[16]~51\,
	combout => \u_alu|u_substraction|calc_res[31]~52_combout\);

-- Location: FF_X84_Y52_N17
\u_alu|u_substraction|calc_res[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[31]~52_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(31));

-- Location: LCCOMB_X86_Y55_N28
\u_alu|u_booth|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~10_combout\ = \u_decoder|src1\(3) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(3),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~10_combout\);

-- Location: LCCOMB_X84_Y53_N2
\u_alu|u_booth|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~8_combout\ = \u_decoder|src1\(5) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(5),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~8_combout\);

-- Location: LCCOMB_X84_Y53_N0
\u_alu|u_booth|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~5_combout\ = \u_decoder|src1\(8) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(8),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~5_combout\);

-- Location: LCCOMB_X86_Y52_N28
\u_alu|u_booth|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~0_combout\ = \u_decoder|src1\(13) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(13),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~0_combout\);

-- Location: LCCOMB_X86_Y52_N24
\u_alu|u_booth|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~1_combout\ = \u_decoder|src1\(12) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(12),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~1_combout\);

-- Location: LCCOMB_X84_Y53_N8
\u_alu|u_booth|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~2_combout\ = \u_decoder|src1\(11) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(11),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~2_combout\);

-- Location: LCCOMB_X84_Y53_N12
\u_alu|u_booth|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~3_combout\ = \u_decoder|src1\(10) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(10),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~3_combout\);

-- Location: LCCOMB_X86_Y52_N26
\u_alu|u_booth|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~4_combout\ = \u_decoder|src1\(9) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(9),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~4_combout\);

-- Location: LCCOMB_X84_Y53_N6
\u_alu|u_booth|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~6_combout\ = \u_decoder|src1\(7) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(7),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~6_combout\);

-- Location: LCCOMB_X84_Y53_N4
\u_alu|u_booth|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~7_combout\ = \u_decoder|src1\(6) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(6),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~7_combout\);

-- Location: LCCOMB_X84_Y53_N10
\u_alu|u_booth|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~9_combout\ = \u_decoder|src1\(4) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(4),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~9_combout\);

-- Location: LCCOMB_X86_Y55_N30
\u_alu|u_booth|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~11_combout\ = \u_decoder|src1\(2) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(2),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~11_combout\);

-- Location: LCCOMB_X87_Y53_N0
\u_alu|u_booth|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~12_combout\ = \u_decoder|src1\(1) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(1),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~12_combout\);

-- Location: LCCOMB_X87_Y53_N2
\u_alu|u_booth|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~13_combout\ = \u_decoder|src1\(0) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(0),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~13_combout\);

-- Location: LCCOMB_X87_Y53_N16
\u_alu|u_booth|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~15_cout\ = CARRY((!\u_alu|u_booth|calc_res\(0) & \u_alu|u_booth|sum_Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|calc_res\(0),
	datab => \u_alu|u_booth|sum_Q\(0),
	datad => VCC,
	cout => \u_alu|u_booth|Add1~15_cout\);

-- Location: LCCOMB_X87_Y53_N18
\u_alu|u_booth|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~17_cout\ = CARRY((\u_alu|u_booth|A\(0) & (!\u_alu|u_booth|Add1~13_combout\ & !\u_alu|u_booth|Add1~15_cout\)) # (!\u_alu|u_booth|A\(0) & ((!\u_alu|u_booth|Add1~15_cout\) # (!\u_alu|u_booth|Add1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|A\(0),
	datab => \u_alu|u_booth|Add1~13_combout\,
	datad => VCC,
	cin => \u_alu|u_booth|Add1~15_cout\,
	cout => \u_alu|u_booth|Add1~17_cout\);

-- Location: LCCOMB_X87_Y53_N20
\u_alu|u_booth|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~18_combout\ = ((\u_alu|u_booth|A\(1) $ (\u_alu|u_booth|Add1~12_combout\ $ (!\u_alu|u_booth|Add1~17_cout\)))) # (GND)
-- \u_alu|u_booth|Add1~19\ = CARRY((\u_alu|u_booth|A\(1) & ((\u_alu|u_booth|Add1~12_combout\) # (!\u_alu|u_booth|Add1~17_cout\))) # (!\u_alu|u_booth|A\(1) & (\u_alu|u_booth|Add1~12_combout\ & !\u_alu|u_booth|Add1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|A\(1),
	datab => \u_alu|u_booth|Add1~12_combout\,
	datad => VCC,
	cin => \u_alu|u_booth|Add1~17_cout\,
	combout => \u_alu|u_booth|Add1~18_combout\,
	cout => \u_alu|u_booth|Add1~19\);

-- Location: LCCOMB_X87_Y53_N22
\u_alu|u_booth|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~20_combout\ = (\u_alu|u_booth|A\(2) & ((\u_alu|u_booth|Add1~11_combout\ & (\u_alu|u_booth|Add1~19\ & VCC)) # (!\u_alu|u_booth|Add1~11_combout\ & (!\u_alu|u_booth|Add1~19\)))) # (!\u_alu|u_booth|A\(2) & ((\u_alu|u_booth|Add1~11_combout\ 
-- & (!\u_alu|u_booth|Add1~19\)) # (!\u_alu|u_booth|Add1~11_combout\ & ((\u_alu|u_booth|Add1~19\) # (GND)))))
-- \u_alu|u_booth|Add1~21\ = CARRY((\u_alu|u_booth|A\(2) & (!\u_alu|u_booth|Add1~11_combout\ & !\u_alu|u_booth|Add1~19\)) # (!\u_alu|u_booth|A\(2) & ((!\u_alu|u_booth|Add1~19\) # (!\u_alu|u_booth|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|A\(2),
	datab => \u_alu|u_booth|Add1~11_combout\,
	datad => VCC,
	cin => \u_alu|u_booth|Add1~19\,
	combout => \u_alu|u_booth|Add1~20_combout\,
	cout => \u_alu|u_booth|Add1~21\);

-- Location: LCCOMB_X87_Y53_N24
\u_alu|u_booth|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~22_combout\ = ((\u_alu|u_booth|Add1~10_combout\ $ (\u_alu|u_booth|A\(3) $ (!\u_alu|u_booth|Add1~21\)))) # (GND)
-- \u_alu|u_booth|Add1~23\ = CARRY((\u_alu|u_booth|Add1~10_combout\ & ((\u_alu|u_booth|A\(3)) # (!\u_alu|u_booth|Add1~21\))) # (!\u_alu|u_booth|Add1~10_combout\ & (\u_alu|u_booth|A\(3) & !\u_alu|u_booth|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|Add1~10_combout\,
	datab => \u_alu|u_booth|A\(3),
	datad => VCC,
	cin => \u_alu|u_booth|Add1~21\,
	combout => \u_alu|u_booth|Add1~22_combout\,
	cout => \u_alu|u_booth|Add1~23\);

-- Location: LCCOMB_X87_Y53_N26
\u_alu|u_booth|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~24_combout\ = (\u_alu|u_booth|A\(4) & ((\u_alu|u_booth|Add1~9_combout\ & (\u_alu|u_booth|Add1~23\ & VCC)) # (!\u_alu|u_booth|Add1~9_combout\ & (!\u_alu|u_booth|Add1~23\)))) # (!\u_alu|u_booth|A\(4) & ((\u_alu|u_booth|Add1~9_combout\ & 
-- (!\u_alu|u_booth|Add1~23\)) # (!\u_alu|u_booth|Add1~9_combout\ & ((\u_alu|u_booth|Add1~23\) # (GND)))))
-- \u_alu|u_booth|Add1~25\ = CARRY((\u_alu|u_booth|A\(4) & (!\u_alu|u_booth|Add1~9_combout\ & !\u_alu|u_booth|Add1~23\)) # (!\u_alu|u_booth|A\(4) & ((!\u_alu|u_booth|Add1~23\) # (!\u_alu|u_booth|Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|A\(4),
	datab => \u_alu|u_booth|Add1~9_combout\,
	datad => VCC,
	cin => \u_alu|u_booth|Add1~23\,
	combout => \u_alu|u_booth|Add1~24_combout\,
	cout => \u_alu|u_booth|Add1~25\);

-- Location: LCCOMB_X87_Y53_N28
\u_alu|u_booth|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~26_combout\ = ((\u_alu|u_booth|Add1~8_combout\ $ (\u_alu|u_booth|A\(5) $ (!\u_alu|u_booth|Add1~25\)))) # (GND)
-- \u_alu|u_booth|Add1~27\ = CARRY((\u_alu|u_booth|Add1~8_combout\ & ((\u_alu|u_booth|A\(5)) # (!\u_alu|u_booth|Add1~25\))) # (!\u_alu|u_booth|Add1~8_combout\ & (\u_alu|u_booth|A\(5) & !\u_alu|u_booth|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|Add1~8_combout\,
	datab => \u_alu|u_booth|A\(5),
	datad => VCC,
	cin => \u_alu|u_booth|Add1~25\,
	combout => \u_alu|u_booth|Add1~26_combout\,
	cout => \u_alu|u_booth|Add1~27\);

-- Location: LCCOMB_X87_Y53_N30
\u_alu|u_booth|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~28_combout\ = (\u_alu|u_booth|Add1~7_combout\ & ((\u_alu|u_booth|A\(6) & (\u_alu|u_booth|Add1~27\ & VCC)) # (!\u_alu|u_booth|A\(6) & (!\u_alu|u_booth|Add1~27\)))) # (!\u_alu|u_booth|Add1~7_combout\ & ((\u_alu|u_booth|A\(6) & 
-- (!\u_alu|u_booth|Add1~27\)) # (!\u_alu|u_booth|A\(6) & ((\u_alu|u_booth|Add1~27\) # (GND)))))
-- \u_alu|u_booth|Add1~29\ = CARRY((\u_alu|u_booth|Add1~7_combout\ & (!\u_alu|u_booth|A\(6) & !\u_alu|u_booth|Add1~27\)) # (!\u_alu|u_booth|Add1~7_combout\ & ((!\u_alu|u_booth|Add1~27\) # (!\u_alu|u_booth|A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|Add1~7_combout\,
	datab => \u_alu|u_booth|A\(6),
	datad => VCC,
	cin => \u_alu|u_booth|Add1~27\,
	combout => \u_alu|u_booth|Add1~28_combout\,
	cout => \u_alu|u_booth|Add1~29\);

-- Location: LCCOMB_X87_Y52_N0
\u_alu|u_booth|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~30_combout\ = ((\u_alu|u_booth|A\(7) $ (\u_alu|u_booth|Add1~6_combout\ $ (!\u_alu|u_booth|Add1~29\)))) # (GND)
-- \u_alu|u_booth|Add1~31\ = CARRY((\u_alu|u_booth|A\(7) & ((\u_alu|u_booth|Add1~6_combout\) # (!\u_alu|u_booth|Add1~29\))) # (!\u_alu|u_booth|A\(7) & (\u_alu|u_booth|Add1~6_combout\ & !\u_alu|u_booth|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|A\(7),
	datab => \u_alu|u_booth|Add1~6_combout\,
	datad => VCC,
	cin => \u_alu|u_booth|Add1~29\,
	combout => \u_alu|u_booth|Add1~30_combout\,
	cout => \u_alu|u_booth|Add1~31\);

-- Location: LCCOMB_X87_Y52_N2
\u_alu|u_booth|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~32_combout\ = (\u_alu|u_booth|Add1~5_combout\ & ((\u_alu|u_booth|A\(8) & (\u_alu|u_booth|Add1~31\ & VCC)) # (!\u_alu|u_booth|A\(8) & (!\u_alu|u_booth|Add1~31\)))) # (!\u_alu|u_booth|Add1~5_combout\ & ((\u_alu|u_booth|A\(8) & 
-- (!\u_alu|u_booth|Add1~31\)) # (!\u_alu|u_booth|A\(8) & ((\u_alu|u_booth|Add1~31\) # (GND)))))
-- \u_alu|u_booth|Add1~33\ = CARRY((\u_alu|u_booth|Add1~5_combout\ & (!\u_alu|u_booth|A\(8) & !\u_alu|u_booth|Add1~31\)) # (!\u_alu|u_booth|Add1~5_combout\ & ((!\u_alu|u_booth|Add1~31\) # (!\u_alu|u_booth|A\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|Add1~5_combout\,
	datab => \u_alu|u_booth|A\(8),
	datad => VCC,
	cin => \u_alu|u_booth|Add1~31\,
	combout => \u_alu|u_booth|Add1~32_combout\,
	cout => \u_alu|u_booth|Add1~33\);

-- Location: LCCOMB_X87_Y52_N4
\u_alu|u_booth|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~34_combout\ = ((\u_alu|u_booth|Add1~4_combout\ $ (\u_alu|u_booth|A\(9) $ (!\u_alu|u_booth|Add1~33\)))) # (GND)
-- \u_alu|u_booth|Add1~35\ = CARRY((\u_alu|u_booth|Add1~4_combout\ & ((\u_alu|u_booth|A\(9)) # (!\u_alu|u_booth|Add1~33\))) # (!\u_alu|u_booth|Add1~4_combout\ & (\u_alu|u_booth|A\(9) & !\u_alu|u_booth|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|Add1~4_combout\,
	datab => \u_alu|u_booth|A\(9),
	datad => VCC,
	cin => \u_alu|u_booth|Add1~33\,
	combout => \u_alu|u_booth|Add1~34_combout\,
	cout => \u_alu|u_booth|Add1~35\);

-- Location: LCCOMB_X87_Y52_N6
\u_alu|u_booth|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~36_combout\ = (\u_alu|u_booth|A\(10) & ((\u_alu|u_booth|Add1~3_combout\ & (\u_alu|u_booth|Add1~35\ & VCC)) # (!\u_alu|u_booth|Add1~3_combout\ & (!\u_alu|u_booth|Add1~35\)))) # (!\u_alu|u_booth|A\(10) & ((\u_alu|u_booth|Add1~3_combout\ 
-- & (!\u_alu|u_booth|Add1~35\)) # (!\u_alu|u_booth|Add1~3_combout\ & ((\u_alu|u_booth|Add1~35\) # (GND)))))
-- \u_alu|u_booth|Add1~37\ = CARRY((\u_alu|u_booth|A\(10) & (!\u_alu|u_booth|Add1~3_combout\ & !\u_alu|u_booth|Add1~35\)) # (!\u_alu|u_booth|A\(10) & ((!\u_alu|u_booth|Add1~35\) # (!\u_alu|u_booth|Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|A\(10),
	datab => \u_alu|u_booth|Add1~3_combout\,
	datad => VCC,
	cin => \u_alu|u_booth|Add1~35\,
	combout => \u_alu|u_booth|Add1~36_combout\,
	cout => \u_alu|u_booth|Add1~37\);

-- Location: LCCOMB_X87_Y52_N8
\u_alu|u_booth|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~38_combout\ = ((\u_alu|u_booth|Add1~2_combout\ $ (\u_alu|u_booth|A\(11) $ (!\u_alu|u_booth|Add1~37\)))) # (GND)
-- \u_alu|u_booth|Add1~39\ = CARRY((\u_alu|u_booth|Add1~2_combout\ & ((\u_alu|u_booth|A\(11)) # (!\u_alu|u_booth|Add1~37\))) # (!\u_alu|u_booth|Add1~2_combout\ & (\u_alu|u_booth|A\(11) & !\u_alu|u_booth|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|Add1~2_combout\,
	datab => \u_alu|u_booth|A\(11),
	datad => VCC,
	cin => \u_alu|u_booth|Add1~37\,
	combout => \u_alu|u_booth|Add1~38_combout\,
	cout => \u_alu|u_booth|Add1~39\);

-- Location: LCCOMB_X87_Y52_N10
\u_alu|u_booth|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~40_combout\ = (\u_alu|u_booth|Add1~1_combout\ & ((\u_alu|u_booth|A\(12) & (\u_alu|u_booth|Add1~39\ & VCC)) # (!\u_alu|u_booth|A\(12) & (!\u_alu|u_booth|Add1~39\)))) # (!\u_alu|u_booth|Add1~1_combout\ & ((\u_alu|u_booth|A\(12) & 
-- (!\u_alu|u_booth|Add1~39\)) # (!\u_alu|u_booth|A\(12) & ((\u_alu|u_booth|Add1~39\) # (GND)))))
-- \u_alu|u_booth|Add1~41\ = CARRY((\u_alu|u_booth|Add1~1_combout\ & (!\u_alu|u_booth|A\(12) & !\u_alu|u_booth|Add1~39\)) # (!\u_alu|u_booth|Add1~1_combout\ & ((!\u_alu|u_booth|Add1~39\) # (!\u_alu|u_booth|A\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|Add1~1_combout\,
	datab => \u_alu|u_booth|A\(12),
	datad => VCC,
	cin => \u_alu|u_booth|Add1~39\,
	combout => \u_alu|u_booth|Add1~40_combout\,
	cout => \u_alu|u_booth|Add1~41\);

-- Location: LCCOMB_X87_Y52_N12
\u_alu|u_booth|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~42_combout\ = ((\u_alu|u_booth|Add1~0_combout\ $ (\u_alu|u_booth|A\(13) $ (!\u_alu|u_booth|Add1~41\)))) # (GND)
-- \u_alu|u_booth|Add1~43\ = CARRY((\u_alu|u_booth|Add1~0_combout\ & ((\u_alu|u_booth|A\(13)) # (!\u_alu|u_booth|Add1~41\))) # (!\u_alu|u_booth|Add1~0_combout\ & (\u_alu|u_booth|A\(13) & !\u_alu|u_booth|Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|Add1~0_combout\,
	datab => \u_alu|u_booth|A\(13),
	datad => VCC,
	cin => \u_alu|u_booth|Add1~41\,
	combout => \u_alu|u_booth|Add1~42_combout\,
	cout => \u_alu|u_booth|Add1~43\);

-- Location: LCCOMB_X87_Y52_N18
\u_alu|u_booth|a_resert[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[13]~29_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(13)))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~42_combout\)))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~42_combout\)) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|Add1~42_combout\,
	datac => \u_alu|u_booth|calc_res\(0),
	datad => \u_alu|u_booth|A\(13),
	combout => \u_alu|u_booth|a_resert[13]~29_combout\);

-- Location: FF_X87_Y52_N19
\u_alu|u_booth|A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[13]~29_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(12));

-- Location: LCCOMB_X87_Y52_N24
\u_alu|u_booth|a_resert[12]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[12]~31_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|A\(12))) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|Add1~40_combout\))))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|Add1~40_combout\))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|A\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|A\(12),
	datac => \u_alu|u_booth|calc_res\(0),
	datad => \u_alu|u_booth|Add1~40_combout\,
	combout => \u_alu|u_booth|a_resert[12]~31_combout\);

-- Location: FF_X87_Y52_N25
\u_alu|u_booth|A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[12]~31_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(11));

-- Location: LCCOMB_X87_Y52_N26
\u_alu|u_booth|a_resert[11]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[11]~32_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|A\(11))) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|Add1~38_combout\))))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|Add1~38_combout\))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|A\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|A\(11),
	datac => \u_alu|u_booth|calc_res\(0),
	datad => \u_alu|u_booth|Add1~38_combout\,
	combout => \u_alu|u_booth|a_resert[11]~32_combout\);

-- Location: FF_X87_Y52_N27
\u_alu|u_booth|A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[11]~32_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(10));

-- Location: LCCOMB_X87_Y52_N28
\u_alu|u_booth|a_resert[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[10]~33_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|A\(10))) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|Add1~36_combout\))))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|Add1~36_combout\))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|A\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|calc_res\(0),
	datac => \u_alu|u_booth|A\(10),
	datad => \u_alu|u_booth|Add1~36_combout\,
	combout => \u_alu|u_booth|a_resert[10]~33_combout\);

-- Location: FF_X87_Y52_N29
\u_alu|u_booth|A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[10]~33_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(9));

-- Location: LCCOMB_X87_Y51_N16
\u_alu|u_booth|a_resert[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[9]~34_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|A\(9))) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|Add1~34_combout\))))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|Add1~34_combout\))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|calc_res\(0),
	datac => \u_alu|u_booth|A\(9),
	datad => \u_alu|u_booth|Add1~34_combout\,
	combout => \u_alu|u_booth|a_resert[9]~34_combout\);

-- Location: FF_X87_Y51_N17
\u_alu|u_booth|A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[9]~34_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(8));

-- Location: LCCOMB_X87_Y51_N30
\u_alu|u_booth|a_resert[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[8]~35_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(8)))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~32_combout\)))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~32_combout\)) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|Add1~32_combout\,
	datac => \u_alu|u_booth|calc_res\(0),
	datad => \u_alu|u_booth|A\(8),
	combout => \u_alu|u_booth|a_resert[8]~35_combout\);

-- Location: FF_X87_Y51_N31
\u_alu|u_booth|A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[8]~35_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(7));

-- Location: LCCOMB_X87_Y51_N22
\u_alu|u_booth|a_resert[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[7]~36_combout\ = (\u_alu|u_booth|A\(7) & ((\u_alu|u_booth|Add1~30_combout\) # (\u_alu|u_booth|calc_res\(0) $ (!\u_alu|u_booth|sum_Q\(0))))) # (!\u_alu|u_booth|A\(7) & (\u_alu|u_booth|Add1~30_combout\ & (\u_alu|u_booth|calc_res\(0) 
-- $ (\u_alu|u_booth|sum_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|A\(7),
	datab => \u_alu|u_booth|calc_res\(0),
	datac => \u_alu|u_booth|Add1~30_combout\,
	datad => \u_alu|u_booth|sum_Q\(0),
	combout => \u_alu|u_booth|a_resert[7]~36_combout\);

-- Location: FF_X87_Y51_N23
\u_alu|u_booth|A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[7]~36_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(6));

-- Location: LCCOMB_X87_Y53_N4
\u_alu|u_booth|a_resert[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[6]~37_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|A\(6))) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|Add1~28_combout\))))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|Add1~28_combout\))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|A\(6),
	datac => \u_alu|u_booth|Add1~28_combout\,
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|a_resert[6]~37_combout\);

-- Location: FF_X87_Y53_N5
\u_alu|u_booth|A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[6]~37_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(5));

-- Location: LCCOMB_X87_Y53_N6
\u_alu|u_booth|a_resert[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[5]~38_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(5)))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~26_combout\)))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~26_combout\)) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|Add1~26_combout\,
	datac => \u_alu|u_booth|A\(5),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|a_resert[5]~38_combout\);

-- Location: FF_X87_Y53_N7
\u_alu|u_booth|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[5]~38_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(4));

-- Location: LCCOMB_X87_Y53_N8
\u_alu|u_booth|a_resert[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[4]~39_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(4)))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~24_combout\)))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~24_combout\)) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|calc_res\(0),
	datac => \u_alu|u_booth|Add1~24_combout\,
	datad => \u_alu|u_booth|A\(4),
	combout => \u_alu|u_booth|a_resert[4]~39_combout\);

-- Location: FF_X87_Y53_N9
\u_alu|u_booth|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[4]~39_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(3));

-- Location: LCCOMB_X87_Y53_N10
\u_alu|u_booth|a_resert[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[3]~40_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(3)))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~22_combout\)))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~22_combout\)) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|Add1~22_combout\,
	datac => \u_alu|u_booth|A\(3),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|a_resert[3]~40_combout\);

-- Location: FF_X87_Y53_N11
\u_alu|u_booth|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[3]~40_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(2));

-- Location: LCCOMB_X87_Y53_N12
\u_alu|u_booth|a_resert[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[2]~41_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(2)))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~20_combout\)))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~20_combout\)) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|calc_res\(0),
	datac => \u_alu|u_booth|Add1~20_combout\,
	datad => \u_alu|u_booth|A\(2),
	combout => \u_alu|u_booth|a_resert[2]~41_combout\);

-- Location: FF_X87_Y53_N13
\u_alu|u_booth|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[2]~41_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(1));

-- Location: LCCOMB_X87_Y53_N14
\u_alu|u_booth|a_resert[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[1]~42_combout\ = (\u_alu|u_booth|sum_Q\(0) & ((\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(1)))) # (!\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~18_combout\)))) # (!\u_alu|u_booth|sum_Q\(0) & 
-- ((\u_alu|u_booth|calc_res\(0) & (\u_alu|u_booth|Add1~18_combout\)) # (!\u_alu|u_booth|calc_res\(0) & ((\u_alu|u_booth|A\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datab => \u_alu|u_booth|calc_res\(0),
	datac => \u_alu|u_booth|Add1~18_combout\,
	datad => \u_alu|u_booth|A\(1),
	combout => \u_alu|u_booth|a_resert[1]~42_combout\);

-- Location: FF_X87_Y53_N15
\u_alu|u_booth|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[1]~42_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(0));

-- Location: LCCOMB_X83_Y52_N28
\u_alu|u_booth|sum_Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~7_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & (\u_alu|u_booth|A\(0))) # (!\u_alu|u_booth|c_state.IDLE~q\ & ((\u_decoder|src2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|A\(0),
	datab => \u_decoder|src2\(15),
	datac => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~7_combout\);

-- Location: FF_X83_Y52_N29
\u_alu|u_booth|sum_Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(15));

-- Location: LCCOMB_X83_Y52_N18
\u_alu|u_booth|sum_Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~6_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & (\u_alu|u_booth|sum_Q\(15))) # (!\u_alu|u_booth|c_state.IDLE~q\ & ((\u_decoder|src2\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(15),
	datac => \u_alu|u_booth|c_state.IDLE~q\,
	datad => \u_decoder|src2\(14),
	combout => \u_alu|u_booth|sum_Q~6_combout\);

-- Location: FF_X83_Y52_N19
\u_alu|u_booth|sum_Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(14));

-- Location: LCCOMB_X89_Y53_N2
\u_alu|u_booth|sum_Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~5_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & (\u_alu|u_booth|sum_Q\(14))) # (!\u_alu|u_booth|c_state.IDLE~q\ & ((\u_decoder|src2\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(14),
	datac => \u_decoder|src2\(13),
	datad => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~5_combout\);

-- Location: FF_X89_Y53_N3
\u_alu|u_booth|sum_Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(13));

-- Location: LCCOMB_X89_Y53_N24
\u_alu|u_booth|sum_Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~4_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_booth|sum_Q\(13)))) # (!\u_alu|u_booth|c_state.IDLE~q\ & (\u_decoder|src2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(12),
	datab => \u_alu|u_booth|c_state.IDLE~q\,
	datad => \u_alu|u_booth|sum_Q\(13),
	combout => \u_alu|u_booth|sum_Q~4_combout\);

-- Location: FF_X89_Y53_N25
\u_alu|u_booth|sum_Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(12));

-- Location: LCCOMB_X83_Y52_N20
\u_alu|u_booth|sum_Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~12_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_booth|sum_Q\(12)))) # (!\u_alu|u_booth|c_state.IDLE~q\ & (\u_decoder|src2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(11),
	datac => \u_alu|u_booth|c_state.IDLE~q\,
	datad => \u_alu|u_booth|sum_Q\(12),
	combout => \u_alu|u_booth|sum_Q~12_combout\);

-- Location: FF_X83_Y52_N21
\u_alu|u_booth|sum_Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(11));

-- Location: LCCOMB_X83_Y52_N26
\u_alu|u_booth|sum_Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~11_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_booth|sum_Q\(11)))) # (!\u_alu|u_booth|c_state.IDLE~q\ & (\u_decoder|src2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(10),
	datab => \u_alu|u_booth|sum_Q\(11),
	datac => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~11_combout\);

-- Location: FF_X83_Y52_N27
\u_alu|u_booth|sum_Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~11_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(10));

-- Location: LCCOMB_X83_Y52_N24
\u_alu|u_booth|sum_Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~10_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & (\u_alu|u_booth|sum_Q\(10))) # (!\u_alu|u_booth|c_state.IDLE~q\ & ((\u_decoder|src2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(10),
	datac => \u_alu|u_booth|c_state.IDLE~q\,
	datad => \u_decoder|src2\(9),
	combout => \u_alu|u_booth|sum_Q~10_combout\);

-- Location: FF_X83_Y52_N25
\u_alu|u_booth|sum_Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(9));

-- Location: LCCOMB_X83_Y52_N30
\u_alu|u_booth|sum_Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~9_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & (\u_alu|u_booth|sum_Q\(9))) # (!\u_alu|u_booth|c_state.IDLE~q\ & ((\u_decoder|src2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_booth|sum_Q\(9),
	datac => \u_alu|u_booth|c_state.IDLE~q\,
	datad => \u_decoder|src2\(8),
	combout => \u_alu|u_booth|sum_Q~9_combout\);

-- Location: FF_X83_Y52_N31
\u_alu|u_booth|sum_Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~9_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(8));

-- Location: LCCOMB_X84_Y54_N26
\u_alu|u_booth|sum_Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~15_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_booth|sum_Q\(8)))) # (!\u_alu|u_booth|c_state.IDLE~q\ & (\u_decoder|src2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(7),
	datac => \u_alu|u_booth|sum_Q\(8),
	datad => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~15_combout\);

-- Location: FF_X84_Y54_N27
\u_alu|u_booth|sum_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~15_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(7));

-- Location: LCCOMB_X84_Y54_N22
\u_alu|u_booth|sum_Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~14_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_booth|sum_Q\(7)))) # (!\u_alu|u_booth|c_state.IDLE~q\ & (\u_decoder|src2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(6),
	datac => \u_alu|u_booth|sum_Q\(7),
	datad => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~14_combout\);

-- Location: FF_X84_Y54_N23
\u_alu|u_booth|sum_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(6));

-- Location: LCCOMB_X84_Y54_N6
\u_alu|u_booth|sum_Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~13_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_booth|sum_Q\(6)))) # (!\u_alu|u_booth|c_state.IDLE~q\ & (\u_decoder|src2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(5),
	datac => \u_alu|u_booth|sum_Q\(6),
	datad => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~13_combout\);

-- Location: FF_X84_Y54_N7
\u_alu|u_booth|sum_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~13_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(5));

-- Location: LCCOMB_X84_Y54_N8
\u_alu|u_booth|sum_Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~8_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & (\u_alu|u_booth|sum_Q\(5))) # (!\u_alu|u_booth|c_state.IDLE~q\ & ((\u_decoder|src2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(5),
	datac => \u_decoder|src2\(4),
	datad => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~8_combout\);

-- Location: FF_X84_Y54_N9
\u_alu|u_booth|sum_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(4));

-- Location: LCCOMB_X84_Y54_N2
\u_alu|u_booth|sum_Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~3_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_booth|sum_Q\(4)))) # (!\u_alu|u_booth|c_state.IDLE~q\ & (\u_decoder|src2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(3),
	datac => \u_alu|u_booth|sum_Q\(4),
	datad => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~3_combout\);

-- Location: FF_X84_Y54_N3
\u_alu|u_booth|sum_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(3));

-- Location: LCCOMB_X84_Y54_N16
\u_alu|u_booth|sum_Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~2_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_booth|sum_Q\(3)))) # (!\u_alu|u_booth|c_state.IDLE~q\ & (\u_decoder|src2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(2),
	datac => \u_alu|u_booth|sum_Q\(3),
	datad => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~2_combout\);

-- Location: FF_X84_Y54_N17
\u_alu|u_booth|sum_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(2));

-- Location: LCCOMB_X84_Y54_N18
\u_alu|u_booth|sum_Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~1_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_booth|sum_Q\(2)))) # (!\u_alu|u_booth|c_state.IDLE~q\ & (\u_decoder|src2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(1),
	datac => \u_alu|u_booth|sum_Q\(2),
	datad => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~1_combout\);

-- Location: FF_X84_Y54_N19
\u_alu|u_booth|sum_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(1));

-- Location: LCCOMB_X84_Y54_N20
\u_alu|u_booth|sum_Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|sum_Q~0_combout\ = (\u_alu|u_booth|c_state.IDLE~q\ & ((\u_alu|u_booth|sum_Q\(1)))) # (!\u_alu|u_booth|c_state.IDLE~q\ & (\u_decoder|src2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src2\(0),
	datac => \u_alu|u_booth|sum_Q\(1),
	datad => \u_alu|u_booth|c_state.IDLE~q\,
	combout => \u_alu|u_booth|sum_Q~0_combout\);

-- Location: FF_X84_Y54_N21
\u_alu|u_booth|sum_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|sum_Q~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|sum_Q\(0));

-- Location: FF_X87_Y53_N17
\u_alu|u_booth|calc_res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(0));

-- Location: LCCOMB_X87_Y52_N30
\u_alu|u_booth|a_resert[13]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[13]~28_combout\ = \u_alu|u_booth|calc_res\(0) $ (\u_alu|u_booth|sum_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_booth|calc_res\(0),
	datad => \u_alu|u_booth|sum_Q\(0),
	combout => \u_alu|u_booth|a_resert[13]~28_combout\);

-- Location: LCCOMB_X86_Y52_N30
\u_alu|u_booth|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~47_combout\ = \u_decoder|src1\(15) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(15),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~47_combout\);

-- Location: LCCOMB_X86_Y52_N22
\u_alu|u_booth|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~44_combout\ = \u_decoder|src1\(14) $ (((\u_alu|u_booth|sum_Q\(0) & !\u_alu|u_booth|calc_res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|sum_Q\(0),
	datac => \u_decoder|src1\(14),
	datad => \u_alu|u_booth|calc_res\(0),
	combout => \u_alu|u_booth|Add1~44_combout\);

-- Location: LCCOMB_X87_Y52_N14
\u_alu|u_booth|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~45_combout\ = (\u_alu|u_booth|A\(14) & ((\u_alu|u_booth|Add1~44_combout\ & (\u_alu|u_booth|Add1~43\ & VCC)) # (!\u_alu|u_booth|Add1~44_combout\ & (!\u_alu|u_booth|Add1~43\)))) # (!\u_alu|u_booth|A\(14) & 
-- ((\u_alu|u_booth|Add1~44_combout\ & (!\u_alu|u_booth|Add1~43\)) # (!\u_alu|u_booth|Add1~44_combout\ & ((\u_alu|u_booth|Add1~43\) # (GND)))))
-- \u_alu|u_booth|Add1~46\ = CARRY((\u_alu|u_booth|A\(14) & (!\u_alu|u_booth|Add1~44_combout\ & !\u_alu|u_booth|Add1~43\)) # (!\u_alu|u_booth|A\(14) & ((!\u_alu|u_booth|Add1~43\) # (!\u_alu|u_booth|Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|A\(14),
	datab => \u_alu|u_booth|Add1~44_combout\,
	datad => VCC,
	cin => \u_alu|u_booth|Add1~43\,
	combout => \u_alu|u_booth|Add1~45_combout\,
	cout => \u_alu|u_booth|Add1~46\);

-- Location: LCCOMB_X87_Y52_N16
\u_alu|u_booth|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|Add1~48_combout\ = \u_alu|u_booth|A\(14) $ (\u_alu|u_booth|Add1~47_combout\ $ (!\u_alu|u_booth|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|A\(14),
	datab => \u_alu|u_booth|Add1~47_combout\,
	cin => \u_alu|u_booth|Add1~46\,
	combout => \u_alu|u_booth|Add1~48_combout\);

-- Location: LCCOMB_X87_Y52_N22
\u_alu|u_booth|A[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|A[14]~0_combout\ = (\u_alu|u_booth|a_resert[13]~28_combout\ & ((\u_alu|u_booth|c_state.DATA~q\ & (\u_alu|u_booth|Add1~48_combout\)) # (!\u_alu|u_booth|c_state.DATA~q\ & ((\u_alu|u_booth|A\(14)))))) # 
-- (!\u_alu|u_booth|a_resert[13]~28_combout\ & (((\u_alu|u_booth|A\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|a_resert[13]~28_combout\,
	datab => \u_alu|u_booth|Add1~48_combout\,
	datac => \u_alu|u_booth|A\(14),
	datad => \u_alu|u_booth|c_state.DATA~q\,
	combout => \u_alu|u_booth|A[14]~0_combout\);

-- Location: FF_X87_Y52_N23
\u_alu|u_booth|A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|A[14]~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(14));

-- Location: LCCOMB_X87_Y52_N20
\u_alu|u_booth|a_resert[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_booth|a_resert[14]~30_combout\ = (\u_alu|u_booth|Add1~45_combout\ & ((\u_alu|u_booth|A\(14)) # (\u_alu|u_booth|calc_res\(0) $ (\u_alu|u_booth|sum_Q\(0))))) # (!\u_alu|u_booth|Add1~45_combout\ & (\u_alu|u_booth|A\(14) & 
-- (\u_alu|u_booth|calc_res\(0) $ (!\u_alu|u_booth|sum_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_booth|Add1~45_combout\,
	datab => \u_alu|u_booth|calc_res\(0),
	datac => \u_alu|u_booth|A\(14),
	datad => \u_alu|u_booth|sum_Q\(0),
	combout => \u_alu|u_booth|a_resert[14]~30_combout\);

-- Location: FF_X87_Y52_N21
\u_alu|u_booth|A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_booth|a_resert[14]~30_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|A\(13));

-- Location: FF_X87_Y51_N29
\u_alu|u_booth|calc_res[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(13),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(29));

-- Location: LCCOMB_X88_Y52_N14
\u_alu|alu_done~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|alu_done~4_combout\ = (\u_alu|calc_res_q.0011~q\ & \u_alu|u_booth|c_state.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|calc_res_q.0011~q\,
	datac => \u_alu|u_booth|c_state.STOP~q\,
	combout => \u_alu|alu_done~4_combout\);

-- Location: LCCOMB_X88_Y52_N8
\u_encoder|calc_res_q[23]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q[23]~0_combout\ = (\u_alu|alu_done~3_combout\ & (((\u_alu|calc_res_q.0111~q\ & !\u_alu|alu_done~4_combout\)) # (!\u_alu|alu_done~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~5_combout\,
	datab => \u_alu|calc_res_q.0111~q\,
	datac => \u_alu|alu_done~4_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q[23]~0_combout\);

-- Location: LCCOMB_X87_Y51_N28
\u_encoder|calc_res_q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~9_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(31))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_substraction|calc_res\(31),
	datac => \u_alu|u_booth|calc_res\(29),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~9_combout\);

-- Location: LCCOMB_X85_Y50_N14
\u_alu|u_shift_add_multi|sum_src1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~28_combout\ = (\u_decoder|src1\(0) & !\u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_decoder|src1\(0),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~28_combout\);

-- Location: FF_X85_Y50_N15
\u_alu|u_shift_add_multi|sum_src1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~28_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(0));

-- Location: LCCOMB_X85_Y50_N4
\u_alu|u_shift_add_multi|sum_src1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~27_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src1\(0)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(1),
	datac => \u_alu|u_shift_add_multi|sum_src1\(0),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~27_combout\);

-- Location: FF_X85_Y50_N5
\u_alu|u_shift_add_multi|sum_src1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~27_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(1));

-- Location: LCCOMB_X85_Y50_N18
\u_alu|u_shift_add_multi|sum_src1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~26_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src1\(1)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src1\(2),
	datac => \u_alu|u_shift_add_multi|sum_src1\(1),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~26_combout\);

-- Location: FF_X85_Y50_N19
\u_alu|u_shift_add_multi|sum_src1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~26_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(2));

-- Location: LCCOMB_X85_Y50_N16
\u_alu|u_shift_add_multi|sum_src1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~25_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src1\(2))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src1\(2),
	datac => \u_decoder|src1\(3),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~25_combout\);

-- Location: FF_X85_Y50_N17
\u_alu|u_shift_add_multi|sum_src1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~25_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(3));

-- Location: LCCOMB_X85_Y50_N30
\u_alu|u_shift_add_multi|sum_src1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~24_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src1\(3)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datab => \u_decoder|src1\(4),
	datad => \u_alu|u_shift_add_multi|sum_src1\(3),
	combout => \u_alu|u_shift_add_multi|sum_src1~24_combout\);

-- Location: FF_X85_Y50_N31
\u_alu|u_shift_add_multi|sum_src1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~24_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(4));

-- Location: LCCOMB_X85_Y50_N28
\u_alu|u_shift_add_multi|sum_src1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~23_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src1\(4)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src1\(5),
	datac => \u_alu|u_shift_add_multi|sum_src1\(4),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~23_combout\);

-- Location: FF_X85_Y50_N29
\u_alu|u_shift_add_multi|sum_src1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~23_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(5));

-- Location: LCCOMB_X85_Y50_N10
\u_alu|u_shift_add_multi|sum_src1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~22_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src1\(5))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datab => \u_alu|u_shift_add_multi|sum_src1\(5),
	datad => \u_decoder|src1\(6),
	combout => \u_alu|u_shift_add_multi|sum_src1~22_combout\);

-- Location: FF_X85_Y50_N11
\u_alu|u_shift_add_multi|sum_src1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~22_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(6));

-- Location: LCCOMB_X85_Y50_N0
\u_alu|u_shift_add_multi|sum_src1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~21_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src1\(6))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(6),
	datab => \u_decoder|src1\(7),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~21_combout\);

-- Location: FF_X85_Y50_N1
\u_alu|u_shift_add_multi|sum_src1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~21_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(7));

-- Location: LCCOMB_X85_Y50_N22
\u_alu|u_shift_add_multi|sum_src1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~20_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src1\(7))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src1\(7),
	datac => \u_decoder|src1\(8),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~20_combout\);

-- Location: FF_X85_Y50_N23
\u_alu|u_shift_add_multi|sum_src1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~20_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(8));

-- Location: LCCOMB_X85_Y50_N12
\u_alu|u_shift_add_multi|sum_src1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~19_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src1\(8)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src1\(9),
	datac => \u_alu|u_shift_add_multi|sum_src1\(8),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~19_combout\);

-- Location: FF_X85_Y50_N13
\u_alu|u_shift_add_multi|sum_src1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~19_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(9));

-- Location: LCCOMB_X85_Y50_N26
\u_alu|u_shift_add_multi|sum_src1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~18_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src1\(9))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(9),
	datac => \u_decoder|src1\(10),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~18_combout\);

-- Location: FF_X85_Y50_N27
\u_alu|u_shift_add_multi|sum_src1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~18_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(10));

-- Location: LCCOMB_X85_Y50_N8
\u_alu|u_shift_add_multi|sum_src1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~17_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src1\(10)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(11),
	datac => \u_alu|u_shift_add_multi|sum_src1\(10),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~17_combout\);

-- Location: FF_X85_Y50_N9
\u_alu|u_shift_add_multi|sum_src1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~17_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(11));

-- Location: LCCOMB_X85_Y50_N6
\u_alu|u_shift_add_multi|sum_src1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~16_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src1\(11)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(12),
	datac => \u_alu|u_shift_add_multi|sum_src1\(11),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~16_combout\);

-- Location: FF_X85_Y50_N7
\u_alu|u_shift_add_multi|sum_src1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~16_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(12));

-- Location: LCCOMB_X85_Y50_N20
\u_alu|u_shift_add_multi|sum_src1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~15_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src1\(12))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(12),
	datab => \u_decoder|src1\(13),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~15_combout\);

-- Location: FF_X85_Y50_N21
\u_alu|u_shift_add_multi|sum_src1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~15_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(13));

-- Location: LCCOMB_X85_Y50_N2
\u_alu|u_shift_add_multi|sum_src1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~14_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src1\(13)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(14),
	datab => \u_alu|u_shift_add_multi|sum_src1\(13),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~14_combout\);

-- Location: FF_X85_Y50_N3
\u_alu|u_shift_add_multi|sum_src1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(14));

-- Location: LCCOMB_X85_Y50_N24
\u_alu|u_shift_add_multi|sum_src1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~13_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src1\(14))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src1\(14),
	datac => \u_decoder|src1\(15),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~13_combout\);

-- Location: FF_X85_Y50_N25
\u_alu|u_shift_add_multi|sum_src1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~13_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(15));

-- Location: LCCOMB_X85_Y49_N8
\u_alu|u_shift_add_multi|sum_src1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~12_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(15) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_shift_add_multi|sum_src1\(15),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~12_combout\);

-- Location: FF_X85_Y49_N9
\u_alu|u_shift_add_multi|sum_src1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(16));

-- Location: LCCOMB_X85_Y49_N22
\u_alu|u_shift_add_multi|sum_src1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~11_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(16) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_shift_add_multi|sum_src1\(16),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~11_combout\);

-- Location: FF_X85_Y49_N23
\u_alu|u_shift_add_multi|sum_src1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~11_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(17));

-- Location: LCCOMB_X85_Y49_N12
\u_alu|u_shift_add_multi|sum_src1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~10_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(17) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_shift_add_multi|sum_src1\(17),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~10_combout\);

-- Location: FF_X85_Y49_N13
\u_alu|u_shift_add_multi|sum_src1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(18));

-- Location: LCCOMB_X85_Y49_N18
\u_alu|u_shift_add_multi|sum_src1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~9_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(18) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(18),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~9_combout\);

-- Location: FF_X85_Y49_N19
\u_alu|u_shift_add_multi|sum_src1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~9_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(19));

-- Location: LCCOMB_X85_Y49_N16
\u_alu|u_shift_add_multi|sum_src1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~8_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(19) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src1\(19),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~8_combout\);

-- Location: FF_X85_Y49_N17
\u_alu|u_shift_add_multi|sum_src1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(20));

-- Location: LCCOMB_X85_Y49_N6
\u_alu|u_shift_add_multi|sum_src1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~7_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(20) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src1\(20),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~7_combout\);

-- Location: FF_X85_Y49_N7
\u_alu|u_shift_add_multi|sum_src1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(21));

-- Location: LCCOMB_X85_Y49_N28
\u_alu|u_shift_add_multi|sum_src1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~6_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(21) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(21),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~6_combout\);

-- Location: FF_X85_Y49_N29
\u_alu|u_shift_add_multi|sum_src1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(22));

-- Location: LCCOMB_X85_Y49_N10
\u_alu|u_shift_add_multi|sum_src1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~5_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(22) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src1\(22),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~5_combout\);

-- Location: FF_X85_Y49_N11
\u_alu|u_shift_add_multi|sum_src1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(23));

-- Location: LCCOMB_X85_Y49_N24
\u_alu|u_shift_add_multi|sum_src1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~4_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(23) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(23),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~4_combout\);

-- Location: FF_X85_Y49_N25
\u_alu|u_shift_add_multi|sum_src1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(24));

-- Location: LCCOMB_X85_Y49_N30
\u_alu|u_shift_add_multi|sum_src1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~3_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(24) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src1\(24),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~3_combout\);

-- Location: FF_X85_Y49_N31
\u_alu|u_shift_add_multi|sum_src1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(25));

-- Location: LCCOMB_X85_Y49_N20
\u_alu|u_shift_add_multi|sum_src1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~2_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(25) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_shift_add_multi|sum_src1\(25),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~2_combout\);

-- Location: FF_X85_Y49_N21
\u_alu|u_shift_add_multi|sum_src1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(26));

-- Location: LCCOMB_X85_Y49_N2
\u_alu|u_shift_add_multi|sum_src1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~1_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(26) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src1\(26),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~1_combout\);

-- Location: FF_X85_Y49_N3
\u_alu|u_shift_add_multi|sum_src1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(27));

-- Location: LCCOMB_X85_Y49_N0
\u_alu|u_shift_add_multi|sum_src1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~0_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(27) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src1\(27),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~0_combout\);

-- Location: FF_X85_Y49_N1
\u_alu|u_shift_add_multi|sum_src1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(28));

-- Location: LCCOMB_X85_Y49_N26
\u_alu|u_shift_add_multi|sum_src1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~29_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(28) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src1\(28),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~29_combout\);

-- Location: FF_X85_Y49_N27
\u_alu|u_shift_add_multi|sum_src1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~29_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(29));

-- Location: LCCOMB_X86_Y50_N0
\u_alu|u_shift_add_multi|calc_res[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[0]~32_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(0) & (\u_alu|u_shift_add_multi|calc_res\(0) $ (VCC))) # (!\u_alu|u_shift_add_multi|sum_src1\(0) & (\u_alu|u_shift_add_multi|calc_res\(0) & VCC))
-- \u_alu|u_shift_add_multi|calc_res[0]~33\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(0) & \u_alu|u_shift_add_multi|calc_res\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(0),
	datab => \u_alu|u_shift_add_multi|calc_res\(0),
	datad => VCC,
	combout => \u_alu|u_shift_add_multi|calc_res[0]~32_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[0]~33\);

-- Location: LCCOMB_X83_Y54_N14
\u_alu|u_shift_add_multi|sum_src2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~15_combout\ = (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & \u_decoder|src2\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datad => \u_decoder|src2\(15),
	combout => \u_alu|u_shift_add_multi|sum_src2~15_combout\);

-- Location: FF_X83_Y54_N15
\u_alu|u_shift_add_multi|sum_src2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~15_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(15));

-- Location: LCCOMB_X83_Y54_N20
\u_alu|u_shift_add_multi|sum_src2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~14_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src2\(15))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src2\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src2\(15),
	datac => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datad => \u_decoder|src2\(14),
	combout => \u_alu|u_shift_add_multi|sum_src2~14_combout\);

-- Location: FF_X83_Y54_N21
\u_alu|u_shift_add_multi|sum_src2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(14));

-- Location: LCCOMB_X83_Y54_N10
\u_alu|u_shift_add_multi|sum_src2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~13_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src2\(14)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(13),
	datab => \u_alu|u_shift_add_multi|sum_src2\(14),
	datac => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src2~13_combout\);

-- Location: FF_X83_Y54_N11
\u_alu|u_shift_add_multi|sum_src2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~13_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(13));

-- Location: LCCOMB_X83_Y54_N16
\u_alu|u_shift_add_multi|sum_src2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~12_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src2\(13))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src2\(13),
	datab => \u_decoder|src2\(12),
	datac => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src2~12_combout\);

-- Location: FF_X83_Y54_N17
\u_alu|u_shift_add_multi|sum_src2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(12));

-- Location: LCCOMB_X83_Y54_N30
\u_alu|u_shift_add_multi|sum_src2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~11_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src2\(12))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src2\(12),
	datac => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datad => \u_decoder|src2\(11),
	combout => \u_alu|u_shift_add_multi|sum_src2~11_combout\);

-- Location: FF_X83_Y54_N31
\u_alu|u_shift_add_multi|sum_src2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~11_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(11));

-- Location: LCCOMB_X83_Y54_N12
\u_alu|u_shift_add_multi|sum_src2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~10_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src2\(11)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(10),
	datab => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datac => \u_alu|u_shift_add_multi|sum_src2\(11),
	combout => \u_alu|u_shift_add_multi|sum_src2~10_combout\);

-- Location: FF_X83_Y54_N13
\u_alu|u_shift_add_multi|sum_src2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(10));

-- Location: LCCOMB_X83_Y54_N2
\u_alu|u_shift_add_multi|sum_src2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~9_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src2\(10))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src2\(10),
	datab => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datac => \u_decoder|src2\(9),
	combout => \u_alu|u_shift_add_multi|sum_src2~9_combout\);

-- Location: FF_X83_Y54_N3
\u_alu|u_shift_add_multi|sum_src2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~9_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(9));

-- Location: LCCOMB_X83_Y54_N24
\u_alu|u_shift_add_multi|sum_src2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~8_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src2\(9))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src2\(9),
	datac => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datad => \u_decoder|src2\(8),
	combout => \u_alu|u_shift_add_multi|sum_src2~8_combout\);

-- Location: FF_X83_Y54_N25
\u_alu|u_shift_add_multi|sum_src2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(8));

-- Location: LCCOMB_X83_Y54_N22
\u_alu|u_shift_add_multi|sum_src2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~7_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src2\(8)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(7),
	datab => \u_alu|u_shift_add_multi|sum_src2\(8),
	datac => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src2~7_combout\);

-- Location: FF_X83_Y54_N23
\u_alu|u_shift_add_multi|sum_src2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(7));

-- Location: LCCOMB_X83_Y54_N28
\u_alu|u_shift_add_multi|sum_src2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~6_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src2\(7)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(6),
	datab => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datac => \u_alu|u_shift_add_multi|sum_src2\(7),
	combout => \u_alu|u_shift_add_multi|sum_src2~6_combout\);

-- Location: FF_X83_Y54_N29
\u_alu|u_shift_add_multi|sum_src2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(6));

-- Location: LCCOMB_X83_Y54_N18
\u_alu|u_shift_add_multi|sum_src2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~5_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src2\(6))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src2\(6),
	datac => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datad => \u_decoder|src2\(5),
	combout => \u_alu|u_shift_add_multi|sum_src2~5_combout\);

-- Location: FF_X83_Y54_N19
\u_alu|u_shift_add_multi|sum_src2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(5));

-- Location: LCCOMB_X83_Y54_N8
\u_alu|u_shift_add_multi|sum_src2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~4_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src2\(5))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|sum_src2\(5),
	datac => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datad => \u_decoder|src2\(4),
	combout => \u_alu|u_shift_add_multi|sum_src2~4_combout\);

-- Location: FF_X83_Y54_N9
\u_alu|u_shift_add_multi|sum_src2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(4));

-- Location: LCCOMB_X83_Y54_N6
\u_alu|u_shift_add_multi|sum_src2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~3_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src2\(4)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(3),
	datab => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datac => \u_alu|u_shift_add_multi|sum_src2\(4),
	combout => \u_alu|u_shift_add_multi|sum_src2~3_combout\);

-- Location: FF_X83_Y54_N7
\u_alu|u_shift_add_multi|sum_src2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(3));

-- Location: LCCOMB_X83_Y54_N4
\u_alu|u_shift_add_multi|sum_src2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~2_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src2\(3))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src2\(3),
	datab => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datac => \u_decoder|src2\(2),
	combout => \u_alu|u_shift_add_multi|sum_src2~2_combout\);

-- Location: FF_X83_Y54_N5
\u_alu|u_shift_add_multi|sum_src2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(2));

-- Location: LCCOMB_X83_Y54_N26
\u_alu|u_shift_add_multi|sum_src2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~1_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_alu|u_shift_add_multi|sum_src2\(2)))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_decoder|src2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(1),
	datab => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datac => \u_alu|u_shift_add_multi|sum_src2\(2),
	combout => \u_alu|u_shift_add_multi|sum_src2~1_combout\);

-- Location: FF_X83_Y54_N27
\u_alu|u_shift_add_multi|sum_src2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(1));

-- Location: LCCOMB_X83_Y54_N0
\u_alu|u_shift_add_multi|sum_src2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src2~0_combout\ = (\u_alu|u_shift_add_multi|c_state.IDLE~q\ & (\u_alu|u_shift_add_multi|sum_src2\(1))) # (!\u_alu|u_shift_add_multi|c_state.IDLE~q\ & ((\u_decoder|src2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	datac => \u_alu|u_shift_add_multi|sum_src2\(1),
	datad => \u_decoder|src2\(0),
	combout => \u_alu|u_shift_add_multi|sum_src2~0_combout\);

-- Location: FF_X83_Y54_N1
\u_alu|u_shift_add_multi|sum_src2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src2~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src2\(0));

-- Location: LCCOMB_X87_Y50_N10
\u_alu|u_shift_add_multi|always4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|always4~0_combout\ = (\u_alu|u_shift_add_multi|sum_src2\(0) & \u_alu|u_shift_add_multi|c_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src2\(0),
	datac => \u_alu|u_shift_add_multi|c_state.DATA~q\,
	combout => \u_alu|u_shift_add_multi|always4~0_combout\);

-- Location: FF_X86_Y50_N1
\u_alu|u_shift_add_multi|calc_res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[0]~32_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(0));

-- Location: LCCOMB_X86_Y50_N2
\u_alu|u_shift_add_multi|calc_res[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[1]~34_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(1) & ((\u_alu|u_shift_add_multi|calc_res\(1) & (\u_alu|u_shift_add_multi|calc_res[0]~33\ & VCC)) # (!\u_alu|u_shift_add_multi|calc_res\(1) & 
-- (!\u_alu|u_shift_add_multi|calc_res[0]~33\)))) # (!\u_alu|u_shift_add_multi|sum_src1\(1) & ((\u_alu|u_shift_add_multi|calc_res\(1) & (!\u_alu|u_shift_add_multi|calc_res[0]~33\)) # (!\u_alu|u_shift_add_multi|calc_res\(1) & 
-- ((\u_alu|u_shift_add_multi|calc_res[0]~33\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[1]~35\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(1) & (!\u_alu|u_shift_add_multi|calc_res\(1) & !\u_alu|u_shift_add_multi|calc_res[0]~33\)) # (!\u_alu|u_shift_add_multi|sum_src1\(1) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[0]~33\) # (!\u_alu|u_shift_add_multi|calc_res\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(1),
	datab => \u_alu|u_shift_add_multi|calc_res\(1),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[0]~33\,
	combout => \u_alu|u_shift_add_multi|calc_res[1]~34_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[1]~35\);

-- Location: FF_X86_Y50_N3
\u_alu|u_shift_add_multi|calc_res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[1]~34_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(1));

-- Location: LCCOMB_X86_Y50_N4
\u_alu|u_shift_add_multi|calc_res[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[2]~36_combout\ = ((\u_alu|u_shift_add_multi|calc_res\(2) $ (\u_alu|u_shift_add_multi|sum_src1\(2) $ (!\u_alu|u_shift_add_multi|calc_res[1]~35\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[2]~37\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(2) & ((\u_alu|u_shift_add_multi|sum_src1\(2)) # (!\u_alu|u_shift_add_multi|calc_res[1]~35\))) # (!\u_alu|u_shift_add_multi|calc_res\(2) & 
-- (\u_alu|u_shift_add_multi|sum_src1\(2) & !\u_alu|u_shift_add_multi|calc_res[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(2),
	datab => \u_alu|u_shift_add_multi|sum_src1\(2),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[1]~35\,
	combout => \u_alu|u_shift_add_multi|calc_res[2]~36_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[2]~37\);

-- Location: FF_X86_Y50_N5
\u_alu|u_shift_add_multi|calc_res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[2]~36_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(2));

-- Location: LCCOMB_X86_Y50_N6
\u_alu|u_shift_add_multi|calc_res[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[3]~38_combout\ = (\u_alu|u_shift_add_multi|calc_res\(3) & ((\u_alu|u_shift_add_multi|sum_src1\(3) & (\u_alu|u_shift_add_multi|calc_res[2]~37\ & VCC)) # (!\u_alu|u_shift_add_multi|sum_src1\(3) & 
-- (!\u_alu|u_shift_add_multi|calc_res[2]~37\)))) # (!\u_alu|u_shift_add_multi|calc_res\(3) & ((\u_alu|u_shift_add_multi|sum_src1\(3) & (!\u_alu|u_shift_add_multi|calc_res[2]~37\)) # (!\u_alu|u_shift_add_multi|sum_src1\(3) & 
-- ((\u_alu|u_shift_add_multi|calc_res[2]~37\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[3]~39\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(3) & (!\u_alu|u_shift_add_multi|sum_src1\(3) & !\u_alu|u_shift_add_multi|calc_res[2]~37\)) # (!\u_alu|u_shift_add_multi|calc_res\(3) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[2]~37\) # (!\u_alu|u_shift_add_multi|sum_src1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(3),
	datab => \u_alu|u_shift_add_multi|sum_src1\(3),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[2]~37\,
	combout => \u_alu|u_shift_add_multi|calc_res[3]~38_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[3]~39\);

-- Location: FF_X86_Y50_N7
\u_alu|u_shift_add_multi|calc_res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[3]~38_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(3));

-- Location: LCCOMB_X86_Y50_N8
\u_alu|u_shift_add_multi|calc_res[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[4]~40_combout\ = ((\u_alu|u_shift_add_multi|sum_src1\(4) $ (\u_alu|u_shift_add_multi|calc_res\(4) $ (!\u_alu|u_shift_add_multi|calc_res[3]~39\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[4]~41\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(4) & ((\u_alu|u_shift_add_multi|calc_res\(4)) # (!\u_alu|u_shift_add_multi|calc_res[3]~39\))) # (!\u_alu|u_shift_add_multi|sum_src1\(4) & 
-- (\u_alu|u_shift_add_multi|calc_res\(4) & !\u_alu|u_shift_add_multi|calc_res[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(4),
	datab => \u_alu|u_shift_add_multi|calc_res\(4),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[3]~39\,
	combout => \u_alu|u_shift_add_multi|calc_res[4]~40_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[4]~41\);

-- Location: FF_X86_Y50_N9
\u_alu|u_shift_add_multi|calc_res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[4]~40_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(4));

-- Location: LCCOMB_X86_Y50_N10
\u_alu|u_shift_add_multi|calc_res[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[5]~42_combout\ = (\u_alu|u_shift_add_multi|calc_res\(5) & ((\u_alu|u_shift_add_multi|sum_src1\(5) & (\u_alu|u_shift_add_multi|calc_res[4]~41\ & VCC)) # (!\u_alu|u_shift_add_multi|sum_src1\(5) & 
-- (!\u_alu|u_shift_add_multi|calc_res[4]~41\)))) # (!\u_alu|u_shift_add_multi|calc_res\(5) & ((\u_alu|u_shift_add_multi|sum_src1\(5) & (!\u_alu|u_shift_add_multi|calc_res[4]~41\)) # (!\u_alu|u_shift_add_multi|sum_src1\(5) & 
-- ((\u_alu|u_shift_add_multi|calc_res[4]~41\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[5]~43\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(5) & (!\u_alu|u_shift_add_multi|sum_src1\(5) & !\u_alu|u_shift_add_multi|calc_res[4]~41\)) # (!\u_alu|u_shift_add_multi|calc_res\(5) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[4]~41\) # (!\u_alu|u_shift_add_multi|sum_src1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(5),
	datab => \u_alu|u_shift_add_multi|sum_src1\(5),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[4]~41\,
	combout => \u_alu|u_shift_add_multi|calc_res[5]~42_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[5]~43\);

-- Location: FF_X86_Y50_N11
\u_alu|u_shift_add_multi|calc_res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[5]~42_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(5));

-- Location: LCCOMB_X86_Y50_N12
\u_alu|u_shift_add_multi|calc_res[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[6]~44_combout\ = ((\u_alu|u_shift_add_multi|calc_res\(6) $ (\u_alu|u_shift_add_multi|sum_src1\(6) $ (!\u_alu|u_shift_add_multi|calc_res[5]~43\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[6]~45\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(6) & ((\u_alu|u_shift_add_multi|sum_src1\(6)) # (!\u_alu|u_shift_add_multi|calc_res[5]~43\))) # (!\u_alu|u_shift_add_multi|calc_res\(6) & 
-- (\u_alu|u_shift_add_multi|sum_src1\(6) & !\u_alu|u_shift_add_multi|calc_res[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(6),
	datab => \u_alu|u_shift_add_multi|sum_src1\(6),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[5]~43\,
	combout => \u_alu|u_shift_add_multi|calc_res[6]~44_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[6]~45\);

-- Location: FF_X86_Y50_N13
\u_alu|u_shift_add_multi|calc_res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[6]~44_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(6));

-- Location: LCCOMB_X86_Y50_N14
\u_alu|u_shift_add_multi|calc_res[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[7]~46_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(7) & ((\u_alu|u_shift_add_multi|calc_res\(7) & (\u_alu|u_shift_add_multi|calc_res[6]~45\ & VCC)) # (!\u_alu|u_shift_add_multi|calc_res\(7) & 
-- (!\u_alu|u_shift_add_multi|calc_res[6]~45\)))) # (!\u_alu|u_shift_add_multi|sum_src1\(7) & ((\u_alu|u_shift_add_multi|calc_res\(7) & (!\u_alu|u_shift_add_multi|calc_res[6]~45\)) # (!\u_alu|u_shift_add_multi|calc_res\(7) & 
-- ((\u_alu|u_shift_add_multi|calc_res[6]~45\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[7]~47\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(7) & (!\u_alu|u_shift_add_multi|calc_res\(7) & !\u_alu|u_shift_add_multi|calc_res[6]~45\)) # (!\u_alu|u_shift_add_multi|sum_src1\(7) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[6]~45\) # (!\u_alu|u_shift_add_multi|calc_res\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(7),
	datab => \u_alu|u_shift_add_multi|calc_res\(7),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[6]~45\,
	combout => \u_alu|u_shift_add_multi|calc_res[7]~46_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[7]~47\);

-- Location: FF_X86_Y50_N15
\u_alu|u_shift_add_multi|calc_res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[7]~46_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(7));

-- Location: LCCOMB_X86_Y50_N16
\u_alu|u_shift_add_multi|calc_res[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[8]~48_combout\ = ((\u_alu|u_shift_add_multi|sum_src1\(8) $ (\u_alu|u_shift_add_multi|calc_res\(8) $ (!\u_alu|u_shift_add_multi|calc_res[7]~47\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[8]~49\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(8) & ((\u_alu|u_shift_add_multi|calc_res\(8)) # (!\u_alu|u_shift_add_multi|calc_res[7]~47\))) # (!\u_alu|u_shift_add_multi|sum_src1\(8) & 
-- (\u_alu|u_shift_add_multi|calc_res\(8) & !\u_alu|u_shift_add_multi|calc_res[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(8),
	datab => \u_alu|u_shift_add_multi|calc_res\(8),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[7]~47\,
	combout => \u_alu|u_shift_add_multi|calc_res[8]~48_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[8]~49\);

-- Location: FF_X86_Y50_N17
\u_alu|u_shift_add_multi|calc_res[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[8]~48_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(8));

-- Location: LCCOMB_X86_Y50_N18
\u_alu|u_shift_add_multi|calc_res[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[9]~50_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(9) & ((\u_alu|u_shift_add_multi|calc_res\(9) & (\u_alu|u_shift_add_multi|calc_res[8]~49\ & VCC)) # (!\u_alu|u_shift_add_multi|calc_res\(9) & 
-- (!\u_alu|u_shift_add_multi|calc_res[8]~49\)))) # (!\u_alu|u_shift_add_multi|sum_src1\(9) & ((\u_alu|u_shift_add_multi|calc_res\(9) & (!\u_alu|u_shift_add_multi|calc_res[8]~49\)) # (!\u_alu|u_shift_add_multi|calc_res\(9) & 
-- ((\u_alu|u_shift_add_multi|calc_res[8]~49\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[9]~51\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(9) & (!\u_alu|u_shift_add_multi|calc_res\(9) & !\u_alu|u_shift_add_multi|calc_res[8]~49\)) # (!\u_alu|u_shift_add_multi|sum_src1\(9) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[8]~49\) # (!\u_alu|u_shift_add_multi|calc_res\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(9),
	datab => \u_alu|u_shift_add_multi|calc_res\(9),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[8]~49\,
	combout => \u_alu|u_shift_add_multi|calc_res[9]~50_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[9]~51\);

-- Location: FF_X86_Y50_N19
\u_alu|u_shift_add_multi|calc_res[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[9]~50_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(9));

-- Location: LCCOMB_X86_Y50_N20
\u_alu|u_shift_add_multi|calc_res[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[10]~52_combout\ = ((\u_alu|u_shift_add_multi|sum_src1\(10) $ (\u_alu|u_shift_add_multi|calc_res\(10) $ (!\u_alu|u_shift_add_multi|calc_res[9]~51\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[10]~53\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(10) & ((\u_alu|u_shift_add_multi|calc_res\(10)) # (!\u_alu|u_shift_add_multi|calc_res[9]~51\))) # (!\u_alu|u_shift_add_multi|sum_src1\(10) & 
-- (\u_alu|u_shift_add_multi|calc_res\(10) & !\u_alu|u_shift_add_multi|calc_res[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(10),
	datab => \u_alu|u_shift_add_multi|calc_res\(10),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[9]~51\,
	combout => \u_alu|u_shift_add_multi|calc_res[10]~52_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[10]~53\);

-- Location: FF_X86_Y50_N21
\u_alu|u_shift_add_multi|calc_res[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[10]~52_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(10));

-- Location: LCCOMB_X86_Y50_N22
\u_alu|u_shift_add_multi|calc_res[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[11]~54_combout\ = (\u_alu|u_shift_add_multi|calc_res\(11) & ((\u_alu|u_shift_add_multi|sum_src1\(11) & (\u_alu|u_shift_add_multi|calc_res[10]~53\ & VCC)) # (!\u_alu|u_shift_add_multi|sum_src1\(11) & 
-- (!\u_alu|u_shift_add_multi|calc_res[10]~53\)))) # (!\u_alu|u_shift_add_multi|calc_res\(11) & ((\u_alu|u_shift_add_multi|sum_src1\(11) & (!\u_alu|u_shift_add_multi|calc_res[10]~53\)) # (!\u_alu|u_shift_add_multi|sum_src1\(11) & 
-- ((\u_alu|u_shift_add_multi|calc_res[10]~53\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[11]~55\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(11) & (!\u_alu|u_shift_add_multi|sum_src1\(11) & !\u_alu|u_shift_add_multi|calc_res[10]~53\)) # (!\u_alu|u_shift_add_multi|calc_res\(11) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[10]~53\) # (!\u_alu|u_shift_add_multi|sum_src1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(11),
	datab => \u_alu|u_shift_add_multi|sum_src1\(11),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[10]~53\,
	combout => \u_alu|u_shift_add_multi|calc_res[11]~54_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[11]~55\);

-- Location: FF_X86_Y50_N23
\u_alu|u_shift_add_multi|calc_res[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[11]~54_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(11));

-- Location: LCCOMB_X86_Y50_N24
\u_alu|u_shift_add_multi|calc_res[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[12]~56_combout\ = ((\u_alu|u_shift_add_multi|sum_src1\(12) $ (\u_alu|u_shift_add_multi|calc_res\(12) $ (!\u_alu|u_shift_add_multi|calc_res[11]~55\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[12]~57\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(12) & ((\u_alu|u_shift_add_multi|calc_res\(12)) # (!\u_alu|u_shift_add_multi|calc_res[11]~55\))) # (!\u_alu|u_shift_add_multi|sum_src1\(12) & 
-- (\u_alu|u_shift_add_multi|calc_res\(12) & !\u_alu|u_shift_add_multi|calc_res[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(12),
	datab => \u_alu|u_shift_add_multi|calc_res\(12),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[11]~55\,
	combout => \u_alu|u_shift_add_multi|calc_res[12]~56_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[12]~57\);

-- Location: FF_X86_Y50_N25
\u_alu|u_shift_add_multi|calc_res[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[12]~56_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(12));

-- Location: LCCOMB_X86_Y50_N26
\u_alu|u_shift_add_multi|calc_res[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[13]~58_combout\ = (\u_alu|u_shift_add_multi|calc_res\(13) & ((\u_alu|u_shift_add_multi|sum_src1\(13) & (\u_alu|u_shift_add_multi|calc_res[12]~57\ & VCC)) # (!\u_alu|u_shift_add_multi|sum_src1\(13) & 
-- (!\u_alu|u_shift_add_multi|calc_res[12]~57\)))) # (!\u_alu|u_shift_add_multi|calc_res\(13) & ((\u_alu|u_shift_add_multi|sum_src1\(13) & (!\u_alu|u_shift_add_multi|calc_res[12]~57\)) # (!\u_alu|u_shift_add_multi|sum_src1\(13) & 
-- ((\u_alu|u_shift_add_multi|calc_res[12]~57\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[13]~59\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(13) & (!\u_alu|u_shift_add_multi|sum_src1\(13) & !\u_alu|u_shift_add_multi|calc_res[12]~57\)) # (!\u_alu|u_shift_add_multi|calc_res\(13) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[12]~57\) # (!\u_alu|u_shift_add_multi|sum_src1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(13),
	datab => \u_alu|u_shift_add_multi|sum_src1\(13),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[12]~57\,
	combout => \u_alu|u_shift_add_multi|calc_res[13]~58_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[13]~59\);

-- Location: FF_X86_Y50_N27
\u_alu|u_shift_add_multi|calc_res[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[13]~58_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(13));

-- Location: LCCOMB_X86_Y50_N28
\u_alu|u_shift_add_multi|calc_res[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[14]~60_combout\ = ((\u_alu|u_shift_add_multi|sum_src1\(14) $ (\u_alu|u_shift_add_multi|calc_res\(14) $ (!\u_alu|u_shift_add_multi|calc_res[13]~59\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[14]~61\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(14) & ((\u_alu|u_shift_add_multi|calc_res\(14)) # (!\u_alu|u_shift_add_multi|calc_res[13]~59\))) # (!\u_alu|u_shift_add_multi|sum_src1\(14) & 
-- (\u_alu|u_shift_add_multi|calc_res\(14) & !\u_alu|u_shift_add_multi|calc_res[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(14),
	datab => \u_alu|u_shift_add_multi|calc_res\(14),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[13]~59\,
	combout => \u_alu|u_shift_add_multi|calc_res[14]~60_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[14]~61\);

-- Location: FF_X86_Y50_N29
\u_alu|u_shift_add_multi|calc_res[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[14]~60_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(14));

-- Location: LCCOMB_X86_Y50_N30
\u_alu|u_shift_add_multi|calc_res[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[15]~62_combout\ = (\u_alu|u_shift_add_multi|calc_res\(15) & ((\u_alu|u_shift_add_multi|sum_src1\(15) & (\u_alu|u_shift_add_multi|calc_res[14]~61\ & VCC)) # (!\u_alu|u_shift_add_multi|sum_src1\(15) & 
-- (!\u_alu|u_shift_add_multi|calc_res[14]~61\)))) # (!\u_alu|u_shift_add_multi|calc_res\(15) & ((\u_alu|u_shift_add_multi|sum_src1\(15) & (!\u_alu|u_shift_add_multi|calc_res[14]~61\)) # (!\u_alu|u_shift_add_multi|sum_src1\(15) & 
-- ((\u_alu|u_shift_add_multi|calc_res[14]~61\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[15]~63\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(15) & (!\u_alu|u_shift_add_multi|sum_src1\(15) & !\u_alu|u_shift_add_multi|calc_res[14]~61\)) # (!\u_alu|u_shift_add_multi|calc_res\(15) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[14]~61\) # (!\u_alu|u_shift_add_multi|sum_src1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(15),
	datab => \u_alu|u_shift_add_multi|sum_src1\(15),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[14]~61\,
	combout => \u_alu|u_shift_add_multi|calc_res[15]~62_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[15]~63\);

-- Location: FF_X86_Y50_N31
\u_alu|u_shift_add_multi|calc_res[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[15]~62_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(15));

-- Location: LCCOMB_X86_Y49_N0
\u_alu|u_shift_add_multi|calc_res[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[16]~64_combout\ = ((\u_alu|u_shift_add_multi|sum_src1\(16) $ (\u_alu|u_shift_add_multi|calc_res\(16) $ (!\u_alu|u_shift_add_multi|calc_res[15]~63\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[16]~65\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(16) & ((\u_alu|u_shift_add_multi|calc_res\(16)) # (!\u_alu|u_shift_add_multi|calc_res[15]~63\))) # (!\u_alu|u_shift_add_multi|sum_src1\(16) & 
-- (\u_alu|u_shift_add_multi|calc_res\(16) & !\u_alu|u_shift_add_multi|calc_res[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(16),
	datab => \u_alu|u_shift_add_multi|calc_res\(16),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[15]~63\,
	combout => \u_alu|u_shift_add_multi|calc_res[16]~64_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[16]~65\);

-- Location: FF_X86_Y49_N1
\u_alu|u_shift_add_multi|calc_res[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[16]~64_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(16));

-- Location: LCCOMB_X86_Y49_N2
\u_alu|u_shift_add_multi|calc_res[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[17]~66_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(17) & ((\u_alu|u_shift_add_multi|calc_res\(17) & (\u_alu|u_shift_add_multi|calc_res[16]~65\ & VCC)) # (!\u_alu|u_shift_add_multi|calc_res\(17) & 
-- (!\u_alu|u_shift_add_multi|calc_res[16]~65\)))) # (!\u_alu|u_shift_add_multi|sum_src1\(17) & ((\u_alu|u_shift_add_multi|calc_res\(17) & (!\u_alu|u_shift_add_multi|calc_res[16]~65\)) # (!\u_alu|u_shift_add_multi|calc_res\(17) & 
-- ((\u_alu|u_shift_add_multi|calc_res[16]~65\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[17]~67\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(17) & (!\u_alu|u_shift_add_multi|calc_res\(17) & !\u_alu|u_shift_add_multi|calc_res[16]~65\)) # (!\u_alu|u_shift_add_multi|sum_src1\(17) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[16]~65\) # (!\u_alu|u_shift_add_multi|calc_res\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(17),
	datab => \u_alu|u_shift_add_multi|calc_res\(17),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[16]~65\,
	combout => \u_alu|u_shift_add_multi|calc_res[17]~66_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[17]~67\);

-- Location: FF_X86_Y49_N3
\u_alu|u_shift_add_multi|calc_res[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[17]~66_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(17));

-- Location: LCCOMB_X86_Y49_N4
\u_alu|u_shift_add_multi|calc_res[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[18]~68_combout\ = ((\u_alu|u_shift_add_multi|sum_src1\(18) $ (\u_alu|u_shift_add_multi|calc_res\(18) $ (!\u_alu|u_shift_add_multi|calc_res[17]~67\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[18]~69\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(18) & ((\u_alu|u_shift_add_multi|calc_res\(18)) # (!\u_alu|u_shift_add_multi|calc_res[17]~67\))) # (!\u_alu|u_shift_add_multi|sum_src1\(18) & 
-- (\u_alu|u_shift_add_multi|calc_res\(18) & !\u_alu|u_shift_add_multi|calc_res[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(18),
	datab => \u_alu|u_shift_add_multi|calc_res\(18),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[17]~67\,
	combout => \u_alu|u_shift_add_multi|calc_res[18]~68_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[18]~69\);

-- Location: FF_X86_Y49_N5
\u_alu|u_shift_add_multi|calc_res[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[18]~68_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(18));

-- Location: LCCOMB_X86_Y49_N6
\u_alu|u_shift_add_multi|calc_res[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[19]~70_combout\ = (\u_alu|u_shift_add_multi|calc_res\(19) & ((\u_alu|u_shift_add_multi|sum_src1\(19) & (\u_alu|u_shift_add_multi|calc_res[18]~69\ & VCC)) # (!\u_alu|u_shift_add_multi|sum_src1\(19) & 
-- (!\u_alu|u_shift_add_multi|calc_res[18]~69\)))) # (!\u_alu|u_shift_add_multi|calc_res\(19) & ((\u_alu|u_shift_add_multi|sum_src1\(19) & (!\u_alu|u_shift_add_multi|calc_res[18]~69\)) # (!\u_alu|u_shift_add_multi|sum_src1\(19) & 
-- ((\u_alu|u_shift_add_multi|calc_res[18]~69\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[19]~71\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(19) & (!\u_alu|u_shift_add_multi|sum_src1\(19) & !\u_alu|u_shift_add_multi|calc_res[18]~69\)) # (!\u_alu|u_shift_add_multi|calc_res\(19) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[18]~69\) # (!\u_alu|u_shift_add_multi|sum_src1\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(19),
	datab => \u_alu|u_shift_add_multi|sum_src1\(19),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[18]~69\,
	combout => \u_alu|u_shift_add_multi|calc_res[19]~70_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[19]~71\);

-- Location: FF_X86_Y49_N7
\u_alu|u_shift_add_multi|calc_res[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[19]~70_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(19));

-- Location: LCCOMB_X86_Y49_N8
\u_alu|u_shift_add_multi|calc_res[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[20]~72_combout\ = ((\u_alu|u_shift_add_multi|sum_src1\(20) $ (\u_alu|u_shift_add_multi|calc_res\(20) $ (!\u_alu|u_shift_add_multi|calc_res[19]~71\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[20]~73\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(20) & ((\u_alu|u_shift_add_multi|calc_res\(20)) # (!\u_alu|u_shift_add_multi|calc_res[19]~71\))) # (!\u_alu|u_shift_add_multi|sum_src1\(20) & 
-- (\u_alu|u_shift_add_multi|calc_res\(20) & !\u_alu|u_shift_add_multi|calc_res[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(20),
	datab => \u_alu|u_shift_add_multi|calc_res\(20),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[19]~71\,
	combout => \u_alu|u_shift_add_multi|calc_res[20]~72_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[20]~73\);

-- Location: FF_X86_Y49_N9
\u_alu|u_shift_add_multi|calc_res[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[20]~72_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(20));

-- Location: LCCOMB_X86_Y49_N10
\u_alu|u_shift_add_multi|calc_res[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[21]~74_combout\ = (\u_alu|u_shift_add_multi|calc_res\(21) & ((\u_alu|u_shift_add_multi|sum_src1\(21) & (\u_alu|u_shift_add_multi|calc_res[20]~73\ & VCC)) # (!\u_alu|u_shift_add_multi|sum_src1\(21) & 
-- (!\u_alu|u_shift_add_multi|calc_res[20]~73\)))) # (!\u_alu|u_shift_add_multi|calc_res\(21) & ((\u_alu|u_shift_add_multi|sum_src1\(21) & (!\u_alu|u_shift_add_multi|calc_res[20]~73\)) # (!\u_alu|u_shift_add_multi|sum_src1\(21) & 
-- ((\u_alu|u_shift_add_multi|calc_res[20]~73\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[21]~75\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(21) & (!\u_alu|u_shift_add_multi|sum_src1\(21) & !\u_alu|u_shift_add_multi|calc_res[20]~73\)) # (!\u_alu|u_shift_add_multi|calc_res\(21) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[20]~73\) # (!\u_alu|u_shift_add_multi|sum_src1\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(21),
	datab => \u_alu|u_shift_add_multi|sum_src1\(21),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[20]~73\,
	combout => \u_alu|u_shift_add_multi|calc_res[21]~74_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[21]~75\);

-- Location: FF_X86_Y49_N11
\u_alu|u_shift_add_multi|calc_res[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[21]~74_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(21));

-- Location: LCCOMB_X86_Y49_N12
\u_alu|u_shift_add_multi|calc_res[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[22]~76_combout\ = ((\u_alu|u_shift_add_multi|calc_res\(22) $ (\u_alu|u_shift_add_multi|sum_src1\(22) $ (!\u_alu|u_shift_add_multi|calc_res[21]~75\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[22]~77\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(22) & ((\u_alu|u_shift_add_multi|sum_src1\(22)) # (!\u_alu|u_shift_add_multi|calc_res[21]~75\))) # (!\u_alu|u_shift_add_multi|calc_res\(22) & 
-- (\u_alu|u_shift_add_multi|sum_src1\(22) & !\u_alu|u_shift_add_multi|calc_res[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(22),
	datab => \u_alu|u_shift_add_multi|sum_src1\(22),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[21]~75\,
	combout => \u_alu|u_shift_add_multi|calc_res[22]~76_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[22]~77\);

-- Location: FF_X86_Y49_N13
\u_alu|u_shift_add_multi|calc_res[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[22]~76_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(22));

-- Location: LCCOMB_X86_Y49_N14
\u_alu|u_shift_add_multi|calc_res[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[23]~78_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(23) & ((\u_alu|u_shift_add_multi|calc_res\(23) & (\u_alu|u_shift_add_multi|calc_res[22]~77\ & VCC)) # (!\u_alu|u_shift_add_multi|calc_res\(23) & 
-- (!\u_alu|u_shift_add_multi|calc_res[22]~77\)))) # (!\u_alu|u_shift_add_multi|sum_src1\(23) & ((\u_alu|u_shift_add_multi|calc_res\(23) & (!\u_alu|u_shift_add_multi|calc_res[22]~77\)) # (!\u_alu|u_shift_add_multi|calc_res\(23) & 
-- ((\u_alu|u_shift_add_multi|calc_res[22]~77\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[23]~79\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(23) & (!\u_alu|u_shift_add_multi|calc_res\(23) & !\u_alu|u_shift_add_multi|calc_res[22]~77\)) # (!\u_alu|u_shift_add_multi|sum_src1\(23) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[22]~77\) # (!\u_alu|u_shift_add_multi|calc_res\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(23),
	datab => \u_alu|u_shift_add_multi|calc_res\(23),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[22]~77\,
	combout => \u_alu|u_shift_add_multi|calc_res[23]~78_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[23]~79\);

-- Location: FF_X86_Y49_N15
\u_alu|u_shift_add_multi|calc_res[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[23]~78_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(23));

-- Location: LCCOMB_X86_Y49_N16
\u_alu|u_shift_add_multi|calc_res[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[24]~80_combout\ = ((\u_alu|u_shift_add_multi|calc_res\(24) $ (\u_alu|u_shift_add_multi|sum_src1\(24) $ (!\u_alu|u_shift_add_multi|calc_res[23]~79\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[24]~81\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(24) & ((\u_alu|u_shift_add_multi|sum_src1\(24)) # (!\u_alu|u_shift_add_multi|calc_res[23]~79\))) # (!\u_alu|u_shift_add_multi|calc_res\(24) & 
-- (\u_alu|u_shift_add_multi|sum_src1\(24) & !\u_alu|u_shift_add_multi|calc_res[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(24),
	datab => \u_alu|u_shift_add_multi|sum_src1\(24),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[23]~79\,
	combout => \u_alu|u_shift_add_multi|calc_res[24]~80_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[24]~81\);

-- Location: FF_X86_Y49_N17
\u_alu|u_shift_add_multi|calc_res[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[24]~80_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(24));

-- Location: LCCOMB_X86_Y49_N18
\u_alu|u_shift_add_multi|calc_res[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[25]~82_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(25) & ((\u_alu|u_shift_add_multi|calc_res\(25) & (\u_alu|u_shift_add_multi|calc_res[24]~81\ & VCC)) # (!\u_alu|u_shift_add_multi|calc_res\(25) & 
-- (!\u_alu|u_shift_add_multi|calc_res[24]~81\)))) # (!\u_alu|u_shift_add_multi|sum_src1\(25) & ((\u_alu|u_shift_add_multi|calc_res\(25) & (!\u_alu|u_shift_add_multi|calc_res[24]~81\)) # (!\u_alu|u_shift_add_multi|calc_res\(25) & 
-- ((\u_alu|u_shift_add_multi|calc_res[24]~81\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[25]~83\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(25) & (!\u_alu|u_shift_add_multi|calc_res\(25) & !\u_alu|u_shift_add_multi|calc_res[24]~81\)) # (!\u_alu|u_shift_add_multi|sum_src1\(25) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[24]~81\) # (!\u_alu|u_shift_add_multi|calc_res\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(25),
	datab => \u_alu|u_shift_add_multi|calc_res\(25),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[24]~81\,
	combout => \u_alu|u_shift_add_multi|calc_res[25]~82_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[25]~83\);

-- Location: FF_X86_Y49_N19
\u_alu|u_shift_add_multi|calc_res[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[25]~82_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(25));

-- Location: LCCOMB_X86_Y49_N20
\u_alu|u_shift_add_multi|calc_res[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[26]~84_combout\ = ((\u_alu|u_shift_add_multi|calc_res\(26) $ (\u_alu|u_shift_add_multi|sum_src1\(26) $ (!\u_alu|u_shift_add_multi|calc_res[25]~83\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[26]~85\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(26) & ((\u_alu|u_shift_add_multi|sum_src1\(26)) # (!\u_alu|u_shift_add_multi|calc_res[25]~83\))) # (!\u_alu|u_shift_add_multi|calc_res\(26) & 
-- (\u_alu|u_shift_add_multi|sum_src1\(26) & !\u_alu|u_shift_add_multi|calc_res[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(26),
	datab => \u_alu|u_shift_add_multi|sum_src1\(26),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[25]~83\,
	combout => \u_alu|u_shift_add_multi|calc_res[26]~84_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[26]~85\);

-- Location: FF_X86_Y49_N21
\u_alu|u_shift_add_multi|calc_res[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[26]~84_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(26));

-- Location: LCCOMB_X86_Y49_N22
\u_alu|u_shift_add_multi|calc_res[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[27]~86_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(27) & ((\u_alu|u_shift_add_multi|calc_res\(27) & (\u_alu|u_shift_add_multi|calc_res[26]~85\ & VCC)) # (!\u_alu|u_shift_add_multi|calc_res\(27) & 
-- (!\u_alu|u_shift_add_multi|calc_res[26]~85\)))) # (!\u_alu|u_shift_add_multi|sum_src1\(27) & ((\u_alu|u_shift_add_multi|calc_res\(27) & (!\u_alu|u_shift_add_multi|calc_res[26]~85\)) # (!\u_alu|u_shift_add_multi|calc_res\(27) & 
-- ((\u_alu|u_shift_add_multi|calc_res[26]~85\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[27]~87\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(27) & (!\u_alu|u_shift_add_multi|calc_res\(27) & !\u_alu|u_shift_add_multi|calc_res[26]~85\)) # (!\u_alu|u_shift_add_multi|sum_src1\(27) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[26]~85\) # (!\u_alu|u_shift_add_multi|calc_res\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(27),
	datab => \u_alu|u_shift_add_multi|calc_res\(27),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[26]~85\,
	combout => \u_alu|u_shift_add_multi|calc_res[27]~86_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[27]~87\);

-- Location: FF_X86_Y49_N23
\u_alu|u_shift_add_multi|calc_res[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[27]~86_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(27));

-- Location: LCCOMB_X86_Y49_N24
\u_alu|u_shift_add_multi|calc_res[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[28]~88_combout\ = ((\u_alu|u_shift_add_multi|sum_src1\(28) $ (\u_alu|u_shift_add_multi|calc_res\(28) $ (!\u_alu|u_shift_add_multi|calc_res[27]~87\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[28]~89\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(28) & ((\u_alu|u_shift_add_multi|calc_res\(28)) # (!\u_alu|u_shift_add_multi|calc_res[27]~87\))) # (!\u_alu|u_shift_add_multi|sum_src1\(28) & 
-- (\u_alu|u_shift_add_multi|calc_res\(28) & !\u_alu|u_shift_add_multi|calc_res[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(28),
	datab => \u_alu|u_shift_add_multi|calc_res\(28),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[27]~87\,
	combout => \u_alu|u_shift_add_multi|calc_res[28]~88_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[28]~89\);

-- Location: FF_X86_Y49_N25
\u_alu|u_shift_add_multi|calc_res[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[28]~88_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(28));

-- Location: LCCOMB_X86_Y49_N26
\u_alu|u_shift_add_multi|calc_res[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[29]~90_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(29) & ((\u_alu|u_shift_add_multi|calc_res\(29) & (\u_alu|u_shift_add_multi|calc_res[28]~89\ & VCC)) # (!\u_alu|u_shift_add_multi|calc_res\(29) & 
-- (!\u_alu|u_shift_add_multi|calc_res[28]~89\)))) # (!\u_alu|u_shift_add_multi|sum_src1\(29) & ((\u_alu|u_shift_add_multi|calc_res\(29) & (!\u_alu|u_shift_add_multi|calc_res[28]~89\)) # (!\u_alu|u_shift_add_multi|calc_res\(29) & 
-- ((\u_alu|u_shift_add_multi|calc_res[28]~89\) # (GND)))))
-- \u_alu|u_shift_add_multi|calc_res[29]~91\ = CARRY((\u_alu|u_shift_add_multi|sum_src1\(29) & (!\u_alu|u_shift_add_multi|calc_res\(29) & !\u_alu|u_shift_add_multi|calc_res[28]~89\)) # (!\u_alu|u_shift_add_multi|sum_src1\(29) & 
-- ((!\u_alu|u_shift_add_multi|calc_res[28]~89\) # (!\u_alu|u_shift_add_multi|calc_res\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|sum_src1\(29),
	datab => \u_alu|u_shift_add_multi|calc_res\(29),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[28]~89\,
	combout => \u_alu|u_shift_add_multi|calc_res[29]~90_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[29]~91\);

-- Location: FF_X86_Y49_N27
\u_alu|u_shift_add_multi|calc_res[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[29]~90_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(29));

-- Location: LCCOMB_X88_Y51_N22
\u_encoder|calc_res_q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~10_combout\ = (\u_encoder|calc_res_q~9_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(29)) # (!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~9_combout\ & (\u_alu|u_divider|Q_product\(13) & 
-- ((\u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Q_product\(13),
	datab => \u_encoder|calc_res_q~9_combout\,
	datac => \u_alu|u_shift_add_multi|calc_res\(29),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~10_combout\);

-- Location: FF_X87_Y51_N5
\u_alu|u_booth|calc_res[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(21));

-- Location: LCCOMB_X87_Y51_N4
\u_encoder|calc_res_q~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~33_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(31))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_substraction|calc_res\(31),
	datac => \u_alu|u_booth|calc_res\(21),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~33_combout\);

-- Location: LCCOMB_X84_Y51_N2
\u_alu|u_divider|Q_product~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~9_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(5)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(5),
	datac => \u_alu|u_divider|sum_Q\(5),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~9_combout\);

-- Location: FF_X84_Y51_N3
\u_alu|u_divider|Q_product[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~9_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(5));

-- Location: LCCOMB_X87_Y51_N14
\u_encoder|calc_res_q~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~34_combout\ = (\u_encoder|calc_res_q~33_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(21)) # ((!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~33_combout\ & (((\u_encoder|calc_res_q[23]~1_combout\ & 
-- \u_alu|u_divider|Q_product\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(21),
	datab => \u_encoder|calc_res_q~33_combout\,
	datac => \u_encoder|calc_res_q[23]~1_combout\,
	datad => \u_alu|u_divider|Q_product\(5),
	combout => \u_encoder|calc_res_q~34_combout\);

-- Location: FF_X87_Y51_N13
\u_alu|u_booth|calc_res[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(17));

-- Location: LCCOMB_X87_Y51_N12
\u_encoder|calc_res_q~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~47_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(31))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_substraction|calc_res\(31),
	datac => \u_alu|u_booth|calc_res\(17),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~47_combout\);

-- Location: LCCOMB_X84_Y51_N24
\u_alu|u_divider|Q_product~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~13_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(1)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src1\(1),
	datac => \u_alu|u_divider|c_state.IDLE~q\,
	datad => \u_alu|u_divider|sum_Q\(1),
	combout => \u_alu|u_divider|Q_product~13_combout\);

-- Location: FF_X84_Y51_N25
\u_alu|u_divider|Q_product[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~13_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(1));

-- Location: LCCOMB_X87_Y51_N6
\u_encoder|calc_res_q~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~48_combout\ = (\u_encoder|calc_res_q~47_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(17)) # (!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~47_combout\ & (\u_alu|u_divider|Q_product\(1) & 
-- (\u_encoder|calc_res_q[23]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~47_combout\,
	datab => \u_alu|u_divider|Q_product\(1),
	datac => \u_encoder|calc_res_q[23]~1_combout\,
	datad => \u_alu|u_shift_add_multi|calc_res\(17),
	combout => \u_encoder|calc_res_q~48_combout\);

-- Location: LCCOMB_X89_Y52_N14
\u_alu|alu_done~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|alu_done~6_combout\ = (\u_alu|alu_done~0_combout\) # (((\u_alu|u_add|c_state.STOP~q\ & !\u_alu|alu_done~5_combout\)) # (!\u_alu|alu_done~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~0_combout\,
	datab => \u_alu|alu_done~2_combout\,
	datac => \u_alu|u_add|c_state.STOP~q\,
	datad => \u_alu|alu_done~5_combout\,
	combout => \u_alu|alu_done~6_combout\);

-- Location: LCCOMB_X89_Y52_N8
\u_alu|calc_res_q~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|calc_res_q~34_combout\ = (\u_decoder|operator_q\(2) & \u_decoder|dtype_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|operator_q\(2),
	datad => \u_decoder|dtype_q\(0),
	combout => \u_alu|calc_res_q~34_combout\);

-- Location: FF_X89_Y52_N9
\u_alu|calc_res_q.0100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|calc_res_q~34_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|calc_res_q~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|calc_res_q.0100~q\);

-- Location: LCCOMB_X89_Y55_N4
\u_encoder|calc_res_q[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q[16]~4_combout\ = (!\u_alu|calc_res_q.0001~q\ & !\u_alu|calc_res_q.0101~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|calc_res_q.0001~q\,
	datad => \u_alu|calc_res_q.0101~q\,
	combout => \u_encoder|calc_res_q[16]~4_combout\);

-- Location: LCCOMB_X85_Y52_N18
\u_encoder|calc_res_q~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~43_combout\ = (\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q[16]~4_combout\ & ((!\u_alu|calc_res_q.0100~q\) # (!\u_alu|alu_done~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~6_combout\,
	datab => \u_alu|calc_res_q.0100~q\,
	datac => \u_alu|alu_done~3_combout\,
	datad => \u_encoder|calc_res_q[16]~4_combout\,
	combout => \u_encoder|calc_res_q~43_combout\);

-- Location: FF_X84_Y52_N9
\u_alu|u_substraction|calc_res[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[13]~44_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(13));

-- Location: FF_X84_Y52_N23
\u_alu|u_booth|calc_res[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(13),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(13));

-- Location: LCCOMB_X84_Y52_N22
\u_encoder|calc_res_q~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~61_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(13))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(13),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(13),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~61_combout\);

-- Location: FF_X85_Y53_N31
\u_alu|u_divider|R_product[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(13),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(13));

-- Location: LCCOMB_X85_Y53_N30
\u_encoder|calc_res_q~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~62_combout\ = (\u_encoder|calc_res_q~61_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(13)) # ((!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~61_combout\ & (((\u_alu|u_divider|R_product\(13) & 
-- \u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(13),
	datab => \u_encoder|calc_res_q~61_combout\,
	datac => \u_alu|u_divider|R_product\(13),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~62_combout\);

-- Location: FF_X85_Y54_N7
\u_alu|u_divider|R_product[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(5));

-- Location: FF_X84_Y53_N25
\u_alu|u_substraction|calc_res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[5]~28_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(5));

-- Location: FF_X85_Y54_N13
\u_alu|u_booth|calc_res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(5),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(5));

-- Location: LCCOMB_X85_Y54_N12
\u_encoder|calc_res_q~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~93_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(5))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_substraction|calc_res\(5),
	datac => \u_alu|u_booth|calc_res\(5),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~93_combout\);

-- Location: LCCOMB_X85_Y54_N6
\u_encoder|calc_res_q~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~94_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q~93_combout\ & (\u_alu|u_shift_add_multi|calc_res\(5))) # (!\u_encoder|calc_res_q~93_combout\ & ((\u_alu|u_divider|R_product\(5)))))) # 
-- (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_shift_add_multi|calc_res\(5),
	datac => \u_alu|u_divider|R_product\(5),
	datad => \u_encoder|calc_res_q~93_combout\,
	combout => \u_encoder|calc_res_q~94_combout\);

-- Location: LCCOMB_X86_Y53_N16
\u_alu|u_add|calc_res[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[0]~17_combout\ = (\u_decoder|src1\(0) & (\u_decoder|src2\(0) $ (VCC))) # (!\u_decoder|src1\(0) & (\u_decoder|src2\(0) & VCC))
-- \u_alu|u_add|calc_res[0]~18\ = CARRY((\u_decoder|src1\(0) & \u_decoder|src2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(0),
	datab => \u_decoder|src2\(0),
	datad => VCC,
	combout => \u_alu|u_add|calc_res[0]~17_combout\,
	cout => \u_alu|u_add|calc_res[0]~18\);

-- Location: LCCOMB_X86_Y53_N18
\u_alu|u_add|calc_res[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[1]~19_combout\ = (\u_decoder|src2\(1) & ((\u_decoder|src1\(1) & (\u_alu|u_add|calc_res[0]~18\ & VCC)) # (!\u_decoder|src1\(1) & (!\u_alu|u_add|calc_res[0]~18\)))) # (!\u_decoder|src2\(1) & ((\u_decoder|src1\(1) & 
-- (!\u_alu|u_add|calc_res[0]~18\)) # (!\u_decoder|src1\(1) & ((\u_alu|u_add|calc_res[0]~18\) # (GND)))))
-- \u_alu|u_add|calc_res[1]~20\ = CARRY((\u_decoder|src2\(1) & (!\u_decoder|src1\(1) & !\u_alu|u_add|calc_res[0]~18\)) # (!\u_decoder|src2\(1) & ((!\u_alu|u_add|calc_res[0]~18\) # (!\u_decoder|src1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(1),
	datab => \u_decoder|src1\(1),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[0]~18\,
	combout => \u_alu|u_add|calc_res[1]~19_combout\,
	cout => \u_alu|u_add|calc_res[1]~20\);

-- Location: LCCOMB_X86_Y53_N20
\u_alu|u_add|calc_res[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[2]~21_combout\ = ((\u_decoder|src1\(2) $ (\u_decoder|src2\(2) $ (!\u_alu|u_add|calc_res[1]~20\)))) # (GND)
-- \u_alu|u_add|calc_res[2]~22\ = CARRY((\u_decoder|src1\(2) & ((\u_decoder|src2\(2)) # (!\u_alu|u_add|calc_res[1]~20\))) # (!\u_decoder|src1\(2) & (\u_decoder|src2\(2) & !\u_alu|u_add|calc_res[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(2),
	datab => \u_decoder|src2\(2),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[1]~20\,
	combout => \u_alu|u_add|calc_res[2]~21_combout\,
	cout => \u_alu|u_add|calc_res[2]~22\);

-- Location: LCCOMB_X86_Y53_N22
\u_alu|u_add|calc_res[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[3]~23_combout\ = (\u_decoder|src2\(3) & ((\u_decoder|src1\(3) & (\u_alu|u_add|calc_res[2]~22\ & VCC)) # (!\u_decoder|src1\(3) & (!\u_alu|u_add|calc_res[2]~22\)))) # (!\u_decoder|src2\(3) & ((\u_decoder|src1\(3) & 
-- (!\u_alu|u_add|calc_res[2]~22\)) # (!\u_decoder|src1\(3) & ((\u_alu|u_add|calc_res[2]~22\) # (GND)))))
-- \u_alu|u_add|calc_res[3]~24\ = CARRY((\u_decoder|src2\(3) & (!\u_decoder|src1\(3) & !\u_alu|u_add|calc_res[2]~22\)) # (!\u_decoder|src2\(3) & ((!\u_alu|u_add|calc_res[2]~22\) # (!\u_decoder|src1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(3),
	datab => \u_decoder|src1\(3),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[2]~22\,
	combout => \u_alu|u_add|calc_res[3]~23_combout\,
	cout => \u_alu|u_add|calc_res[3]~24\);

-- Location: LCCOMB_X86_Y53_N24
\u_alu|u_add|calc_res[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[4]~25_combout\ = ((\u_decoder|src1\(4) $ (\u_decoder|src2\(4) $ (!\u_alu|u_add|calc_res[3]~24\)))) # (GND)
-- \u_alu|u_add|calc_res[4]~26\ = CARRY((\u_decoder|src1\(4) & ((\u_decoder|src2\(4)) # (!\u_alu|u_add|calc_res[3]~24\))) # (!\u_decoder|src1\(4) & (\u_decoder|src2\(4) & !\u_alu|u_add|calc_res[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(4),
	datab => \u_decoder|src2\(4),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[3]~24\,
	combout => \u_alu|u_add|calc_res[4]~25_combout\,
	cout => \u_alu|u_add|calc_res[4]~26\);

-- Location: LCCOMB_X86_Y53_N26
\u_alu|u_add|calc_res[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[5]~27_combout\ = (\u_decoder|src2\(5) & ((\u_decoder|src1\(5) & (\u_alu|u_add|calc_res[4]~26\ & VCC)) # (!\u_decoder|src1\(5) & (!\u_alu|u_add|calc_res[4]~26\)))) # (!\u_decoder|src2\(5) & ((\u_decoder|src1\(5) & 
-- (!\u_alu|u_add|calc_res[4]~26\)) # (!\u_decoder|src1\(5) & ((\u_alu|u_add|calc_res[4]~26\) # (GND)))))
-- \u_alu|u_add|calc_res[5]~28\ = CARRY((\u_decoder|src2\(5) & (!\u_decoder|src1\(5) & !\u_alu|u_add|calc_res[4]~26\)) # (!\u_decoder|src2\(5) & ((!\u_alu|u_add|calc_res[4]~26\) # (!\u_decoder|src1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(5),
	datab => \u_decoder|src1\(5),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[4]~26\,
	combout => \u_alu|u_add|calc_res[5]~27_combout\,
	cout => \u_alu|u_add|calc_res[5]~28\);

-- Location: FF_X86_Y53_N27
\u_alu|u_add|calc_res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[5]~27_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(5));

-- Location: FF_X86_Y53_N19
\u_alu|u_add|calc_res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[1]~19_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(1));

-- Location: FF_X85_Y54_N15
\u_alu|u_divider|R_product[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(1));

-- Location: FF_X84_Y53_N17
\u_alu|u_substraction|calc_res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[1]~20_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(1));

-- Location: FF_X84_Y54_N15
\u_alu|u_booth|calc_res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(1),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(1));

-- Location: LCCOMB_X84_Y54_N14
\u_encoder|calc_res_q~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~107_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(1))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(1),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(1),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~107_combout\);

-- Location: LCCOMB_X85_Y54_N14
\u_encoder|calc_res_q~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~108_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q~107_combout\ & (\u_alu|u_shift_add_multi|calc_res\(1))) # (!\u_encoder|calc_res_q~107_combout\ & ((\u_alu|u_divider|R_product\(1)))))) # 
-- (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_shift_add_multi|calc_res\(1),
	datac => \u_alu|u_divider|R_product\(1),
	datad => \u_encoder|calc_res_q~107_combout\,
	combout => \u_encoder|calc_res_q~108_combout\);

-- Location: LCCOMB_X86_Y51_N4
\u_encoder|calc_res_q~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~109_combout\ = (\u_alu|alu_done~3_combout\ & ((\u_encoder|calc_res_q[16]~4_combout\ & ((\u_encoder|calc_res_q~108_combout\))) # (!\u_encoder|calc_res_q[16]~4_combout\ & (\u_alu|u_add|calc_res\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[16]~4_combout\,
	datab => \u_alu|u_add|calc_res\(1),
	datac => \u_encoder|calc_res_q~108_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~109_combout\);

-- Location: LCCOMB_X91_Y52_N8
\u_encoder|calc_res_q[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q[23]~8_combout\ = (\u_alu|alu_done~3_combout\) # ((\u_encoder|c_state.DATA~q\ & !\u_encoder|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~3_combout\,
	datab => \u_encoder|c_state.DATA~q\,
	datac => \u_encoder|Equal0~4_combout\,
	combout => \u_encoder|calc_res_q[23]~8_combout\);

-- Location: FF_X86_Y51_N5
\u_encoder|calc_res_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~109_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(1));

-- Location: LCCOMB_X86_Y51_N22
\u_encoder|calc_res_q~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~92_combout\ = (\u_alu|alu_done~3_combout\ & (\u_alu|u_add|calc_res\(5) & ((!\u_encoder|calc_res_q[16]~4_combout\)))) # (!\u_alu|alu_done~3_combout\ & (((\u_encoder|calc_res_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_add|calc_res\(5),
	datab => \u_alu|alu_done~3_combout\,
	datac => \u_encoder|calc_res_q\(1),
	datad => \u_encoder|calc_res_q[16]~4_combout\,
	combout => \u_encoder|calc_res_q~92_combout\);

-- Location: LCCOMB_X86_Y51_N14
\u_encoder|calc_res_q~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~95_combout\ = (\u_encoder|calc_res_q~92_combout\) # ((\u_encoder|calc_res_q~43_combout\ & \u_encoder|calc_res_q~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~43_combout\,
	datab => \u_encoder|calc_res_q~94_combout\,
	datac => \u_encoder|calc_res_q~92_combout\,
	combout => \u_encoder|calc_res_q~95_combout\);

-- Location: FF_X86_Y51_N15
\u_encoder|calc_res_q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~95_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(5));

-- Location: LCCOMB_X86_Y53_N28
\u_alu|u_add|calc_res[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[6]~29_combout\ = ((\u_decoder|src1\(6) $ (\u_decoder|src2\(6) $ (!\u_alu|u_add|calc_res[5]~28\)))) # (GND)
-- \u_alu|u_add|calc_res[6]~30\ = CARRY((\u_decoder|src1\(6) & ((\u_decoder|src2\(6)) # (!\u_alu|u_add|calc_res[5]~28\))) # (!\u_decoder|src1\(6) & (\u_decoder|src2\(6) & !\u_alu|u_add|calc_res[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(6),
	datab => \u_decoder|src2\(6),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[5]~28\,
	combout => \u_alu|u_add|calc_res[6]~29_combout\,
	cout => \u_alu|u_add|calc_res[6]~30\);

-- Location: LCCOMB_X86_Y53_N30
\u_alu|u_add|calc_res[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[7]~31_combout\ = (\u_decoder|src2\(7) & ((\u_decoder|src1\(7) & (\u_alu|u_add|calc_res[6]~30\ & VCC)) # (!\u_decoder|src1\(7) & (!\u_alu|u_add|calc_res[6]~30\)))) # (!\u_decoder|src2\(7) & ((\u_decoder|src1\(7) & 
-- (!\u_alu|u_add|calc_res[6]~30\)) # (!\u_decoder|src1\(7) & ((\u_alu|u_add|calc_res[6]~30\) # (GND)))))
-- \u_alu|u_add|calc_res[7]~32\ = CARRY((\u_decoder|src2\(7) & (!\u_decoder|src1\(7) & !\u_alu|u_add|calc_res[6]~30\)) # (!\u_decoder|src2\(7) & ((!\u_alu|u_add|calc_res[6]~30\) # (!\u_decoder|src1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(7),
	datab => \u_decoder|src1\(7),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[6]~30\,
	combout => \u_alu|u_add|calc_res[7]~31_combout\,
	cout => \u_alu|u_add|calc_res[7]~32\);

-- Location: LCCOMB_X86_Y52_N0
\u_alu|u_add|calc_res[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[8]~33_combout\ = ((\u_decoder|src2\(8) $ (\u_decoder|src1\(8) $ (!\u_alu|u_add|calc_res[7]~32\)))) # (GND)
-- \u_alu|u_add|calc_res[8]~34\ = CARRY((\u_decoder|src2\(8) & ((\u_decoder|src1\(8)) # (!\u_alu|u_add|calc_res[7]~32\))) # (!\u_decoder|src2\(8) & (\u_decoder|src1\(8) & !\u_alu|u_add|calc_res[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(8),
	datab => \u_decoder|src1\(8),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[7]~32\,
	combout => \u_alu|u_add|calc_res[8]~33_combout\,
	cout => \u_alu|u_add|calc_res[8]~34\);

-- Location: LCCOMB_X86_Y52_N2
\u_alu|u_add|calc_res[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[9]~35_combout\ = (\u_decoder|src1\(9) & ((\u_decoder|src2\(9) & (\u_alu|u_add|calc_res[8]~34\ & VCC)) # (!\u_decoder|src2\(9) & (!\u_alu|u_add|calc_res[8]~34\)))) # (!\u_decoder|src1\(9) & ((\u_decoder|src2\(9) & 
-- (!\u_alu|u_add|calc_res[8]~34\)) # (!\u_decoder|src2\(9) & ((\u_alu|u_add|calc_res[8]~34\) # (GND)))))
-- \u_alu|u_add|calc_res[9]~36\ = CARRY((\u_decoder|src1\(9) & (!\u_decoder|src2\(9) & !\u_alu|u_add|calc_res[8]~34\)) # (!\u_decoder|src1\(9) & ((!\u_alu|u_add|calc_res[8]~34\) # (!\u_decoder|src2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(9),
	datab => \u_decoder|src2\(9),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[8]~34\,
	combout => \u_alu|u_add|calc_res[9]~35_combout\,
	cout => \u_alu|u_add|calc_res[9]~36\);

-- Location: FF_X86_Y52_N3
\u_alu|u_add|calc_res[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[9]~35_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(9));

-- Location: LCCOMB_X86_Y52_N18
\u_encoder|calc_res_q~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~76_combout\ = (\u_alu|alu_done~3_combout\ & (((!\u_encoder|calc_res_q[16]~4_combout\ & \u_alu|u_add|calc_res\(9))))) # (!\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(5),
	datab => \u_alu|alu_done~3_combout\,
	datac => \u_encoder|calc_res_q[16]~4_combout\,
	datad => \u_alu|u_add|calc_res\(9),
	combout => \u_encoder|calc_res_q~76_combout\);

-- Location: FF_X84_Y52_N27
\u_alu|u_booth|calc_res[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(9),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(9));

-- Location: FF_X84_Y52_N1
\u_alu|u_substraction|calc_res[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[9]~36_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(9));

-- Location: LCCOMB_X84_Y52_N26
\u_encoder|calc_res_q~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~77_combout\ = (\u_encoder|calc_res_q[23]~0_combout\ & ((\u_encoder|calc_res_q[23]~1_combout\) # ((\u_alu|u_substraction|calc_res\(9))))) # (!\u_encoder|calc_res_q[23]~0_combout\ & (!\u_encoder|calc_res_q[23]~1_combout\ & 
-- (\u_alu|u_booth|calc_res\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~0_combout\,
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(9),
	datad => \u_alu|u_substraction|calc_res\(9),
	combout => \u_encoder|calc_res_q~77_combout\);

-- Location: FF_X85_Y53_N29
\u_alu|u_divider|R_product[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(9),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(9));

-- Location: LCCOMB_X85_Y53_N28
\u_encoder|calc_res_q~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~78_combout\ = (\u_encoder|calc_res_q~77_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(9)) # ((!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~77_combout\ & (((\u_alu|u_divider|R_product\(9) & 
-- \u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(9),
	datab => \u_encoder|calc_res_q~77_combout\,
	datac => \u_alu|u_divider|R_product\(9),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~78_combout\);

-- Location: LCCOMB_X86_Y51_N30
\u_encoder|calc_res_q~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~79_combout\ = (\u_encoder|calc_res_q~76_combout\) # ((\u_encoder|calc_res_q~43_combout\ & \u_encoder|calc_res_q~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~43_combout\,
	datac => \u_encoder|calc_res_q~76_combout\,
	datad => \u_encoder|calc_res_q~78_combout\,
	combout => \u_encoder|calc_res_q~79_combout\);

-- Location: FF_X86_Y51_N31
\u_encoder|calc_res_q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~79_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(9));

-- Location: LCCOMB_X86_Y52_N4
\u_alu|u_add|calc_res[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[10]~37_combout\ = ((\u_decoder|src1\(10) $ (\u_decoder|src2\(10) $ (!\u_alu|u_add|calc_res[9]~36\)))) # (GND)
-- \u_alu|u_add|calc_res[10]~38\ = CARRY((\u_decoder|src1\(10) & ((\u_decoder|src2\(10)) # (!\u_alu|u_add|calc_res[9]~36\))) # (!\u_decoder|src1\(10) & (\u_decoder|src2\(10) & !\u_alu|u_add|calc_res[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(10),
	datab => \u_decoder|src2\(10),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[9]~36\,
	combout => \u_alu|u_add|calc_res[10]~37_combout\,
	cout => \u_alu|u_add|calc_res[10]~38\);

-- Location: LCCOMB_X86_Y52_N6
\u_alu|u_add|calc_res[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[11]~39_combout\ = (\u_decoder|src2\(11) & ((\u_decoder|src1\(11) & (\u_alu|u_add|calc_res[10]~38\ & VCC)) # (!\u_decoder|src1\(11) & (!\u_alu|u_add|calc_res[10]~38\)))) # (!\u_decoder|src2\(11) & ((\u_decoder|src1\(11) & 
-- (!\u_alu|u_add|calc_res[10]~38\)) # (!\u_decoder|src1\(11) & ((\u_alu|u_add|calc_res[10]~38\) # (GND)))))
-- \u_alu|u_add|calc_res[11]~40\ = CARRY((\u_decoder|src2\(11) & (!\u_decoder|src1\(11) & !\u_alu|u_add|calc_res[10]~38\)) # (!\u_decoder|src2\(11) & ((!\u_alu|u_add|calc_res[10]~38\) # (!\u_decoder|src1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(11),
	datab => \u_decoder|src1\(11),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[10]~38\,
	combout => \u_alu|u_add|calc_res[11]~39_combout\,
	cout => \u_alu|u_add|calc_res[11]~40\);

-- Location: LCCOMB_X86_Y52_N8
\u_alu|u_add|calc_res[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[12]~41_combout\ = ((\u_decoder|src1\(12) $ (\u_decoder|src2\(12) $ (!\u_alu|u_add|calc_res[11]~40\)))) # (GND)
-- \u_alu|u_add|calc_res[12]~42\ = CARRY((\u_decoder|src1\(12) & ((\u_decoder|src2\(12)) # (!\u_alu|u_add|calc_res[11]~40\))) # (!\u_decoder|src1\(12) & (\u_decoder|src2\(12) & !\u_alu|u_add|calc_res[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(12),
	datab => \u_decoder|src2\(12),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[11]~40\,
	combout => \u_alu|u_add|calc_res[12]~41_combout\,
	cout => \u_alu|u_add|calc_res[12]~42\);

-- Location: LCCOMB_X86_Y52_N10
\u_alu|u_add|calc_res[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[13]~43_combout\ = (\u_decoder|src2\(13) & ((\u_decoder|src1\(13) & (\u_alu|u_add|calc_res[12]~42\ & VCC)) # (!\u_decoder|src1\(13) & (!\u_alu|u_add|calc_res[12]~42\)))) # (!\u_decoder|src2\(13) & ((\u_decoder|src1\(13) & 
-- (!\u_alu|u_add|calc_res[12]~42\)) # (!\u_decoder|src1\(13) & ((\u_alu|u_add|calc_res[12]~42\) # (GND)))))
-- \u_alu|u_add|calc_res[13]~44\ = CARRY((\u_decoder|src2\(13) & (!\u_decoder|src1\(13) & !\u_alu|u_add|calc_res[12]~42\)) # (!\u_decoder|src2\(13) & ((!\u_alu|u_add|calc_res[12]~42\) # (!\u_decoder|src1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src2\(13),
	datab => \u_decoder|src1\(13),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[12]~42\,
	combout => \u_alu|u_add|calc_res[13]~43_combout\,
	cout => \u_alu|u_add|calc_res[13]~44\);

-- Location: FF_X86_Y52_N11
\u_alu|u_add|calc_res[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[13]~43_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(13));

-- Location: LCCOMB_X86_Y51_N24
\u_encoder|calc_res_q~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~60_combout\ = (\u_alu|alu_done~3_combout\ & (((\u_alu|u_add|calc_res\(13) & !\u_encoder|calc_res_q[16]~4_combout\)))) # (!\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(9),
	datab => \u_alu|alu_done~3_combout\,
	datac => \u_alu|u_add|calc_res\(13),
	datad => \u_encoder|calc_res_q[16]~4_combout\,
	combout => \u_encoder|calc_res_q~60_combout\);

-- Location: LCCOMB_X86_Y51_N16
\u_encoder|calc_res_q~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~63_combout\ = (\u_encoder|calc_res_q~60_combout\) # ((\u_encoder|calc_res_q~43_combout\ & \u_encoder|calc_res_q~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~43_combout\,
	datab => \u_encoder|calc_res_q~62_combout\,
	datad => \u_encoder|calc_res_q~60_combout\,
	combout => \u_encoder|calc_res_q~63_combout\);

-- Location: FF_X86_Y51_N17
\u_encoder|calc_res_q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~63_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(13));

-- Location: LCCOMB_X89_Y52_N6
\u_encoder|calc_res_q[23]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q[23]~5_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (!\u_encoder|calc_res_q[23]~0_combout\ & ((!\u_alu|calc_res_q.1000~q\) # (!\u_alu|u_divider|c_state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_divider|c_state.STOP~q\,
	datac => \u_encoder|calc_res_q[23]~0_combout\,
	datad => \u_alu|calc_res_q.1000~q\,
	combout => \u_encoder|calc_res_q[23]~5_combout\);

-- Location: LCCOMB_X85_Y52_N0
\u_encoder|calc_res_q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~6_combout\ = (!\u_encoder|calc_res_q[23]~5_combout\ & (!\u_alu|calc_res_q.0100~q\ & (\u_alu|alu_done~3_combout\ & \u_encoder|calc_res_q[16]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~5_combout\,
	datab => \u_alu|calc_res_q.0100~q\,
	datac => \u_alu|alu_done~3_combout\,
	datad => \u_encoder|calc_res_q[16]~4_combout\,
	combout => \u_encoder|calc_res_q~6_combout\);

-- Location: LCCOMB_X86_Y51_N10
\u_encoder|calc_res_q~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~49_combout\ = (\u_encoder|calc_res_q~48_combout\ & ((\u_encoder|calc_res_q~6_combout\) # ((\u_encoder|calc_res_q\(13) & !\u_alu|alu_done~3_combout\)))) # (!\u_encoder|calc_res_q~48_combout\ & (\u_encoder|calc_res_q\(13) & 
-- ((!\u_alu|alu_done~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~48_combout\,
	datab => \u_encoder|calc_res_q\(13),
	datac => \u_encoder|calc_res_q~6_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~49_combout\);

-- Location: FF_X86_Y51_N11
\u_encoder|calc_res_q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~49_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(17));

-- Location: LCCOMB_X88_Y51_N30
\u_encoder|calc_res_q~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~35_combout\ = (\u_encoder|calc_res_q~34_combout\ & ((\u_encoder|calc_res_q~6_combout\) # ((\u_encoder|calc_res_q\(17) & !\u_alu|alu_done~3_combout\)))) # (!\u_encoder|calc_res_q~34_combout\ & (\u_encoder|calc_res_q\(17) & 
-- ((!\u_alu|alu_done~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~34_combout\,
	datab => \u_encoder|calc_res_q\(17),
	datac => \u_encoder|calc_res_q~6_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~35_combout\);

-- Location: FF_X88_Y51_N31
\u_encoder|calc_res_q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~35_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(21));

-- Location: FF_X87_Y51_N9
\u_alu|u_booth|calc_res[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(9),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(25));

-- Location: LCCOMB_X87_Y51_N8
\u_encoder|calc_res_q~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~21_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(31))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_substraction|calc_res\(31),
	datac => \u_alu|u_booth|calc_res\(25),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~21_combout\);

-- Location: LCCOMB_X88_Y51_N18
\u_alu|u_divider|Q_product~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~5_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(9)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_decoder|src1\(9),
	datac => \u_alu|u_divider|sum_Q\(9),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~5_combout\);

-- Location: FF_X88_Y51_N19
\u_alu|u_divider|Q_product[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(9));

-- Location: LCCOMB_X88_Y51_N28
\u_encoder|calc_res_q~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~22_combout\ = (\u_encoder|calc_res_q~21_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(25)) # (!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~21_combout\ & (\u_alu|u_divider|Q_product\(9) & 
-- ((\u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~21_combout\,
	datab => \u_alu|u_divider|Q_product\(9),
	datac => \u_alu|u_shift_add_multi|calc_res\(25),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~22_combout\);

-- Location: LCCOMB_X88_Y51_N8
\u_encoder|calc_res_q~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~23_combout\ = (\u_encoder|calc_res_q\(21) & (((\u_encoder|calc_res_q~22_combout\ & \u_encoder|calc_res_q~6_combout\)) # (!\u_alu|alu_done~3_combout\))) # (!\u_encoder|calc_res_q\(21) & (\u_encoder|calc_res_q~22_combout\ & 
-- (\u_encoder|calc_res_q~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(21),
	datab => \u_encoder|calc_res_q~22_combout\,
	datac => \u_encoder|calc_res_q~6_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~23_combout\);

-- Location: FF_X88_Y51_N9
\u_encoder|calc_res_q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~23_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(25));

-- Location: LCCOMB_X88_Y51_N24
\u_encoder|calc_res_q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~11_combout\ = (\u_encoder|calc_res_q~10_combout\ & ((\u_encoder|calc_res_q~6_combout\) # ((\u_encoder|calc_res_q\(25) & !\u_alu|alu_done~3_combout\)))) # (!\u_encoder|calc_res_q~10_combout\ & (\u_encoder|calc_res_q\(25) & 
-- ((!\u_alu|alu_done~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~10_combout\,
	datab => \u_encoder|calc_res_q\(25),
	datac => \u_encoder|calc_res_q~6_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~11_combout\);

-- Location: FF_X88_Y51_N25
\u_encoder|calc_res_q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~11_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(29));

-- Location: LCCOMB_X84_Y51_N8
\u_alu|u_divider|Q_product~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~8_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(4)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(4),
	datab => \u_alu|u_divider|sum_Q\(4),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~8_combout\);

-- Location: FF_X84_Y51_N9
\u_alu|u_divider|Q_product[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(4));

-- Location: FF_X85_Y51_N11
\u_alu|u_booth|calc_res[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(20));

-- Location: LCCOMB_X85_Y51_N10
\u_encoder|calc_res_q~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~30_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|Q_product\(4)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(20) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Q_product\(4),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(20),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~30_combout\);

-- Location: LCCOMB_X85_Y51_N20
\u_encoder|calc_res_q~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~31_combout\ = (\u_encoder|calc_res_q~30_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(20)) # ((!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~30_combout\ & (((\u_alu|u_substraction|calc_res\(31) & 
-- \u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~30_combout\,
	datab => \u_alu|u_shift_add_multi|calc_res\(20),
	datac => \u_alu|u_substraction|calc_res\(31),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~31_combout\);

-- Location: LCCOMB_X84_Y51_N12
\u_alu|u_divider|Q_product~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~12_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(0)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|c_state.IDLE~q\,
	datab => \u_decoder|src1\(0),
	datac => \u_alu|u_divider|sum_Q\(0),
	combout => \u_alu|u_divider|Q_product~12_combout\);

-- Location: FF_X84_Y51_N13
\u_alu|u_divider|Q_product[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~12_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(0));

-- Location: FF_X85_Y51_N17
\u_alu|u_booth|calc_res[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(16));

-- Location: LCCOMB_X85_Y51_N16
\u_encoder|calc_res_q~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~44_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|Q_product\(0)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(16) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Q_product\(0),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(16),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~44_combout\);

-- Location: FF_X84_Y52_N15
\u_alu|u_substraction|calc_res[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[16]~50_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(16));

-- Location: LCCOMB_X85_Y51_N18
\u_encoder|calc_res_q~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~45_combout\ = (\u_encoder|calc_res_q~44_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(16)) # ((!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~44_combout\ & (((\u_alu|u_substraction|calc_res\(16) & 
-- \u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(16),
	datab => \u_encoder|calc_res_q~44_combout\,
	datac => \u_alu|u_substraction|calc_res\(16),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~45_combout\);

-- Location: LCCOMB_X86_Y52_N12
\u_alu|u_add|calc_res[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[14]~45_combout\ = ((\u_decoder|src1\(14) $ (\u_decoder|src2\(14) $ (!\u_alu|u_add|calc_res[13]~44\)))) # (GND)
-- \u_alu|u_add|calc_res[14]~46\ = CARRY((\u_decoder|src1\(14) & ((\u_decoder|src2\(14)) # (!\u_alu|u_add|calc_res[13]~44\))) # (!\u_decoder|src1\(14) & (\u_decoder|src2\(14) & !\u_alu|u_add|calc_res[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(14),
	datab => \u_decoder|src2\(14),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[13]~44\,
	combout => \u_alu|u_add|calc_res[14]~45_combout\,
	cout => \u_alu|u_add|calc_res[14]~46\);

-- Location: LCCOMB_X86_Y52_N14
\u_alu|u_add|calc_res[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[15]~47_combout\ = (\u_decoder|src1\(15) & ((\u_decoder|src2\(15) & (\u_alu|u_add|calc_res[14]~46\ & VCC)) # (!\u_decoder|src2\(15) & (!\u_alu|u_add|calc_res[14]~46\)))) # (!\u_decoder|src1\(15) & ((\u_decoder|src2\(15) & 
-- (!\u_alu|u_add|calc_res[14]~46\)) # (!\u_decoder|src2\(15) & ((\u_alu|u_add|calc_res[14]~46\) # (GND)))))
-- \u_alu|u_add|calc_res[15]~48\ = CARRY((\u_decoder|src1\(15) & (!\u_decoder|src2\(15) & !\u_alu|u_add|calc_res[14]~46\)) # (!\u_decoder|src1\(15) & ((!\u_alu|u_add|calc_res[14]~46\) # (!\u_decoder|src2\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(15),
	datab => \u_decoder|src2\(15),
	datad => VCC,
	cin => \u_alu|u_add|calc_res[14]~46\,
	combout => \u_alu|u_add|calc_res[15]~47_combout\,
	cout => \u_alu|u_add|calc_res[15]~48\);

-- Location: LCCOMB_X86_Y52_N16
\u_alu|u_add|calc_res[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_add|calc_res[16]~49_combout\ = !\u_alu|u_add|calc_res[15]~48\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_alu|u_add|calc_res[15]~48\,
	combout => \u_alu|u_add|calc_res[16]~49_combout\);

-- Location: FF_X86_Y52_N17
\u_alu|u_add|calc_res[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[16]~49_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(16));

-- Location: LCCOMB_X87_Y55_N26
\u_alu|u_divider|R_product[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|R_product[12]~feeder_combout\ = \u_alu|u_divider|A\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_alu|u_divider|A\(12),
	combout => \u_alu|u_divider|R_product[12]~feeder_combout\);

-- Location: FF_X87_Y55_N27
\u_alu|u_divider|R_product[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|R_product[12]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(12));

-- Location: FF_X87_Y51_N11
\u_alu|u_booth|calc_res[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(12),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(12));

-- Location: LCCOMB_X87_Y51_N10
\u_encoder|calc_res_q~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~57_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|R_product\(12)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(12) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_divider|R_product\(12),
	datac => \u_alu|u_booth|calc_res\(12),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~57_combout\);

-- Location: FF_X84_Y52_N7
\u_alu|u_substraction|calc_res[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[12]~42_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(12));

-- Location: LCCOMB_X85_Y52_N12
\u_encoder|calc_res_q~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~58_combout\ = (\u_encoder|calc_res_q~57_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(12))) # (!\u_encoder|calc_res_q[23]~0_combout\))) # (!\u_encoder|calc_res_q~57_combout\ & (\u_encoder|calc_res_q[23]~0_combout\ & 
-- ((\u_alu|u_substraction|calc_res\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~57_combout\,
	datab => \u_encoder|calc_res_q[23]~0_combout\,
	datac => \u_alu|u_shift_add_multi|calc_res\(12),
	datad => \u_alu|u_substraction|calc_res\(12),
	combout => \u_encoder|calc_res_q~58_combout\);

-- Location: LCCOMB_X85_Y54_N10
\u_alu|u_divider|R_product[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|R_product[4]~feeder_combout\ = \u_alu|u_divider|A\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_alu|u_divider|A\(4),
	combout => \u_alu|u_divider|R_product[4]~feeder_combout\);

-- Location: FF_X85_Y54_N11
\u_alu|u_divider|R_product[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|R_product[4]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(4));

-- Location: FF_X84_Y54_N11
\u_alu|u_booth|calc_res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(4),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(4));

-- Location: LCCOMB_X84_Y54_N10
\u_encoder|calc_res_q~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~89_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|R_product\(4)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(4) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|R_product\(4),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(4),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~89_combout\);

-- Location: FF_X84_Y53_N23
\u_alu|u_substraction|calc_res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[4]~26_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(4));

-- Location: LCCOMB_X84_Y54_N28
\u_encoder|calc_res_q~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~90_combout\ = (\u_encoder|calc_res_q~89_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(4)) # ((!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~89_combout\ & (((\u_alu|u_substraction|calc_res\(4) & 
-- \u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~89_combout\,
	datab => \u_alu|u_shift_add_multi|calc_res\(4),
	datac => \u_alu|u_substraction|calc_res\(4),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~90_combout\);

-- Location: FF_X86_Y53_N17
\u_alu|u_add|calc_res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[0]~17_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(0));

-- Location: FF_X84_Y53_N15
\u_alu|u_substraction|calc_res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[0]~18_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(0));

-- Location: FF_X85_Y54_N1
\u_alu|u_divider|R_product[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(0),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(0));

-- Location: LCCOMB_X85_Y54_N0
\u_encoder|calc_res_q~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~104_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_divider|R_product\(0)) # (\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (\u_alu|u_booth|calc_res\(0) & 
-- ((!\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_booth|calc_res\(0),
	datac => \u_alu|u_divider|R_product\(0),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~104_combout\);

-- Location: LCCOMB_X86_Y53_N4
\u_encoder|calc_res_q~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~105_combout\ = (\u_encoder|calc_res_q~104_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(0)) # (!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~104_combout\ & (\u_alu|u_substraction|calc_res\(0) & 
-- (\u_encoder|calc_res_q[23]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(0),
	datab => \u_encoder|calc_res_q~104_combout\,
	datac => \u_encoder|calc_res_q[23]~0_combout\,
	datad => \u_alu|u_shift_add_multi|calc_res\(0),
	combout => \u_encoder|calc_res_q~105_combout\);

-- Location: LCCOMB_X86_Y53_N8
\u_encoder|calc_res_q~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~106_combout\ = (\u_alu|alu_done~3_combout\ & ((\u_encoder|calc_res_q[16]~4_combout\ & ((\u_encoder|calc_res_q~105_combout\))) # (!\u_encoder|calc_res_q[16]~4_combout\ & (\u_alu|u_add|calc_res\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_add|calc_res\(0),
	datab => \u_encoder|calc_res_q~105_combout\,
	datac => \u_encoder|calc_res_q[16]~4_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~106_combout\);

-- Location: FF_X86_Y53_N9
\u_encoder|calc_res_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~106_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(0));

-- Location: FF_X86_Y53_N25
\u_alu|u_add|calc_res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[4]~25_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(4));

-- Location: LCCOMB_X86_Y53_N10
\u_encoder|calc_res_q~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~88_combout\ = (\u_alu|alu_done~3_combout\ & (((\u_alu|u_add|calc_res\(4) & !\u_encoder|calc_res_q[16]~4_combout\)))) # (!\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(0),
	datab => \u_alu|u_add|calc_res\(4),
	datac => \u_encoder|calc_res_q[16]~4_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~88_combout\);

-- Location: LCCOMB_X85_Y52_N26
\u_encoder|calc_res_q~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~91_combout\ = (\u_encoder|calc_res_q~88_combout\) # ((\u_encoder|calc_res_q~43_combout\ & \u_encoder|calc_res_q~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|calc_res_q~43_combout\,
	datac => \u_encoder|calc_res_q~90_combout\,
	datad => \u_encoder|calc_res_q~88_combout\,
	combout => \u_encoder|calc_res_q~91_combout\);

-- Location: FF_X85_Y52_N27
\u_encoder|calc_res_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~91_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(4));

-- Location: FF_X86_Y52_N1
\u_alu|u_add|calc_res[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[8]~33_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(8));

-- Location: LCCOMB_X85_Y52_N20
\u_encoder|calc_res_q~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~72_combout\ = (\u_alu|alu_done~3_combout\ & (((\u_alu|u_add|calc_res\(8) & !\u_encoder|calc_res_q[16]~4_combout\)))) # (!\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(4),
	datab => \u_alu|alu_done~3_combout\,
	datac => \u_alu|u_add|calc_res\(8),
	datad => \u_encoder|calc_res_q[16]~4_combout\,
	combout => \u_encoder|calc_res_q~72_combout\);

-- Location: LCCOMB_X85_Y53_N18
\u_alu|u_divider|R_product[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|R_product[8]~feeder_combout\ = \u_alu|u_divider|A\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_alu|u_divider|A\(8),
	combout => \u_alu|u_divider|R_product[8]~feeder_combout\);

-- Location: FF_X85_Y53_N19
\u_alu|u_divider|R_product[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|R_product[8]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(8));

-- Location: FF_X84_Y54_N5
\u_alu|u_booth|calc_res[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(8),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(8));

-- Location: LCCOMB_X84_Y54_N4
\u_encoder|calc_res_q~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~73_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|R_product\(8)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(8) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|R_product\(8),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(8),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~73_combout\);

-- Location: FF_X84_Y53_N31
\u_alu|u_substraction|calc_res[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[8]~34_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(8));

-- Location: LCCOMB_X85_Y52_N30
\u_encoder|calc_res_q~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~74_combout\ = (\u_encoder|calc_res_q~73_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(8)) # ((!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~73_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\ & 
-- \u_alu|u_substraction|calc_res\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~73_combout\,
	datab => \u_alu|u_shift_add_multi|calc_res\(8),
	datac => \u_encoder|calc_res_q[23]~0_combout\,
	datad => \u_alu|u_substraction|calc_res\(8),
	combout => \u_encoder|calc_res_q~74_combout\);

-- Location: LCCOMB_X85_Y52_N16
\u_encoder|calc_res_q~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~75_combout\ = (\u_encoder|calc_res_q~72_combout\) # ((\u_encoder|calc_res_q~74_combout\ & \u_encoder|calc_res_q~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|calc_res_q~72_combout\,
	datac => \u_encoder|calc_res_q~74_combout\,
	datad => \u_encoder|calc_res_q~43_combout\,
	combout => \u_encoder|calc_res_q~75_combout\);

-- Location: FF_X85_Y52_N17
\u_encoder|calc_res_q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~75_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(8));

-- Location: FF_X86_Y52_N9
\u_alu|u_add|calc_res[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[12]~41_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(12));

-- Location: LCCOMB_X85_Y52_N2
\u_encoder|calc_res_q~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~56_combout\ = (\u_alu|alu_done~3_combout\ & (((\u_alu|u_add|calc_res\(12) & !\u_encoder|calc_res_q[16]~4_combout\)))) # (!\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(8),
	datab => \u_alu|u_add|calc_res\(12),
	datac => \u_alu|alu_done~3_combout\,
	datad => \u_encoder|calc_res_q[16]~4_combout\,
	combout => \u_encoder|calc_res_q~56_combout\);

-- Location: LCCOMB_X85_Y52_N24
\u_encoder|calc_res_q~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~59_combout\ = (\u_encoder|calc_res_q~56_combout\) # ((\u_encoder|calc_res_q~58_combout\ & \u_encoder|calc_res_q~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~58_combout\,
	datab => \u_encoder|calc_res_q~43_combout\,
	datad => \u_encoder|calc_res_q~56_combout\,
	combout => \u_encoder|calc_res_q~59_combout\);

-- Location: FF_X85_Y52_N25
\u_encoder|calc_res_q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~59_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(12));

-- Location: LCCOMB_X86_Y52_N20
\u_encoder|calc_res_q~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~42_combout\ = (\u_alu|alu_done~3_combout\ & (\u_alu|u_add|calc_res\(16) & (!\u_encoder|calc_res_q[16]~4_combout\))) # (!\u_alu|alu_done~3_combout\ & (((\u_encoder|calc_res_q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_add|calc_res\(16),
	datab => \u_alu|alu_done~3_combout\,
	datac => \u_encoder|calc_res_q[16]~4_combout\,
	datad => \u_encoder|calc_res_q\(12),
	combout => \u_encoder|calc_res_q~42_combout\);

-- Location: LCCOMB_X85_Y51_N14
\u_encoder|calc_res_q~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~46_combout\ = (\u_encoder|calc_res_q~42_combout\) # ((\u_encoder|calc_res_q~45_combout\ & \u_encoder|calc_res_q~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|calc_res_q~45_combout\,
	datac => \u_encoder|calc_res_q~43_combout\,
	datad => \u_encoder|calc_res_q~42_combout\,
	combout => \u_encoder|calc_res_q~46_combout\);

-- Location: FF_X85_Y51_N15
\u_encoder|calc_res_q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~46_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(16));

-- Location: LCCOMB_X85_Y51_N8
\u_encoder|calc_res_q~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~32_combout\ = (\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q~31_combout\ & ((\u_encoder|calc_res_q~6_combout\)))) # (!\u_alu|alu_done~3_combout\ & ((\u_encoder|calc_res_q\(16)) # ((\u_encoder|calc_res_q~31_combout\ & 
-- \u_encoder|calc_res_q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~3_combout\,
	datab => \u_encoder|calc_res_q~31_combout\,
	datac => \u_encoder|calc_res_q\(16),
	datad => \u_encoder|calc_res_q~6_combout\,
	combout => \u_encoder|calc_res_q~32_combout\);

-- Location: FF_X85_Y51_N9
\u_encoder|calc_res_q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~32_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(20));

-- Location: FF_X87_Y51_N27
\u_alu|u_booth|calc_res[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(8),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(24));

-- Location: LCCOMB_X88_Y51_N6
\u_alu|u_divider|Q_product~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~4_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(8)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_decoder|src1\(8),
	datab => \u_alu|u_divider|sum_Q\(8),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~4_combout\);

-- Location: FF_X88_Y51_N7
\u_alu|u_divider|Q_product[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(8));

-- Location: LCCOMB_X87_Y51_N26
\u_encoder|calc_res_q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~18_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\) # ((\u_alu|u_divider|Q_product\(8))))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (!\u_encoder|calc_res_q[23]~0_combout\ & 
-- (\u_alu|u_booth|calc_res\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_encoder|calc_res_q[23]~0_combout\,
	datac => \u_alu|u_booth|calc_res\(24),
	datad => \u_alu|u_divider|Q_product\(8),
	combout => \u_encoder|calc_res_q~18_combout\);

-- Location: LCCOMB_X87_Y51_N24
\u_encoder|calc_res_q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~19_combout\ = (\u_encoder|calc_res_q~18_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(24)) # ((!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~18_combout\ & (((\u_alu|u_substraction|calc_res\(31) & 
-- \u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(24),
	datab => \u_alu|u_substraction|calc_res\(31),
	datac => \u_encoder|calc_res_q~18_combout\,
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~19_combout\);

-- Location: LCCOMB_X85_Y51_N30
\u_encoder|calc_res_q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~20_combout\ = (\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q~6_combout\ & ((\u_encoder|calc_res_q~19_combout\)))) # (!\u_alu|alu_done~3_combout\ & ((\u_encoder|calc_res_q\(20)) # ((\u_encoder|calc_res_q~6_combout\ & 
-- \u_encoder|calc_res_q~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~3_combout\,
	datab => \u_encoder|calc_res_q~6_combout\,
	datac => \u_encoder|calc_res_q\(20),
	datad => \u_encoder|calc_res_q~19_combout\,
	combout => \u_encoder|calc_res_q~20_combout\);

-- Location: FF_X85_Y51_N31
\u_encoder|calc_res_q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~20_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(24));

-- Location: LCCOMB_X88_Y51_N2
\u_alu|u_divider|Q_product~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~0_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(12))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|sum_Q\(12),
	datab => \u_decoder|src1\(12),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~0_combout\);

-- Location: FF_X88_Y51_N3
\u_alu|u_divider|Q_product[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(12));

-- Location: FF_X85_Y51_N3
\u_alu|u_booth|calc_res[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(12),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(28));

-- Location: LCCOMB_X85_Y51_N2
\u_encoder|calc_res_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~2_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|Q_product\(12)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(28) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Q_product\(12),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(28),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~2_combout\);

-- Location: LCCOMB_X85_Y51_N12
\u_encoder|calc_res_q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~3_combout\ = (\u_encoder|calc_res_q~2_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(28)) # ((!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~2_combout\ & (((\u_alu|u_substraction|calc_res\(31) & 
-- \u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(28),
	datab => \u_encoder|calc_res_q~2_combout\,
	datac => \u_alu|u_substraction|calc_res\(31),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~3_combout\);

-- Location: LCCOMB_X85_Y51_N24
\u_encoder|calc_res_q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~7_combout\ = (\u_encoder|calc_res_q\(24) & (((\u_encoder|calc_res_q~6_combout\ & \u_encoder|calc_res_q~3_combout\)) # (!\u_alu|alu_done~3_combout\))) # (!\u_encoder|calc_res_q\(24) & (\u_encoder|calc_res_q~6_combout\ & 
-- ((\u_encoder|calc_res_q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(24),
	datab => \u_encoder|calc_res_q~6_combout\,
	datac => \u_alu|alu_done~3_combout\,
	datad => \u_encoder|calc_res_q~3_combout\,
	combout => \u_encoder|calc_res_q~7_combout\);

-- Location: FF_X85_Y51_N25
\u_encoder|calc_res_q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(28));

-- Location: LCCOMB_X89_Y51_N10
\u_alu|u_divider|Q_product~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~6_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(10))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|sum_Q\(10),
	datac => \u_decoder|src1\(10),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~6_combout\);

-- Location: FF_X89_Y51_N11
\u_alu|u_divider|Q_product[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(10));

-- Location: FF_X88_Y52_N25
\u_alu|u_booth|calc_res[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(26));

-- Location: LCCOMB_X88_Y52_N24
\u_encoder|calc_res_q~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~24_combout\ = (\u_encoder|calc_res_q[23]~0_combout\ & (((\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_encoder|calc_res_q[23]~1_combout\ & (\u_alu|u_divider|Q_product\(10))) # 
-- (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_booth|calc_res\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Q_product\(10),
	datab => \u_encoder|calc_res_q[23]~0_combout\,
	datac => \u_alu|u_booth|calc_res\(26),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~24_combout\);

-- Location: LCCOMB_X88_Y52_N26
\u_encoder|calc_res_q~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~25_combout\ = (\u_encoder|calc_res_q~24_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(26)) # (!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~24_combout\ & (\u_alu|u_substraction|calc_res\(31) & 
-- (\u_encoder|calc_res_q[23]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(31),
	datab => \u_encoder|calc_res_q~24_combout\,
	datac => \u_encoder|calc_res_q[23]~0_combout\,
	datad => \u_alu|u_shift_add_multi|calc_res\(26),
	combout => \u_encoder|calc_res_q~25_combout\);

-- Location: FF_X84_Y52_N11
\u_alu|u_substraction|calc_res[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[14]~46_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(14));

-- Location: LCCOMB_X85_Y53_N24
\u_alu|u_divider|R_product[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|R_product[14]~feeder_combout\ = \u_alu|u_divider|A\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_alu|u_divider|A\(14),
	combout => \u_alu|u_divider|R_product[14]~feeder_combout\);

-- Location: FF_X85_Y53_N25
\u_alu|u_divider|R_product[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|R_product[14]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(14));

-- Location: FF_X87_Y51_N21
\u_alu|u_booth|calc_res[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(14),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(14));

-- Location: LCCOMB_X87_Y51_N20
\u_encoder|calc_res_q~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~65_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|R_product\(14)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(14) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_divider|R_product\(14),
	datac => \u_alu|u_booth|calc_res\(14),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~65_combout\);

-- Location: LCCOMB_X85_Y52_N8
\u_encoder|calc_res_q~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~66_combout\ = (\u_encoder|calc_res_q~65_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(14)) # (!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~65_combout\ & (\u_alu|u_substraction|calc_res\(14) & 
-- (\u_encoder|calc_res_q[23]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(14),
	datab => \u_encoder|calc_res_q~65_combout\,
	datac => \u_encoder|calc_res_q[23]~0_combout\,
	datad => \u_alu|u_shift_add_multi|calc_res\(14),
	combout => \u_encoder|calc_res_q~66_combout\);

-- Location: FF_X85_Y53_N27
\u_alu|u_divider|R_product[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(10));

-- Location: FF_X85_Y51_N27
\u_alu|u_booth|calc_res[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(10),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(10));

-- Location: LCCOMB_X85_Y51_N26
\u_encoder|calc_res_q~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~81_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|R_product\(10)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(10) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|R_product\(10),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(10),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~81_combout\);

-- Location: FF_X84_Y52_N3
\u_alu|u_substraction|calc_res[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[10]~38_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(10));

-- Location: LCCOMB_X85_Y51_N28
\u_encoder|calc_res_q~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~82_combout\ = (\u_encoder|calc_res_q~81_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(10))) # (!\u_encoder|calc_res_q[23]~0_combout\))) # (!\u_encoder|calc_res_q~81_combout\ & (\u_encoder|calc_res_q[23]~0_combout\ & 
-- (\u_alu|u_substraction|calc_res\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~81_combout\,
	datab => \u_encoder|calc_res_q[23]~0_combout\,
	datac => \u_alu|u_substraction|calc_res\(10),
	datad => \u_alu|u_shift_add_multi|calc_res\(10),
	combout => \u_encoder|calc_res_q~82_combout\);

-- Location: FF_X85_Y54_N3
\u_alu|u_divider|R_product[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(6));

-- Location: FF_X84_Y54_N25
\u_alu|u_booth|calc_res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(6));

-- Location: LCCOMB_X84_Y54_N24
\u_encoder|calc_res_q~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~97_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|R_product\(6)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(6) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|R_product\(6),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(6),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~97_combout\);

-- Location: FF_X84_Y53_N27
\u_alu|u_substraction|calc_res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[6]~30_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(6));

-- Location: LCCOMB_X85_Y51_N22
\u_encoder|calc_res_q~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~98_combout\ = (\u_encoder|calc_res_q~97_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(6)) # ((!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~97_combout\ & (((\u_alu|u_substraction|calc_res\(6) & 
-- \u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(6),
	datab => \u_encoder|calc_res_q~97_combout\,
	datac => \u_alu|u_substraction|calc_res\(6),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~98_combout\);

-- Location: LCCOMB_X85_Y54_N4
\u_alu|u_divider|R_product[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|R_product[2]~feeder_combout\ = \u_alu|u_divider|A\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_alu|u_divider|A\(2),
	combout => \u_alu|u_divider|R_product[2]~feeder_combout\);

-- Location: FF_X85_Y54_N5
\u_alu|u_divider|R_product[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|R_product[2]~feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(2));

-- Location: FF_X84_Y54_N31
\u_alu|u_booth|calc_res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(2));

-- Location: LCCOMB_X84_Y54_N30
\u_encoder|calc_res_q~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~110_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|R_product\(2)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(2) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|R_product\(2),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(2),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~110_combout\);

-- Location: FF_X84_Y53_N19
\u_alu|u_substraction|calc_res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[2]~22_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(2));

-- Location: LCCOMB_X86_Y53_N6
\u_encoder|calc_res_q~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~111_combout\ = (\u_encoder|calc_res_q~110_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(2)) # ((!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~110_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\ & 
-- \u_alu|u_substraction|calc_res\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(2),
	datab => \u_encoder|calc_res_q~110_combout\,
	datac => \u_encoder|calc_res_q[23]~0_combout\,
	datad => \u_alu|u_substraction|calc_res\(2),
	combout => \u_encoder|calc_res_q~111_combout\);

-- Location: FF_X86_Y53_N21
\u_alu|u_add|calc_res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[2]~21_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(2));

-- Location: LCCOMB_X86_Y53_N12
\u_encoder|calc_res_q~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~112_combout\ = (\u_alu|alu_done~3_combout\ & ((\u_encoder|calc_res_q[16]~4_combout\ & (\u_encoder|calc_res_q~111_combout\)) # (!\u_encoder|calc_res_q[16]~4_combout\ & ((\u_alu|u_add|calc_res\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~111_combout\,
	datab => \u_alu|u_add|calc_res\(2),
	datac => \u_encoder|calc_res_q[16]~4_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~112_combout\);

-- Location: FF_X86_Y53_N13
\u_encoder|calc_res_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~112_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(2));

-- Location: FF_X86_Y53_N29
\u_alu|u_add|calc_res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[6]~29_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(6));

-- Location: LCCOMB_X86_Y53_N14
\u_encoder|calc_res_q~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~96_combout\ = (\u_alu|alu_done~3_combout\ & (((\u_alu|u_add|calc_res\(6) & !\u_encoder|calc_res_q[16]~4_combout\)))) # (!\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(2),
	datab => \u_alu|u_add|calc_res\(6),
	datac => \u_encoder|calc_res_q[16]~4_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~96_combout\);

-- Location: LCCOMB_X85_Y51_N6
\u_encoder|calc_res_q~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~99_combout\ = (\u_encoder|calc_res_q~96_combout\) # ((\u_encoder|calc_res_q~43_combout\ & \u_encoder|calc_res_q~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|calc_res_q~43_combout\,
	datac => \u_encoder|calc_res_q~98_combout\,
	datad => \u_encoder|calc_res_q~96_combout\,
	combout => \u_encoder|calc_res_q~99_combout\);

-- Location: FF_X85_Y51_N7
\u_encoder|calc_res_q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~99_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(6));

-- Location: FF_X86_Y52_N5
\u_alu|u_add|calc_res[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[10]~37_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(10));

-- Location: LCCOMB_X85_Y51_N0
\u_encoder|calc_res_q~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~80_combout\ = (\u_alu|alu_done~3_combout\ & (((\u_alu|u_add|calc_res\(10) & !\u_encoder|calc_res_q[16]~4_combout\)))) # (!\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(6),
	datab => \u_alu|u_add|calc_res\(10),
	datac => \u_alu|alu_done~3_combout\,
	datad => \u_encoder|calc_res_q[16]~4_combout\,
	combout => \u_encoder|calc_res_q~80_combout\);

-- Location: LCCOMB_X85_Y51_N4
\u_encoder|calc_res_q~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~83_combout\ = (\u_encoder|calc_res_q~80_combout\) # ((\u_encoder|calc_res_q~82_combout\ & \u_encoder|calc_res_q~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|calc_res_q~82_combout\,
	datac => \u_encoder|calc_res_q~43_combout\,
	datad => \u_encoder|calc_res_q~80_combout\,
	combout => \u_encoder|calc_res_q~83_combout\);

-- Location: FF_X85_Y51_N5
\u_encoder|calc_res_q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~83_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(10));

-- Location: FF_X86_Y52_N13
\u_alu|u_add|calc_res[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[14]~45_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(14));

-- Location: LCCOMB_X85_Y52_N14
\u_encoder|calc_res_q~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~64_combout\ = (\u_alu|alu_done~3_combout\ & (((\u_alu|u_add|calc_res\(14) & !\u_encoder|calc_res_q[16]~4_combout\)))) # (!\u_alu|alu_done~3_combout\ & (\u_encoder|calc_res_q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(10),
	datab => \u_alu|u_add|calc_res\(14),
	datac => \u_alu|alu_done~3_combout\,
	datad => \u_encoder|calc_res_q[16]~4_combout\,
	combout => \u_encoder|calc_res_q~64_combout\);

-- Location: LCCOMB_X85_Y52_N6
\u_encoder|calc_res_q~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~67_combout\ = (\u_encoder|calc_res_q~64_combout\) # ((\u_encoder|calc_res_q~66_combout\ & \u_encoder|calc_res_q~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_encoder|calc_res_q~66_combout\,
	datac => \u_encoder|calc_res_q~64_combout\,
	datad => \u_encoder|calc_res_q~43_combout\,
	combout => \u_encoder|calc_res_q~67_combout\);

-- Location: FF_X85_Y52_N7
\u_encoder|calc_res_q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~67_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(14));

-- Location: FF_X84_Y52_N19
\u_alu|u_booth|calc_res[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(2),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(18));

-- Location: LCCOMB_X84_Y51_N4
\u_alu|u_divider|Q_product~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~14_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(2))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|sum_Q\(2),
	datac => \u_decoder|src1\(2),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~14_combout\);

-- Location: FF_X84_Y51_N5
\u_alu|u_divider|Q_product[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(2));

-- Location: LCCOMB_X84_Y52_N18
\u_encoder|calc_res_q~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~50_combout\ = (\u_encoder|calc_res_q[23]~0_combout\ & (\u_encoder|calc_res_q[23]~1_combout\)) # (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|Q_product\(2)))) # 
-- (!\u_encoder|calc_res_q[23]~1_combout\ & (\u_alu|u_booth|calc_res\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~0_combout\,
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(18),
	datad => \u_alu|u_divider|Q_product\(2),
	combout => \u_encoder|calc_res_q~50_combout\);

-- Location: LCCOMB_X85_Y52_N28
\u_encoder|calc_res_q~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~51_combout\ = (\u_encoder|calc_res_q[23]~0_combout\ & ((\u_encoder|calc_res_q~50_combout\ & (\u_alu|u_shift_add_multi|calc_res\(18))) # (!\u_encoder|calc_res_q~50_combout\ & ((\u_alu|u_substraction|calc_res\(31)))))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & (((\u_encoder|calc_res_q~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(18),
	datab => \u_alu|u_substraction|calc_res\(31),
	datac => \u_encoder|calc_res_q[23]~0_combout\,
	datad => \u_encoder|calc_res_q~50_combout\,
	combout => \u_encoder|calc_res_q~51_combout\);

-- Location: LCCOMB_X85_Y52_N22
\u_encoder|calc_res_q~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~52_combout\ = (\u_encoder|calc_res_q\(14) & (((\u_encoder|calc_res_q~51_combout\ & \u_encoder|calc_res_q~6_combout\)) # (!\u_alu|alu_done~3_combout\))) # (!\u_encoder|calc_res_q\(14) & (\u_encoder|calc_res_q~51_combout\ & 
-- ((\u_encoder|calc_res_q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(14),
	datab => \u_encoder|calc_res_q~51_combout\,
	datac => \u_alu|alu_done~3_combout\,
	datad => \u_encoder|calc_res_q~6_combout\,
	combout => \u_encoder|calc_res_q~52_combout\);

-- Location: FF_X85_Y52_N23
\u_encoder|calc_res_q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~52_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(18));

-- Location: LCCOMB_X84_Y51_N28
\u_alu|u_divider|Q_product~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~10_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(6))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|sum_Q\(6),
	datac => \u_decoder|src1\(6),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~10_combout\);

-- Location: FF_X84_Y51_N29
\u_alu|u_divider|Q_product[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~10_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(6));

-- Location: FF_X87_Y51_N1
\u_alu|u_booth|calc_res[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(22));

-- Location: LCCOMB_X87_Y51_N0
\u_encoder|calc_res_q~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~36_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_divider|Q_product\(6)) # ((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_alu|u_booth|calc_res\(22) & 
-- !\u_encoder|calc_res_q[23]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_divider|Q_product\(6),
	datac => \u_alu|u_booth|calc_res\(22),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~36_combout\);

-- Location: LCCOMB_X85_Y52_N4
\u_encoder|calc_res_q~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~37_combout\ = (\u_encoder|calc_res_q[23]~0_combout\ & ((\u_encoder|calc_res_q~36_combout\ & (\u_alu|u_shift_add_multi|calc_res\(22))) # (!\u_encoder|calc_res_q~36_combout\ & ((\u_alu|u_substraction|calc_res\(31)))))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & (((\u_encoder|calc_res_q~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(22),
	datab => \u_alu|u_substraction|calc_res\(31),
	datac => \u_encoder|calc_res_q[23]~0_combout\,
	datad => \u_encoder|calc_res_q~36_combout\,
	combout => \u_encoder|calc_res_q~37_combout\);

-- Location: LCCOMB_X85_Y52_N10
\u_encoder|calc_res_q~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~38_combout\ = (\u_encoder|calc_res_q\(18) & (((\u_encoder|calc_res_q~37_combout\ & \u_encoder|calc_res_q~6_combout\)) # (!\u_alu|alu_done~3_combout\))) # (!\u_encoder|calc_res_q\(18) & (\u_encoder|calc_res_q~37_combout\ & 
-- ((\u_encoder|calc_res_q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(18),
	datab => \u_encoder|calc_res_q~37_combout\,
	datac => \u_alu|alu_done~3_combout\,
	datad => \u_encoder|calc_res_q~6_combout\,
	combout => \u_encoder|calc_res_q~38_combout\);

-- Location: FF_X85_Y52_N11
\u_encoder|calc_res_q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~38_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(22));

-- Location: LCCOMB_X88_Y52_N18
\u_encoder|calc_res_q~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~26_combout\ = (\u_encoder|calc_res_q~25_combout\ & ((\u_encoder|calc_res_q~6_combout\) # ((\u_encoder|calc_res_q\(22) & !\u_alu|alu_done~3_combout\)))) # (!\u_encoder|calc_res_q~25_combout\ & (((\u_encoder|calc_res_q\(22) & 
-- !\u_alu|alu_done~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~25_combout\,
	datab => \u_encoder|calc_res_q~6_combout\,
	datac => \u_encoder|calc_res_q\(22),
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~26_combout\);

-- Location: FF_X88_Y52_N19
\u_encoder|calc_res_q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~26_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(26));

-- Location: LCCOMB_X88_Y51_N10
\u_alu|u_divider|Q_product~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~2_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(14))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|sum_Q\(14),
	datac => \u_decoder|src1\(14),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~2_combout\);

-- Location: FF_X88_Y51_N11
\u_alu|u_divider|Q_product[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(14));

-- Location: FF_X88_Y52_N29
\u_alu|u_booth|calc_res[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(14),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(30));

-- Location: LCCOMB_X88_Y52_N30
\u_encoder|calc_res_q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~12_combout\ = (\u_encoder|calc_res_q[23]~0_combout\ & (((\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_encoder|calc_res_q[23]~1_combout\ & (\u_alu|u_divider|Q_product\(14))) # 
-- (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_alu|u_booth|calc_res\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Q_product\(14),
	datab => \u_alu|u_booth|calc_res\(30),
	datac => \u_encoder|calc_res_q[23]~0_combout\,
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~12_combout\);

-- Location: LCCOMB_X85_Y49_N4
\u_alu|u_shift_add_multi|sum_src1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~30_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(29) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_shift_add_multi|sum_src1\(29),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~30_combout\);

-- Location: FF_X85_Y49_N5
\u_alu|u_shift_add_multi|sum_src1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~30_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(30));

-- Location: LCCOMB_X86_Y49_N28
\u_alu|u_shift_add_multi|calc_res[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[30]~92_combout\ = ((\u_alu|u_shift_add_multi|calc_res\(30) $ (\u_alu|u_shift_add_multi|sum_src1\(30) $ (!\u_alu|u_shift_add_multi|calc_res[29]~91\)))) # (GND)
-- \u_alu|u_shift_add_multi|calc_res[30]~93\ = CARRY((\u_alu|u_shift_add_multi|calc_res\(30) & ((\u_alu|u_shift_add_multi|sum_src1\(30)) # (!\u_alu|u_shift_add_multi|calc_res[29]~91\))) # (!\u_alu|u_shift_add_multi|calc_res\(30) & 
-- (\u_alu|u_shift_add_multi|sum_src1\(30) & !\u_alu|u_shift_add_multi|calc_res[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(30),
	datab => \u_alu|u_shift_add_multi|sum_src1\(30),
	datad => VCC,
	cin => \u_alu|u_shift_add_multi|calc_res[29]~91\,
	combout => \u_alu|u_shift_add_multi|calc_res[30]~92_combout\,
	cout => \u_alu|u_shift_add_multi|calc_res[30]~93\);

-- Location: FF_X86_Y49_N29
\u_alu|u_shift_add_multi|calc_res[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[30]~92_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(30));

-- Location: LCCOMB_X88_Y52_N0
\u_encoder|calc_res_q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~13_combout\ = (\u_encoder|calc_res_q~12_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(30)) # ((!\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q~12_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\ & 
-- \u_alu|u_substraction|calc_res\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~12_combout\,
	datab => \u_alu|u_shift_add_multi|calc_res\(30),
	datac => \u_encoder|calc_res_q[23]~0_combout\,
	datad => \u_alu|u_substraction|calc_res\(31),
	combout => \u_encoder|calc_res_q~13_combout\);

-- Location: LCCOMB_X88_Y52_N16
\u_encoder|calc_res_q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~14_combout\ = (\u_alu|alu_done~3_combout\ & (((\u_encoder|calc_res_q~6_combout\ & \u_encoder|calc_res_q~13_combout\)))) # (!\u_alu|alu_done~3_combout\ & ((\u_encoder|calc_res_q\(26)) # ((\u_encoder|calc_res_q~6_combout\ & 
-- \u_encoder|calc_res_q~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|alu_done~3_combout\,
	datab => \u_encoder|calc_res_q\(26),
	datac => \u_encoder|calc_res_q~6_combout\,
	datad => \u_encoder|calc_res_q~13_combout\,
	combout => \u_encoder|calc_res_q~14_combout\);

-- Location: FF_X88_Y52_N17
\u_encoder|calc_res_q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~14_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(30));

-- Location: LCCOMB_X88_Y51_N4
\u_alu|u_divider|Q_product~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~3_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(15))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|sum_Q\(15),
	datab => \u_alu|u_divider|c_state.IDLE~q\,
	datac => \u_decoder|src1\(15),
	combout => \u_alu|u_divider|Q_product~3_combout\);

-- Location: FF_X88_Y51_N5
\u_alu|u_divider|Q_product[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(15));

-- Location: LCCOMB_X88_Y52_N28
\u_encoder|calc_res_q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~15_combout\ = (\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_substraction|calc_res\(31)) # ((\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q[23]~0_combout\ & (((\u_alu|u_booth|calc_res\(30) & 
-- !\u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(31),
	datab => \u_encoder|calc_res_q[23]~0_combout\,
	datac => \u_alu|u_booth|calc_res\(30),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~15_combout\);

-- Location: LCCOMB_X85_Y49_N14
\u_alu|u_shift_add_multi|sum_src1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|sum_src1~31_combout\ = (\u_alu|u_shift_add_multi|sum_src1\(30) & \u_alu|u_shift_add_multi|c_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_alu|u_shift_add_multi|sum_src1\(30),
	datad => \u_alu|u_shift_add_multi|c_state.IDLE~q\,
	combout => \u_alu|u_shift_add_multi|sum_src1~31_combout\);

-- Location: FF_X85_Y49_N15
\u_alu|u_shift_add_multi|sum_src1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|sum_src1~31_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|sum_src1\(31));

-- Location: LCCOMB_X86_Y49_N30
\u_alu|u_shift_add_multi|calc_res[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_shift_add_multi|calc_res[31]~94_combout\ = \u_alu|u_shift_add_multi|calc_res\(31) $ (\u_alu|u_shift_add_multi|calc_res[30]~93\ $ (\u_alu|u_shift_add_multi|sum_src1\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(31),
	datad => \u_alu|u_shift_add_multi|sum_src1\(31),
	cin => \u_alu|u_shift_add_multi|calc_res[30]~93\,
	combout => \u_alu|u_shift_add_multi|calc_res[31]~94_combout\);

-- Location: FF_X86_Y49_N31
\u_alu|u_shift_add_multi|calc_res[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_shift_add_multi|calc_res[31]~94_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_shift_add_multi|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_shift_add_multi|calc_res\(31));

-- Location: LCCOMB_X88_Y52_N12
\u_encoder|calc_res_q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~16_combout\ = (\u_encoder|calc_res_q~15_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(31)) # (!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~15_combout\ & (\u_alu|u_divider|Q_product\(15) & 
-- ((\u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Q_product\(15),
	datab => \u_encoder|calc_res_q~15_combout\,
	datac => \u_alu|u_shift_add_multi|calc_res\(31),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~16_combout\);

-- Location: LCCOMB_X89_Y51_N4
\u_alu|u_divider|Q_product~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~7_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(11))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|sum_Q\(11),
	datac => \u_decoder|src1\(11),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~7_combout\);

-- Location: FF_X89_Y51_N5
\u_alu|u_divider|Q_product[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(11));

-- Location: FF_X88_Y52_N5
\u_alu|u_booth|calc_res[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(11),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(27));

-- Location: LCCOMB_X88_Y52_N4
\u_encoder|calc_res_q~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~27_combout\ = (\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_substraction|calc_res\(31)) # ((\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q[23]~0_combout\ & (((\u_alu|u_booth|calc_res\(27) & 
-- !\u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(31),
	datab => \u_encoder|calc_res_q[23]~0_combout\,
	datac => \u_alu|u_booth|calc_res\(27),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~27_combout\);

-- Location: LCCOMB_X88_Y52_N6
\u_encoder|calc_res_q~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~28_combout\ = (\u_encoder|calc_res_q~27_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(27)) # (!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~27_combout\ & (\u_alu|u_divider|Q_product\(11) & 
-- ((\u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|Q_product\(11),
	datab => \u_alu|u_shift_add_multi|calc_res\(27),
	datac => \u_encoder|calc_res_q~27_combout\,
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~28_combout\);

-- Location: FF_X84_Y52_N29
\u_alu|u_booth|calc_res[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(19));

-- Location: LCCOMB_X84_Y52_N28
\u_encoder|calc_res_q~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~53_combout\ = (\u_encoder|calc_res_q[23]~0_combout\ & ((\u_encoder|calc_res_q[23]~1_combout\) # ((\u_alu|u_substraction|calc_res\(31))))) # (!\u_encoder|calc_res_q[23]~0_combout\ & (!\u_encoder|calc_res_q[23]~1_combout\ & 
-- (\u_alu|u_booth|calc_res\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~0_combout\,
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(19),
	datad => \u_alu|u_substraction|calc_res\(31),
	combout => \u_encoder|calc_res_q~53_combout\);

-- Location: LCCOMB_X84_Y51_N30
\u_alu|u_divider|Q_product~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~15_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & ((\u_alu|u_divider|sum_Q\(3)))) # (!\u_alu|u_divider|c_state.IDLE~q\ & (\u_decoder|src1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_divider|c_state.IDLE~q\,
	datab => \u_decoder|src1\(3),
	datac => \u_alu|u_divider|sum_Q\(3),
	combout => \u_alu|u_divider|Q_product~15_combout\);

-- Location: FF_X84_Y51_N31
\u_alu|u_divider|Q_product[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~15_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(3));

-- Location: LCCOMB_X86_Y51_N26
\u_encoder|calc_res_q~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~54_combout\ = (\u_encoder|calc_res_q~53_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(19)) # ((!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~53_combout\ & (((\u_alu|u_divider|Q_product\(3) & 
-- \u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~53_combout\,
	datab => \u_alu|u_shift_add_multi|calc_res\(19),
	datac => \u_alu|u_divider|Q_product\(3),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~54_combout\);

-- Location: FF_X84_Y52_N13
\u_alu|u_substraction|calc_res[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[15]~48_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(15));

-- Location: FF_X84_Y52_N25
\u_alu|u_booth|calc_res[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(15),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(15));

-- Location: LCCOMB_X84_Y52_N24
\u_encoder|calc_res_q~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~69_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(15))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(15),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(15),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~69_combout\);

-- Location: FF_X85_Y53_N23
\u_alu|u_divider|R_product[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(15),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(15));

-- Location: LCCOMB_X85_Y53_N22
\u_encoder|calc_res_q~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~70_combout\ = (\u_encoder|calc_res_q~69_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(15)) # ((!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~69_combout\ & (((\u_alu|u_divider|R_product\(15) & 
-- \u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~69_combout\,
	datab => \u_alu|u_shift_add_multi|calc_res\(15),
	datac => \u_alu|u_divider|R_product\(15),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~70_combout\);

-- Location: FF_X86_Y52_N15
\u_alu|u_add|calc_res[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[15]~47_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(15));

-- Location: FF_X86_Y52_N7
\u_alu|u_add|calc_res[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[11]~39_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(11));

-- Location: FF_X86_Y53_N31
\u_alu|u_add|calc_res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[7]~31_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(7));

-- Location: FF_X85_Y54_N9
\u_alu|u_divider|R_product[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(3));

-- Location: FF_X84_Y53_N21
\u_alu|u_substraction|calc_res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[3]~24_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(3));

-- Location: FF_X84_Y54_N13
\u_alu|u_booth|calc_res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(3));

-- Location: LCCOMB_X84_Y54_N12
\u_encoder|calc_res_q~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~113_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(3))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(3),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(3),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~113_combout\);

-- Location: LCCOMB_X85_Y54_N8
\u_encoder|calc_res_q~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~114_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q~113_combout\ & (\u_alu|u_shift_add_multi|calc_res\(3))) # (!\u_encoder|calc_res_q~113_combout\ & ((\u_alu|u_divider|R_product\(3)))))) # 
-- (!\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_shift_add_multi|calc_res\(3),
	datac => \u_alu|u_divider|R_product\(3),
	datad => \u_encoder|calc_res_q~113_combout\,
	combout => \u_encoder|calc_res_q~114_combout\);

-- Location: FF_X86_Y53_N23
\u_alu|u_add|calc_res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_add|calc_res[3]~23_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_add|calc_res\(3));

-- Location: LCCOMB_X86_Y53_N0
\u_encoder|calc_res_q~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~115_combout\ = (\u_alu|alu_done~3_combout\ & ((\u_encoder|calc_res_q[16]~4_combout\ & (\u_encoder|calc_res_q~114_combout\)) # (!\u_encoder|calc_res_q[16]~4_combout\ & ((\u_alu|u_add|calc_res\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~114_combout\,
	datab => \u_encoder|calc_res_q[16]~4_combout\,
	datac => \u_alu|u_add|calc_res\(3),
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~115_combout\);

-- Location: FF_X86_Y53_N1
\u_encoder|calc_res_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~115_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(3));

-- Location: LCCOMB_X86_Y53_N2
\u_encoder|calc_res_q~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~100_combout\ = (\u_alu|alu_done~3_combout\ & (\u_alu|u_add|calc_res\(7) & ((!\u_encoder|calc_res_q[16]~4_combout\)))) # (!\u_alu|alu_done~3_combout\ & (((\u_encoder|calc_res_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_add|calc_res\(7),
	datab => \u_encoder|calc_res_q\(3),
	datac => \u_encoder|calc_res_q[16]~4_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~100_combout\);

-- Location: FF_X84_Y53_N29
\u_alu|u_substraction|calc_res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[7]~32_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(7));

-- Location: FF_X84_Y54_N1
\u_alu|u_booth|calc_res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(7));

-- Location: LCCOMB_X84_Y54_N0
\u_encoder|calc_res_q~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~101_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(7))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(7),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(7),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~101_combout\);

-- Location: FF_X87_Y55_N7
\u_alu|u_divider|R_product[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(7));

-- Location: LCCOMB_X87_Y55_N6
\u_encoder|calc_res_q~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~102_combout\ = (\u_encoder|calc_res_q~101_combout\ & (((\u_alu|u_shift_add_multi|calc_res\(7))) # (!\u_encoder|calc_res_q[23]~1_combout\))) # (!\u_encoder|calc_res_q~101_combout\ & (\u_encoder|calc_res_q[23]~1_combout\ & 
-- (\u_alu|u_divider|R_product\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~101_combout\,
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_divider|R_product\(7),
	datad => \u_alu|u_shift_add_multi|calc_res\(7),
	combout => \u_encoder|calc_res_q~102_combout\);

-- Location: LCCOMB_X86_Y51_N8
\u_encoder|calc_res_q~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~103_combout\ = (\u_encoder|calc_res_q~100_combout\) # ((\u_encoder|calc_res_q~43_combout\ & \u_encoder|calc_res_q~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~43_combout\,
	datac => \u_encoder|calc_res_q~100_combout\,
	datad => \u_encoder|calc_res_q~102_combout\,
	combout => \u_encoder|calc_res_q~103_combout\);

-- Location: FF_X86_Y51_N9
\u_encoder|calc_res_q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~103_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(7));

-- Location: LCCOMB_X86_Y51_N18
\u_encoder|calc_res_q~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~84_combout\ = (\u_alu|alu_done~3_combout\ & (\u_alu|u_add|calc_res\(11) & ((!\u_encoder|calc_res_q[16]~4_combout\)))) # (!\u_alu|alu_done~3_combout\ & (((\u_encoder|calc_res_q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_add|calc_res\(11),
	datab => \u_alu|alu_done~3_combout\,
	datac => \u_encoder|calc_res_q\(7),
	datad => \u_encoder|calc_res_q[16]~4_combout\,
	combout => \u_encoder|calc_res_q~84_combout\);

-- Location: FF_X84_Y52_N5
\u_alu|u_substraction|calc_res[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_substraction|calc_res[11]~40_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_add|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_substraction|calc_res\(11));

-- Location: FF_X84_Y52_N21
\u_alu|u_booth|calc_res[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|sum_Q\(11),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(11));

-- Location: LCCOMB_X84_Y52_N20
\u_encoder|calc_res_q~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~85_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(11))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_substraction|calc_res\(11),
	datab => \u_encoder|calc_res_q[23]~1_combout\,
	datac => \u_alu|u_booth|calc_res\(11),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~85_combout\);

-- Location: FF_X85_Y53_N21
\u_alu|u_divider|R_product[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_divider|A\(11),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_divider|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|R_product\(11));

-- Location: LCCOMB_X85_Y53_N20
\u_encoder|calc_res_q~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~86_combout\ = (\u_encoder|calc_res_q~85_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(11)) # ((!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~85_combout\ & (((\u_alu|u_divider|R_product\(11) & 
-- \u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~85_combout\,
	datab => \u_alu|u_shift_add_multi|calc_res\(11),
	datac => \u_alu|u_divider|R_product\(11),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~86_combout\);

-- Location: LCCOMB_X86_Y51_N2
\u_encoder|calc_res_q~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~87_combout\ = (\u_encoder|calc_res_q~84_combout\) # ((\u_encoder|calc_res_q~43_combout\ & \u_encoder|calc_res_q~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~43_combout\,
	datab => \u_encoder|calc_res_q~84_combout\,
	datad => \u_encoder|calc_res_q~86_combout\,
	combout => \u_encoder|calc_res_q~87_combout\);

-- Location: FF_X86_Y51_N3
\u_encoder|calc_res_q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~87_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(11));

-- Location: LCCOMB_X86_Y51_N20
\u_encoder|calc_res_q~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~68_combout\ = (\u_alu|alu_done~3_combout\ & (!\u_encoder|calc_res_q[16]~4_combout\ & (\u_alu|u_add|calc_res\(15)))) # (!\u_alu|alu_done~3_combout\ & (((\u_encoder|calc_res_q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[16]~4_combout\,
	datab => \u_alu|u_add|calc_res\(15),
	datac => \u_encoder|calc_res_q\(11),
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~68_combout\);

-- Location: LCCOMB_X86_Y51_N28
\u_encoder|calc_res_q~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~71_combout\ = (\u_encoder|calc_res_q~68_combout\) # ((\u_encoder|calc_res_q~43_combout\ & \u_encoder|calc_res_q~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~43_combout\,
	datac => \u_encoder|calc_res_q~70_combout\,
	datad => \u_encoder|calc_res_q~68_combout\,
	combout => \u_encoder|calc_res_q~71_combout\);

-- Location: FF_X86_Y51_N29
\u_encoder|calc_res_q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~71_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(15));

-- Location: LCCOMB_X86_Y51_N6
\u_encoder|calc_res_q~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~55_combout\ = (\u_encoder|calc_res_q~54_combout\ & ((\u_encoder|calc_res_q~6_combout\) # ((\u_encoder|calc_res_q\(15) & !\u_alu|alu_done~3_combout\)))) # (!\u_encoder|calc_res_q~54_combout\ & (\u_encoder|calc_res_q\(15) & 
-- ((!\u_alu|alu_done~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~54_combout\,
	datab => \u_encoder|calc_res_q\(15),
	datac => \u_encoder|calc_res_q~6_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~55_combout\);

-- Location: FF_X86_Y51_N7
\u_encoder|calc_res_q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~55_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(19));

-- Location: FF_X87_Y51_N19
\u_alu|u_booth|calc_res[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_alu|u_booth|A\(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \u_alu|u_booth|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_booth|calc_res\(23));

-- Location: LCCOMB_X87_Y51_N18
\u_encoder|calc_res_q~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~39_combout\ = (\u_encoder|calc_res_q[23]~1_combout\ & (((\u_encoder|calc_res_q[23]~0_combout\)))) # (!\u_encoder|calc_res_q[23]~1_combout\ & ((\u_encoder|calc_res_q[23]~0_combout\ & (\u_alu|u_substraction|calc_res\(31))) # 
-- (!\u_encoder|calc_res_q[23]~0_combout\ & ((\u_alu|u_booth|calc_res\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q[23]~1_combout\,
	datab => \u_alu|u_substraction|calc_res\(31),
	datac => \u_alu|u_booth|calc_res\(23),
	datad => \u_encoder|calc_res_q[23]~0_combout\,
	combout => \u_encoder|calc_res_q~39_combout\);

-- Location: LCCOMB_X84_Y51_N14
\u_alu|u_divider|Q_product~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_alu|u_divider|Q_product~11_combout\ = (\u_alu|u_divider|c_state.IDLE~q\ & (\u_alu|u_divider|sum_Q\(7))) # (!\u_alu|u_divider|c_state.IDLE~q\ & ((\u_decoder|src1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_alu|u_divider|sum_Q\(7),
	datac => \u_decoder|src1\(7),
	datad => \u_alu|u_divider|c_state.IDLE~q\,
	combout => \u_alu|u_divider|Q_product~11_combout\);

-- Location: FF_X84_Y51_N15
\u_alu|u_divider|Q_product[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alu|u_divider|Q_product~11_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_alu|u_divider|ALT_INV_c_state.STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alu|u_divider|Q_product\(7));

-- Location: LCCOMB_X86_Y51_N12
\u_encoder|calc_res_q~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~40_combout\ = (\u_encoder|calc_res_q~39_combout\ & ((\u_alu|u_shift_add_multi|calc_res\(23)) # ((!\u_encoder|calc_res_q[23]~1_combout\)))) # (!\u_encoder|calc_res_q~39_combout\ & (((\u_alu|u_divider|Q_product\(7) & 
-- \u_encoder|calc_res_q[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_alu|u_shift_add_multi|calc_res\(23),
	datab => \u_encoder|calc_res_q~39_combout\,
	datac => \u_alu|u_divider|Q_product\(7),
	datad => \u_encoder|calc_res_q[23]~1_combout\,
	combout => \u_encoder|calc_res_q~40_combout\);

-- Location: LCCOMB_X86_Y51_N0
\u_encoder|calc_res_q~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~41_combout\ = (\u_encoder|calc_res_q\(19) & (((\u_encoder|calc_res_q~6_combout\ & \u_encoder|calc_res_q~40_combout\)) # (!\u_alu|alu_done~3_combout\))) # (!\u_encoder|calc_res_q\(19) & (((\u_encoder|calc_res_q~6_combout\ & 
-- \u_encoder|calc_res_q~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(19),
	datab => \u_alu|alu_done~3_combout\,
	datac => \u_encoder|calc_res_q~6_combout\,
	datad => \u_encoder|calc_res_q~40_combout\,
	combout => \u_encoder|calc_res_q~41_combout\);

-- Location: FF_X86_Y51_N1
\u_encoder|calc_res_q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~41_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(23));

-- Location: LCCOMB_X88_Y52_N22
\u_encoder|calc_res_q~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~29_combout\ = (\u_encoder|calc_res_q~28_combout\ & ((\u_encoder|calc_res_q~6_combout\) # ((\u_encoder|calc_res_q\(23) & !\u_alu|alu_done~3_combout\)))) # (!\u_encoder|calc_res_q~28_combout\ & (\u_encoder|calc_res_q\(23) & 
-- ((!\u_alu|alu_done~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~28_combout\,
	datab => \u_encoder|calc_res_q\(23),
	datac => \u_encoder|calc_res_q~6_combout\,
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~29_combout\);

-- Location: FF_X88_Y52_N23
\u_encoder|calc_res_q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~29_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(27));

-- Location: LCCOMB_X88_Y52_N10
\u_encoder|calc_res_q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|calc_res_q~17_combout\ = (\u_encoder|calc_res_q~16_combout\ & ((\u_encoder|calc_res_q~6_combout\) # ((\u_encoder|calc_res_q\(27) & !\u_alu|alu_done~3_combout\)))) # (!\u_encoder|calc_res_q~16_combout\ & (((\u_encoder|calc_res_q\(27) & 
-- !\u_alu|alu_done~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q~16_combout\,
	datab => \u_encoder|calc_res_q~6_combout\,
	datac => \u_encoder|calc_res_q\(27),
	datad => \u_alu|alu_done~3_combout\,
	combout => \u_encoder|calc_res_q~17_combout\);

-- Location: FF_X88_Y52_N11
\u_encoder|calc_res_q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|calc_res_q~17_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|calc_res_q[23]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|calc_res_q\(31));

-- Location: LCCOMB_X92_Y51_N4
\u_encoder|tx_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|tx_data~0_combout\ = \u_encoder|calc_res_q\(28) $ (((\u_encoder|calc_res_q\(31) & ((\u_encoder|calc_res_q\(29)) # (\u_encoder|calc_res_q\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(29),
	datab => \u_encoder|calc_res_q\(28),
	datac => \u_encoder|calc_res_q\(30),
	datad => \u_encoder|calc_res_q\(31),
	combout => \u_encoder|tx_data~0_combout\);

-- Location: FF_X92_Y51_N5
\u_encoder|tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|tx_data~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|tx_data\(0));

-- Location: LCCOMB_X92_Y51_N28
\u_encoder|tx_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|tx_data~4_combout\ = ((!\u_encoder|calc_res_q\(29) & !\u_encoder|calc_res_q\(30))) # (!\u_encoder|calc_res_q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(29),
	datac => \u_encoder|calc_res_q\(30),
	datad => \u_encoder|calc_res_q\(31),
	combout => \u_encoder|tx_data~4_combout\);

-- Location: FF_X92_Y51_N29
\u_encoder|tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|tx_data~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|tx_data\(5));

-- Location: LCCOMB_X92_Y51_N30
\u_encoder|tx_data[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|tx_data[6]~5_combout\ = !\u_encoder|tx_data~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_encoder|tx_data~4_combout\,
	combout => \u_encoder|tx_data[6]~5_combout\);

-- Location: FF_X92_Y51_N31
\u_encoder|tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|tx_data[6]~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|tx_data\(6));

-- Location: LCCOMB_X92_Y52_N2
\u_uart|u_tx|tx_data_q[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|tx_data_q[4]~1_combout\ = (!\u_uart|u_tx|c_state.START~q\ & ((\u_uart|u_tx|Equal0~4_combout\) # (!\u_uart|u_tx|c_state.DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|c_state.DATA~q\,
	datac => \u_uart|u_tx|c_state.START~q\,
	datad => \u_uart|u_tx|Equal0~4_combout\,
	combout => \u_uart|u_tx|tx_data_q[4]~1_combout\);

-- Location: LCCOMB_X92_Y52_N30
\u_uart|u_tx|tx_data_q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|tx_data_q~7_combout\ = (\u_encoder|tx_data\(6) & ((\u_uart|u_tx|c_state.START~q\) # ((\u_uart|u_tx|tx_data_q\(6) & \u_uart|u_tx|tx_data_q[4]~1_combout\)))) # (!\u_encoder|tx_data\(6) & (((\u_uart|u_tx|tx_data_q\(6) & 
-- \u_uart|u_tx|tx_data_q[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|tx_data\(6),
	datab => \u_uart|u_tx|c_state.START~q\,
	datac => \u_uart|u_tx|tx_data_q\(6),
	datad => \u_uart|u_tx|tx_data_q[4]~1_combout\,
	combout => \u_uart|u_tx|tx_data_q~7_combout\);

-- Location: FF_X92_Y52_N31
\u_uart|u_tx|tx_data_q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|tx_data_q~7_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|tx_data_q\(6));

-- Location: LCCOMB_X92_Y52_N28
\u_uart|u_tx|tx_data_q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|tx_data_q~6_combout\ = (\u_uart|u_tx|c_state.START~q\ & ((\u_encoder|tx_data\(5)))) # (!\u_uart|u_tx|c_state.START~q\ & (\u_uart|u_tx|tx_data_q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|tx_data_q\(6),
	datab => \u_uart|u_tx|c_state.START~q\,
	datac => \u_encoder|tx_data\(5),
	combout => \u_uart|u_tx|tx_data_q~6_combout\);

-- Location: FF_X92_Y52_N29
\u_uart|u_tx|tx_data_q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|tx_data_q~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|ALT_INV_tx_data_q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|tx_data_q\(5));

-- Location: LCCOMB_X92_Y52_N26
\u_uart|u_tx|tx_data_q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|tx_data_q~5_combout\ = (\u_uart|u_tx|c_state.START~q\ & (\u_encoder|tx_data\(5))) # (!\u_uart|u_tx|c_state.START~q\ & ((\u_uart|u_tx|tx_data_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|tx_data\(5),
	datab => \u_uart|u_tx|tx_data_q\(5),
	datac => \u_uart|u_tx|c_state.START~q\,
	combout => \u_uart|u_tx|tx_data_q~5_combout\);

-- Location: FF_X92_Y52_N27
\u_uart|u_tx|tx_data_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|tx_data_q~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|ALT_INV_tx_data_q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|tx_data_q\(4));

-- Location: LCCOMB_X92_Y51_N2
\u_encoder|tx_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|tx_data~3_combout\ = (!\u_encoder|calc_res_q\(29) & (!\u_encoder|calc_res_q\(30) & \u_encoder|calc_res_q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(29),
	datac => \u_encoder|calc_res_q\(30),
	datad => \u_encoder|calc_res_q\(31),
	combout => \u_encoder|tx_data~3_combout\);

-- Location: FF_X92_Y51_N3
\u_encoder|tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|tx_data~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|tx_data\(3));

-- Location: LCCOMB_X92_Y52_N24
\u_uart|u_tx|tx_data_q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|tx_data_q~4_combout\ = (\u_uart|u_tx|c_state.START~q\ & ((\u_encoder|tx_data\(3)))) # (!\u_uart|u_tx|c_state.START~q\ & (\u_uart|u_tx|tx_data_q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|tx_data_q\(4),
	datab => \u_encoder|tx_data\(3),
	datac => \u_uart|u_tx|c_state.START~q\,
	combout => \u_uart|u_tx|tx_data_q~4_combout\);

-- Location: FF_X92_Y52_N25
\u_uart|u_tx|tx_data_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|tx_data_q~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|ALT_INV_tx_data_q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|tx_data_q\(3));

-- Location: LCCOMB_X92_Y51_N8
\u_encoder|tx_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|tx_data~2_combout\ = (\u_encoder|calc_res_q\(30) & ((\u_encoder|calc_res_q\(29)) # ((\u_encoder|calc_res_q\(28)) # (!\u_encoder|calc_res_q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(29),
	datab => \u_encoder|calc_res_q\(28),
	datac => \u_encoder|calc_res_q\(30),
	datad => \u_encoder|calc_res_q\(31),
	combout => \u_encoder|tx_data~2_combout\);

-- Location: FF_X92_Y51_N9
\u_encoder|tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|tx_data~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|tx_data\(2));

-- Location: LCCOMB_X92_Y52_N14
\u_uart|u_tx|tx_data_q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|tx_data_q~3_combout\ = (\u_uart|u_tx|c_state.START~q\ & ((\u_encoder|tx_data\(2)))) # (!\u_uart|u_tx|c_state.START~q\ & (\u_uart|u_tx|tx_data_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|tx_data_q\(3),
	datac => \u_uart|u_tx|c_state.START~q\,
	datad => \u_encoder|tx_data\(2),
	combout => \u_uart|u_tx|tx_data_q~3_combout\);

-- Location: FF_X92_Y52_N15
\u_uart|u_tx|tx_data_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|tx_data_q~3_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|ALT_INV_tx_data_q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|tx_data_q\(2));

-- Location: LCCOMB_X92_Y51_N22
\u_encoder|tx_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_encoder|tx_data~1_combout\ = (\u_encoder|calc_res_q\(29) & ((\u_encoder|calc_res_q\(28)) # ((!\u_encoder|calc_res_q\(31))))) # (!\u_encoder|calc_res_q\(29) & (!\u_encoder|calc_res_q\(28) & (\u_encoder|calc_res_q\(30) & \u_encoder|calc_res_q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|calc_res_q\(29),
	datab => \u_encoder|calc_res_q\(28),
	datac => \u_encoder|calc_res_q\(30),
	datad => \u_encoder|calc_res_q\(31),
	combout => \u_encoder|tx_data~1_combout\);

-- Location: FF_X92_Y51_N23
\u_encoder|tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_encoder|tx_data~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_encoder|c_state.DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_encoder|tx_data\(1));

-- Location: LCCOMB_X92_Y52_N16
\u_uart|u_tx|tx_data_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|tx_data_q~2_combout\ = (\u_uart|u_tx|c_state.START~q\ & ((\u_encoder|tx_data\(1)))) # (!\u_uart|u_tx|c_state.START~q\ & (\u_uart|u_tx|tx_data_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart|u_tx|tx_data_q\(2),
	datac => \u_uart|u_tx|c_state.START~q\,
	datad => \u_encoder|tx_data\(1),
	combout => \u_uart|u_tx|tx_data_q~2_combout\);

-- Location: FF_X92_Y52_N17
\u_uart|u_tx|tx_data_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|tx_data_q~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|ALT_INV_tx_data_q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|tx_data_q\(1));

-- Location: LCCOMB_X92_Y52_N8
\u_uart|u_tx|tx_data_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|tx_data_q~0_combout\ = (\u_uart|u_tx|c_state.START~q\ & (\u_encoder|tx_data\(0))) # (!\u_uart|u_tx|c_state.START~q\ & ((\u_uart|u_tx|tx_data_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_encoder|tx_data\(0),
	datab => \u_uart|u_tx|tx_data_q\(1),
	datac => \u_uart|u_tx|c_state.START~q\,
	combout => \u_uart|u_tx|tx_data_q~0_combout\);

-- Location: FF_X92_Y52_N9
\u_uart|u_tx|tx_data_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|tx_data_q~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \u_uart|u_tx|ALT_INV_tx_data_q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|tx_data_q\(0));

-- Location: LCCOMB_X92_Y52_N10
\u_uart|u_tx|txd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|txd~0_combout\ = (\u_uart|u_tx|c_state.DATA~q\ & ((\u_uart|u_tx|Equal0~4_combout\ & (!\u_uart|u_tx|txd~q\)) # (!\u_uart|u_tx|Equal0~4_combout\ & ((\u_uart|u_tx|tx_data_q\(0)))))) # (!\u_uart|u_tx|c_state.DATA~q\ & (\u_uart|u_tx|txd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|c_state.DATA~q\,
	datab => \u_uart|u_tx|txd~q\,
	datac => \u_uart|u_tx|tx_data_q\(0),
	datad => \u_uart|u_tx|Equal0~4_combout\,
	combout => \u_uart|u_tx|txd~0_combout\);

-- Location: LCCOMB_X92_Y52_N0
\u_uart|u_tx|txd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_uart|u_tx|txd~1_combout\ = (\u_uart|u_tx|c_state.START~q\) # ((\u_uart|u_tx|txd~0_combout\ & (!\u_uart|u_tx|c_state.DATA~q\ & !\u_uart|u_tx|c_state.STOP~q\)) # (!\u_uart|u_tx|txd~0_combout\ & (\u_uart|u_tx|c_state.DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart|u_tx|txd~0_combout\,
	datab => \u_uart|u_tx|c_state.START~q\,
	datac => \u_uart|u_tx|c_state.DATA~q\,
	datad => \u_uart|u_tx|c_state.STOP~q\,
	combout => \u_uart|u_tx|txd~1_combout\);

-- Location: FF_X92_Y52_N1
\u_uart|u_tx|txd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart|u_tx|txd~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart|u_tx|txd~q\);

ww_txd <= \txd~output_o\;
END structure;


