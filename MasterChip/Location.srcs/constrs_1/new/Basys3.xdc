## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clkin]
set_property IOSTANDARD LVCMOS33 [get_ports clkin]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clkin]

## Switches
#set_property PACKAGE_PIN V17 [get_ports key2]
#set_property IOSTANDARD LVCMOS33 [get_ports key2]
set_property PACKAGE_PIN V16 [get_ports key1]
set_property IOSTANDARD LVCMOS33 [get_ports key1]
set_property PACKAGE_PIN W16 [get_ports send_req]
set_property IOSTANDARD LVCMOS33 [get_ports send_req]
set_property PACKAGE_PIN W17 [get_ports key3]
set_property IOSTANDARD LVCMOS33 [get_ports key3]
#set_property PACKAGE_PIN W15 [get_ports {sw[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
#set_property PACKAGE_PIN V15 [get_ports {sw[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
#set_property PACKAGE_PIN W14 [get_ports {sw[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
#set_property PACKAGE_PIN W13 [get_ports {sw[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
#set_property PACKAGE_PIN V2 [get_ports {sw[8]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[8]}]
#set_property PACKAGE_PIN T3 [get_ports {sw[9]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
#set_property PACKAGE_PIN T2 [get_ports {sw[10]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
#set_property PACKAGE_PIN R3 [get_ports {sw[11]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
#set_property PACKAGE_PIN W2 [get_ports {sw[12]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
#set_property PACKAGE_PIN U1 [get_ports {sw[13]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[13]}]
#set_property PACKAGE_PIN T1 [get_ports {sw[14]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[14]}]
#set_property PACKAGE_PIN R2 [get_ports {sw[15]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[15]}]


## LEDs
set_property PACKAGE_PIN U16 [get_ports fifo_empty]
set_property IOSTANDARD LVCMOS33 [get_ports fifo_empty]
set_property PACKAGE_PIN E19 [get_ports tx_busy]
set_property IOSTANDARD LVCMOS33 [get_ports tx_busy]
set_property PACKAGE_PIN U19 [get_ports fifo_full]
set_property IOSTANDARD LVCMOS33 [get_ports fifo_full]
#set_property PACKAGE_PIN V19 [get_ports {led[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
#set_property PACKAGE_PIN W18 [get_ports {led[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
#set_property PACKAGE_PIN U15 [get_ports {led[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
#set_property PACKAGE_PIN U14 [get_ports {led[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
#set_property PACKAGE_PIN V14 [get_ports {led[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
#set_property PACKAGE_PIN V13 [get_ports {led[8]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[8]}]
#set_property PACKAGE_PIN V3 [get_ports {led[9]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[9]}]
#set_property PACKAGE_PIN W3 [get_ports {led[10]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[10]}]
#set_property PACKAGE_PIN U3 [get_ports {led[11]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[11]}]
#set_property PACKAGE_PIN P3 [get_ports {led[12]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[12]}]
#set_property PACKAGE_PIN N3 [get_ports {led[13]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[13]}]
#set_property PACKAGE_PIN P1 [get_ports {led[14]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[14]}]
#set_property PACKAGE_PIN L1 [get_ports {led[15]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[15]}]


##7 segment display
#set_property PACKAGE_PIN W7 [get_ports {seg[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
#set_property PACKAGE_PIN W6 [get_ports {seg[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
#set_property PACKAGE_PIN U8 [get_ports {seg[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
#set_property PACKAGE_PIN V8 [get_ports {seg[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
#set_property PACKAGE_PIN U5 [get_ports {seg[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
#set_property PACKAGE_PIN V5 [get_ports {seg[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
#set_property PACKAGE_PIN U7 [get_ports {seg[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

#set_property PACKAGE_PIN V7 [get_ports dp]
#set_property IOSTANDARD LVCMOS33 [get_ports dp]

#set_property PACKAGE_PIN U2 [get_ports {an[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
#set_property PACKAGE_PIN U4 [get_ports {an[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
#set_property PACKAGE_PIN V4 [get_ports {an[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
#set_property PACKAGE_PIN W4 [get_ports {an[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]


##Buttons
#set_property PACKAGE_PIN U18 [get_ports btnC]
#set_property IOSTANDARD LVCMOS33 [get_ports btnC]
#set_property PACKAGE_PIN T18 [get_ports btnU]
#set_property IOSTANDARD LVCMOS33 [get_ports btnU]
#set_property PACKAGE_PIN W19 [get_ports btnL]
#set_property IOSTANDARD LVCMOS33 [get_ports btnL]
#set_property PACKAGE_PIN T17 [get_ports btnR]
#set_property IOSTANDARD LVCMOS33 [get_ports btnR]
#set_property PACKAGE_PIN U17 [get_ports btnD]
#set_property IOSTANDARD LVCMOS33 [get_ports btnD]



##Pmod Header JA
##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {dataBus[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dataBus[0]}]
##Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {dataBus[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dataBus[1]}]
##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports {dataBus[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dataBus[2]}]
##Sch name = JA4
set_property PACKAGE_PIN G2 [get_ports {dataBus[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dataBus[3]}]
##Sch name = JA7
set_property PACKAGE_PIN H1 [get_ports {dataBus[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dataBus[4]}]
##Sch name = JA8
set_property PACKAGE_PIN K2 [get_ports {dataBus[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dataBus[5]}]
##Sch name = JA9
set_property PACKAGE_PIN H2 [get_ports {dataBus[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dataBus[6]}]
##Sch name = JA10
set_property PACKAGE_PIN G3 [get_ports {dataBus[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dataBus[7]}]



##Pmod Header JB
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {addressBus[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addressBus[0]}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {addressBus[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addressBus[1]}]
##Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports {addressBus[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addressBus[2]}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {addressBus[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addressBus[3]}]
##Sch name = JB7
set_property PACKAGE_PIN A15 [get_ports {addressBus[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addressBus[4]}]
##Sch name = JB8
set_property PACKAGE_PIN A17 [get_ports {addressBus[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addressBus[5]}]
##Sch name = JB9
set_property PACKAGE_PIN C15 [get_ports {addressBus[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addressBus[6]}]
##Sch name = JB10
set_property PACKAGE_PIN C16 [get_ports {addressBus[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addressBus[7]}]



##Pmod Header JC
##Sch name = JC1
set_property PACKAGE_PIN K17 [get_ports key2]
set_property IOSTANDARD LVCMOS33 [get_ports key2]
#Sch name = JC2
set_property PACKAGE_PIN M18 [get_ports tx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
##Sch name = JC3
set_property PACKAGE_PIN N17 [get_ports clkout]
set_property IOSTANDARD LVCMOS33 [get_ports clkout]
##Sch name = JC4
#set_property PACKAGE_PIN P18 [get_ports {send_data[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {send_data[3]}]
##Sch name = JC7
#set_property PACKAGE_PIN L17 [get_ports {send_data[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {send_data[4]}]
##Sch name = JC8
#set_property PACKAGE_PIN M19 [get_ports {send_data[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {send_data[5]}]
##Sch name = JC9
#set_property PACKAGE_PIN P17 [get_ports {send_data[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {send_data[6]}]
##Sch name = JC10
#set_property PACKAGE_PIN R18 [get_ports {send_data[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {send_data[7]}]


##Pmod Header JXADC
##Sch name = XA1_P
#set_property PACKAGE_PIN J3 [get_ports {JXADC[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[0]}]
##Sch name = XA2_P
#set_property PACKAGE_PIN L3 [get_ports {JXADC[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[1]}]
##Sch name = XA3_P
#set_property PACKAGE_PIN M2 [get_ports {JXADC[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[2]}]
##Sch name = XA4_P
#set_property PACKAGE_PIN N2 [get_ports {JXADC[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[3]}]
##Sch name = XA1_N
#set_property PACKAGE_PIN K3 [get_ports {JXADC[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[4]}]
##Sch name = XA2_N
#set_property PACKAGE_PIN M3 [get_ports {JXADC[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[5]}]
##Sch name = XA3_N
#set_property PACKAGE_PIN M1 [get_ports {JXADC[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[6]}]
##Sch name = XA4_N
#set_property PACKAGE_PIN N1 [get_ports {JXADC[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[7]}]



##VGA Connector
#set_property PACKAGE_PIN G19 [get_ports {vgaRed[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[0]}]
#set_property PACKAGE_PIN H19 [get_ports {vgaRed[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[1]}]
#set_property PACKAGE_PIN J19 [get_ports {vgaRed[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[2]}]
#set_property PACKAGE_PIN N19 [get_ports {vgaRed[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[3]}]
#set_property PACKAGE_PIN N18 [get_ports {vgaBlue[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[0]}]
#set_property PACKAGE_PIN L18 [get_ports {vgaBlue[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[1]}]
#set_property PACKAGE_PIN K18 [get_ports {vgaBlue[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[2]}]
#set_property PACKAGE_PIN J18 [get_ports {vgaBlue[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[3]}]
#set_property PACKAGE_PIN J17 [get_ports {vgaGreen[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[0]}]
#set_property PACKAGE_PIN H17 [get_ports {vgaGreen[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[1]}]
#set_property PACKAGE_PIN G17 [get_ports {vgaGreen[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[2]}]
#set_property PACKAGE_PIN D17 [get_ports {vgaGreen[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[3]}]
#set_property PACKAGE_PIN P19 [get_ports Hsync]
#set_property IOSTANDARD LVCMOS33 [get_ports Hsync]
#set_property PACKAGE_PIN R19 [get_ports Vsync]
#set_property IOSTANDARD LVCMOS33 [get_ports Vsync]


##USB-RS232 Interface
#set_property PACKAGE_PIN B18 [get_ports RsRx]
#set_property IOSTANDARD LVCMOS33 [get_ports RsRx]
set_property PACKAGE_PIN A18 [get_ports tx_equ]
set_property IOSTANDARD LVCMOS33 [get_ports tx_equ]


##USB HID (PS/2)
#set_property PACKAGE_PIN C17 [get_ports PS2Clk]
#set_property IOSTANDARD LVCMOS33 [get_ports PS2Clk]
#set_property PULLUP true [get_ports PS2Clk]
#set_property PACKAGE_PIN B17 [get_ports PS2Data]
#set_property IOSTANDARD LVCMOS33 [get_ports PS2Data]
#set_property PULLUP true [get_ports PS2Data]


##Quad SPI Flash
##Note that CCLK_0 cannot be placed in 7 series devices. You can access it using the
##STARTUPE2 primitive.
#set_property PACKAGE_PIN D18 [get_ports {QspiDB[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[0]}]
#set_property PACKAGE_PIN D19 [get_ports {QspiDB[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[1]}]
#set_property PACKAGE_PIN G18 [get_ports {QspiDB[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[2]}]
#set_property PACKAGE_PIN F18 [get_ports {QspiDB[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[3]}]
#set_property PACKAGE_PIN K19 [get_ports QspiCSn]
#set_property IOSTANDARD LVCMOS33 [get_ports QspiCSn]




set_property MARK_DEBUG false [get_nets {Um/Ucontrol/address[0]}]
set_property MARK_DEBUG false [get_nets {Um/Ucontrol/address[1]}]
set_property MARK_DEBUG false [get_nets {Um/Ucontrol/address[3]}]
set_property MARK_DEBUG false [get_nets {Um/Ucontrol/address[2]}]
set_property MARK_DEBUG false [get_nets {Um/Ucontrol/address[6]}]
set_property MARK_DEBUG false [get_nets {Um/Ucontrol/address[7]}]
set_property MARK_DEBUG false [get_nets {Um/Ucontrol/address[5]}]


set_property MARK_DEBUG true [get_nets {Um/address[3]}]
set_property MARK_DEBUG true [get_nets {Um/address[4]}]
set_property MARK_DEBUG true [get_nets {Um/address[6]}]
set_property MARK_DEBUG true [get_nets {Um/address[2]}]
set_property MARK_DEBUG true [get_nets {Um/address[5]}]
set_property MARK_DEBUG true [get_nets {Um/address[7]}]
set_property MARK_DEBUG true [get_nets {Um/address[0]}]
set_property MARK_DEBUG true [get_nets {Um/address[1]}]
connect_debug_port u_ila_0/clk [get_nets [list clkin_IBUF_BUFG]]
connect_debug_port dbg_hub/clk [get_nets clkin_IBUF_BUFG]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clkout_OBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {Um/address[0]} {Um/address[1]} {Um/address[2]} {Um/address[3]} {Um/address[4]} {Um/address[5]} {Um/address[6]} {Um/address[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {Um/fifoin[0]} {Um/fifoin[1]} {Um/fifoin[2]} {Um/fifoin[3]} {Um/fifoin[4]} {Um/fifoin[5]} {Um/fifoin[6]} {Um/fifoin[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {Um/fifoout[0]} {Um/fifoout[1]} {Um/fifoout[2]} {Um/fifoout[3]} {Um/fifoout[4]} {Um/fifoout[5]} {Um/fifoout[6]} {Um/fifoout[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 2 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {acs[0]} {acs[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list Um/fifoclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list Um/wrreq]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clkout_OBUF_BUFG]
