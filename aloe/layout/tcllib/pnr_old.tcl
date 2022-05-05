set time_start [clock seconds]
set num_old 4
set ::env(run_num) 0
source $pnr_dir/run0.tcl
for {set ::env(run_num) 0} {$env(run_num)<$num_old} {incr env(run_num)} {
	python write_run_old.py
	puts "freeDesign"
	source run_old.tcl
}
set time_taken [expr [clock seconds] - $time_start]
set show_time [join [concat "Running " $num_old " iterations takes " $time_taken " seconds." ] " "]
puts $show_time

unset time_start
unset num_old
unset ::env(run_num)
