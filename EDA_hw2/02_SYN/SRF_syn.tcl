set DESIGN "square_root_finder"

read_file -format verilog square_root_finder.v
#read_file -autoread -top square_root_finder -recursive {../01_RTL}

current_design [get_designs $DESIGN]

set_operating_conditions -min fast -max slow

#----------define your clock signal and period here----------------#
create_clock -period 30.0 [ get_ports clk ]

link

check_design

uniquify

set_fix_multiple_port_nets -all -buffer_constants


compile -map_effort medium

set bus_inference_style {%s[%d]}
set bus_naming_stule {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed {a-z A-Z 0-9 _} -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _} -max_length 255 -type net
define_name_rules name_rule -map {{"\*cell\*", "cell"}}
define_name_rules name_rule -map {{"\*-return\*", "myreturn"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule

set verilogout_show_unconnected_pins true
report_area -hierarchy > ./Report/$DESIGN\_syn_area.arp
report_power > ./Report/$DESIGN\_syn_power.prp
report_reference > ./Report/$DESIGN\_syn_reference
report_timing -path full -delay max > ./Report/$DESIGN\_syn_timing.trp


write -format verilog -hierarchy -output ./Netlist/$DESIGN\_syn.v

write_sdf -version 1.0 -context verilog -load_delay cell ./Netlist/$DESIGN\_syn.sdf

write_sdc ./Netlist/$DESIGN\_syn.sdc

exit
