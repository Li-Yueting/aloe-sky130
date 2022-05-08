###################################################################

# Created by write_sdc on Tue Apr 19 15:01:40 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_fanout 20 [current_design]
set_max_transition 2.5 [current_design]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -no_design_rule [get_ports in]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -no_design_rule [get_ports clk]
set_load -pin_load 0.009 [get_ports out]
create_clock [get_ports clk]  -name ideal_clock  -period 10  -waveform {0 5}
group_path -name FEEDTHROUGH  -from [get_ports in]  -to [get_ports out]
group_path -name REGIN  -from [get_ports in]
group_path -name REGOUT  -to [get_ports out]
set_input_delay -clock ideal_clock  5  [get_ports in]
set_output_delay -clock ideal_clock  0  [get_ports out]