set time_start_all [clock seconds]
setDistributeHost -local
set plot true
set ngen 2
set pop_size 4
set nout 1
set ::env(repo) $REPO
set ::env(gen) 0
set ::env(pnr_dir) [pwd]
set tcllib $env(pnr_dir)/../tcllib
source $tcllib/cal_nl.tcl
source $tcllib/areaRatio.tcl
source $tcllib/swap_cells.tcl
source $tcllib/pnr.tcl
source $tcllib/save_lvs_netlist.tcl
source $env(pnr_dir)/suppr_msg.tcl
source $env(pnr_dir)/get_cells.tcl
cd $env(repo)
python -m aloe.layout.pylib.write_tech
python -m aloe.layout.pylib.write_pins
#python -m aloe.layout.pylib.set_objectives
python -m aloe.layout.pylib.create_lucy -type_cstr_out old
# Dunno why we need this... but this makes the code work
source $env(pnr_dir)/ini.tcl
if {[file exists $env(pnr_dir)/ndr.tcl]} {
    source $env(pnr_dir)/ndr.tcl
}

pnr -g lucy -n $pop_size -pnr_dir $env(pnr_dir) -t
# Making design data global
# TODO: Remove all the other ini.tcl and 
#     use a "clear" of less extent to freeDesign
source $env(pnr_dir)/ini.tcl
pnr -g old -n $pop_size -pnr_dir $env(pnr_dir) -t
if {[file exists $env(pnr_dir)/cluster.tcl]} {
  source $env(pnr_dir)/cluster.tcl
}
python -m aloe.layout.pylib.examine -gen $env(gen) -type_cstr_in old -type_pop_out old
python -m aloe.layout.pnr.save -gen $env(gen) -type_pop_out old
while {$env(gen)<$ngen} {
  incr env(gen)
  puts "                           "
  puts "                           "
  puts "==========================="
  puts " Current generation is: $env(gen) " 
  puts "---------------------------"
  puts "                           "
  puts "                           "
  python -m aloe.layout.pylib.evolve -gen $env(gen) -type_pop_in old -type_cstr_out new
  pnr -g new -n $pop_size -pnr_dir $env(pnr_dir) -t
  python -m aloe.layout.pylib.examine -gen $env(gen) -type_cstr_in new -type_pop_out new
  python -m aloe.layout.pylib.choose -gen $env(gen) -type_pop_in both -type_pop_out old
  python -m aloe.layout.pnr.save -gen $env(gen) -type_pop_out old
}

# Calculate total time spent. This is the pnr time for ngen-1
set time_taken_all [expr [clock seconds] - $time_start_all]
puts [join [concat "Running $ngen generations with $pop_size layouts per generation took " $time_taken_all " seconds." ] " "]
set filePtr [open [file join $env(pnr_dir) "time_pnr.txt"] "w"]
puts $filePtr "$time_taken_all"
close $filePtr

#python -m aloe.layout.pylib.dominators
python -m aloe.layout.pylib.uniquify -gen $env(gen) -type_pop_in old -type_pop_out final > $env(pnr_dir)/n_unique

set filePtr [open [file join $env(pnr_dir) "n_unique"] r]
set n_unique [string trimright [read $filePtr]]
close $filePtr

# Final generation are the unique individuals, and the out generation consists of 
# ip.nout individuals chosen by the group objective
python -m aloe.layout.pylib.choose -gen $env(gen) -type_pop_in final -type_pop_out out
python -m aloe.layout.pnr.save -gen $env(gen) -type_pop_out out

# TODO: move the output to new in the final generation
set time_start_strout [clock seconds]
pnr -g out -n [expr min($n_unique, $nout)] -pnr_dir $env(pnr_dir) -t
set time_taken_strout [expr [clock seconds] - $time_start_strout]
set filePtr [open [file join $env(pnr_dir) "time_strout_pnr.txt"] "w"]
puts $filePtr "$time_taken_strout"
close $filePtr

#if {$plot} {
#  cd /home/pohsuan/repo.git
#  python -m aloe.layout.pnr.plot_evolution
#}
#python -m aloe.layout.pylib.write_log

# Unset all variables
unset ngen
unset ::env(gen)
unset ::env(repo)
unset plot
unset pop_size
unset nout
unset ::env(pnr_dir)
unset tcllib
unset time_taken_all
unset time_taken_strout
