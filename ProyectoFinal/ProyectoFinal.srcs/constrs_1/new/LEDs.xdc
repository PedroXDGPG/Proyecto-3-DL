#CLK
set_property PACKAGE_PIN E3 [get_ports {clk}]
    set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}]

#boton
set_property PACKAGE_PIN N17 [get_ports {reset}]
    set_property IOSTANDARD LVCMOS33 [get_ports {reset}]

set_property PACKAGE_PIN M17 [get_ports {start}]
    set_property IOSTANDARD LVCMOS33 [get_ports {start}]

set_property PACKAGE_PIN P18 [get_ports {bot}]
    set_property IOSTANDARD LVCMOS33 [get_ports {bot}]
     
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
    
#Switch
set_property PACKAGE_PIN J15 [get_ports {A[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]

set_property PACKAGE_PIN L16 [get_ports {A[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]

set_property PACKAGE_PIN M13 [get_ports {A[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]

set_property PACKAGE_PIN R15 [get_ports {A[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]
    
set_property PACKAGE_PIN R17 [get_ports {A[4]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A[4]}]

set_property PACKAGE_PIN T18 [get_ports {A[5]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A[5]}]
    
set_property PACKAGE_PIN U18 [get_ports {A[6]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A[6]}]

set_property PACKAGE_PIN R13 [get_ports {A[7]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A[7]}]
    
set_property PACKAGE_PIN T8 [get_ports {B[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
    
set_property PACKAGE_PIN U8 [get_ports {B[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
    
set_property PACKAGE_PIN R16 [get_ports {B[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]
    
set_property PACKAGE_PIN T13 [get_ports {B[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]
    
set_property PACKAGE_PIN H6 [get_ports {B[4]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B[4]}]
    
set_property PACKAGE_PIN U12 [get_ports {B[5]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B[5]}]
    
set_property PACKAGE_PIN U11 [get_ports {B[6]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B[6]}]
    
set_property PACKAGE_PIN V10 [get_ports {B[7]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B[7]}]
    
#LEDs
set_property PACKAGE_PIN H17 [get_ports {led[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN K15 [get_ports {led[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN J13 [get_ports {led[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN N14 [get_ports {led[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
    
set_property PACKAGE_PIN R18 [get_ports {led[4]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

set_property PACKAGE_PIN V17 [get_ports {led[5]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
    
set_property PACKAGE_PIN U17 [get_ports {led[6]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]

set_property PACKAGE_PIN U16 [get_ports {led[7]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
    
set_property PACKAGE_PIN V16 [get_ports {led[8]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[8]}]
    
set_property PACKAGE_PIN T15 [get_ports {led[9]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[9]}]
    
set_property PACKAGE_PIN U14 [get_ports {led[10]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[10]}]
    
set_property PACKAGE_PIN T16 [get_ports {led[11]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[11]}]
    
set_property PACKAGE_PIN V15 [get_ports {led[12]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[12]}]
    
set_property PACKAGE_PIN V14 [get_ports {led[13]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[13]}]
    
set_property PACKAGE_PIN V12 [get_ports {led[14]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[14]}]
    
set_property PACKAGE_PIN V11 [get_ports {led[15]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {led[15]}]