set time_start [clock seconds]
set num_new 4
for {set ::env(run_num) 0} {$env(run_num)<$num_new} {incr env(run_num)} {
	python write_run_new.py
	puts "freeDesign"
	source run_new.tcl
}
set time_taken [expr [clock seconds] - $time_start]
set show_time [join [concat "Running " $num_new " iterations takes " $time_taken " seconds." ] " "]
puts $show_time

unset time_start
unset num_new
unset ::env(run_num)
