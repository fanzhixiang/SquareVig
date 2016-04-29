###################################################################

# Created by write_sdc on Fri Apr 29 19:05:39 2016

###################################################################
set sdc_version 1.8

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max slow -max_library slow\
                         -min fast -min_library fast
create_clock [get_ports clk]  -period 50  -waveform {0 25}
