set time_start [clock seconds]
set num_final 4
for {set ::env(run_num) 0} {$env(run_num)<$num_final} {incr env(run_num)} {
	python write_run_final.py
	puts "freeDesign"
	source run_final.tcl
}
set time_taken [expr [clock seconds] - $time_start]
set show_time [join [concat "Running " $num_final " iterations takes " $time_taken " seconds." ] " "]
puts $show_time

unset time_start
unset num_final
unset ::env(run_num)
