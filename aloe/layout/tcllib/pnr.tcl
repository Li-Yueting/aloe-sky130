proc pnr {args} {
	# Function: Writes place-and-route TCL scripts
	# Feature: Outputs runtime
	parse_proc_arguments -args $args options
	# Set default values
	set $options(-g) "old"
	set $options(-gennum) 0
	set $options(-n) 50
	set $options(-pnr_dir) "aloe/layout/pnr"
	set $options(-t) 0

	# Time layout
	if {$options(-t)} {
		set time_start [clock seconds]
	}

	# Place and route
	# Iterate until utilization allows for fully connected design
	if {$options(-g) == "lucy"} {
		set connected false
		while {!$connected} {
			python -m aloe.layout.pylib.write_runs 0 lucy 0
			puts "DEBUG: source $options(-pnr_dir)/run.tcl"
			source $options(-pnr_dir)/run.tcl
			puts "DEBUG: set connected [exec python -m aloe.layout.pylib.read_reports]"
			set connected [exec python -m aloe.layout.pylib.read_reports]
			python -m aloe.layout.pylib.adjust_util $connected
		}
		# python -m aloe.layout.pylib.write_runs 0 lucy
		# source $options(-pnr_dir)/run.tcl
    } else {
		for {set run_num 0} {$run_num<$options(-n)} {incr run_num} {
			python -m aloe.layout.pylib.write_runs $run_num $options(-g) $options(-gennum)
			source $options(-pnr_dir)/run.tcl
		}
	}

	if {$options(-t)} {
		set time_taken [expr [clock seconds] - $time_start]
		puts [join [concat "Running " $options(-n) " iterations took " $time_taken " seconds." ] " "]
		unset time_start
	}
}

define_proc_arguments pnr \
	-info "Writes TCL scripts to run.\n" \
	-define_args \
	{{-g "generation" "none" string required}
	{-gennum "generation num" "int_value" int required}
	{-n "population size" "int_value" int required}
	{-pnr_dir "place and route directroy" "none" string required}
	{-t "timed" "" boolean optional}
	}
