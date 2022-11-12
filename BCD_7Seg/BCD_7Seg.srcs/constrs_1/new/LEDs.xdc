#CLK
set_property PACKAGE_PIN E3 [get_ports {clk}]
    set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}]

#boton
set_property PACKAGE_PIN N17 [get_ports {reset}]
    set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
   
#7 seg
set_property PACKAGE_PIN T10 [get_ports {LED_out[0]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[0]}]
set_property PACKAGE_PIN R10 [get_ports {LED_out[1]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[1]}]
set_property PACKAGE_PIN K16 [get_ports {LED_out[2]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[2]}]
set_property PACKAGE_PIN K13 [get_ports {LED_out[3]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[3]}]
set_property PACKAGE_PIN P15 [get_ports {LED_out[4]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[4]}]
set_property PACKAGE_PIN T11 [get_ports {LED_out[5]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[5]}]
set_property PACKAGE_PIN L18 [get_ports {LED_out[6]}]
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[6]}]

#Anodos
set_property PACKAGE_PIN J17 [get_ports {an[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN J18 [get_ports {an[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN T9 [get_ports {an[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN J14 [get_ports {an[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
    
    
set_property PACKAGE_PIN P14 [get_ports {an2[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an2[0]}]
set_property PACKAGE_PIN T14 [get_ports {an2[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an2[1]}]
set_property PACKAGE_PIN K2 [get_ports {an2[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an2[2]}]
set_property PACKAGE_PIN U13 [get_ports {an2[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an2[3]}]