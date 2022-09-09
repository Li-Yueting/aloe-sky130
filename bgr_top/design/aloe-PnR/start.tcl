################### PARAMETERS ########################
set design_name "bgr_top"
set ::env(base_dir) "/home/users/lyt1314/ee372/aloe-sky130/bgr_top/interface"
set ::env(min_netweight) 0
set ::env(max_netweight) 30
set ::env(pop_size) 20
set ::env(gen) 0
set ::env(num_of_net) 40
set ::env(cross_prob) 0.3
set ngen 6
set best [list]
source scripts/interface.tcl
source scripts/ini.tcl
source scripts/tech.tcl
################### MAIN BEGIN HERE ########################
set genes [exec python scripts/initial_genes.py]
# puts "genes is --> $genes"
while {$env(gen)<$ngen} {
    puts "**************************************"
    puts "current generation is --> $env(gen)"
    puts "**************************************"
    set fitness [population_pnr $env(base_dir) $env(gen) $design_name] ;# fitness returned
    puts "fitness: $fitness"
    # ==== evolve begin here ==== 
    lassign [exec python scripts/select.py select $best $genes $fitness]] best genes;#fitness passed in as input parameter
    puts "best are --> $best"
    puts "genes are --> $genes"
    break

    python scripts/crosss.py
    python scripts/mutate.py
    # source -verbose scripts/pnr.tcl
    # python scripts.
    # python 
    incr env(gen)
}
set fitness population_pnr $env(base_dir) $env(gen) $design_name ;# fitness returned
################# MAIN END HERE ##################
