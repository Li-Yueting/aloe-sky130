# ALOE-SKY130
It is a developing repo for the EE372 project at Stanford University. We are developing an analog place and route automation tool based on ALOE [1] using skywater-130nm technology. Our tool is tested on a bandgap reference (BGR) circuit. For the BGR part, we refered git repo [2]

## Running codes
Log into singularity machine first: $ /farmshare/home/classes/ee/admin/software/bin/centos.sh
source setup.csh
cd layout
magic &
load <mag_name>.mag
source stem_cell_generation.tcl
[in magic command line type:] place_pmos 0 0 2 12 1 
## Reference
[1] Wei, Po-Hsuan, and Boris Murmann. "Analog and Mixed-Signal Layout Automation Using Digital Place-and-Route Tools." IEEE Transactions on Very Large Scale Integration (VLSI) Systems 29.11 (2021): 1838-1849.
[2] https://github.com/johnkustin/bandgapReferenceCircuit