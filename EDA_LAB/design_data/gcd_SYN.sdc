###################################################################

# Created by write_sdc on Wed Mar  6 22:04:20 2013

###################################################################
set sdc_version 1.8

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions slow -library slow
set_load -pin_load 0.030486 [get_ports {out[7]}]
set_load -pin_load 0.030486 [get_ports {out[6]}]
set_load -pin_load 0.030486 [get_ports {out[5]}]
set_load -pin_load 0.030486 [get_ports {out[4]}]
set_load -pin_load 0.030486 [get_ports {out[3]}]
set_load -pin_load 0.030486 [get_ports {out[2]}]
set_load -pin_load 0.030486 [get_ports {out[1]}]
set_load -pin_load 0.030486 [get_ports {out[0]}]
set_load -pin_load 0.030486 [get_ports done]
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_drive 1  [get_ports {A_in[7]}]
set_drive 1  [get_ports {A_in[6]}]
set_drive 1  [get_ports {A_in[5]}]
set_drive 1  [get_ports {A_in[4]}]
set_drive 1  [get_ports {A_in[3]}]
set_drive 1  [get_ports {A_in[2]}]
set_drive 1  [get_ports {A_in[1]}]
set_drive 1  [get_ports {A_in[0]}]
set_drive 1  [get_ports {B_in[7]}]
set_drive 1  [get_ports {B_in[6]}]
set_drive 1  [get_ports {B_in[5]}]
set_drive 1  [get_ports {B_in[4]}]
set_drive 1  [get_ports {B_in[3]}]
set_drive 1  [get_ports {B_in[2]}]
set_drive 1  [get_ports {B_in[1]}]
set_drive 1  [get_ports {B_in[0]}]
set_drive 1  [get_ports clk]
set_drive 1  [get_ports rst_n]
