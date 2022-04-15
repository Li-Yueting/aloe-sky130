# aloe-sky130
aloe-sky130 is an analog PnR automation tool based on ALOE [1] architecture using skywater-130nm technology. This is a developing repo for our EE372 project at Stanford University. aloe-sky130 is tested on a bandgap reference (BGR) circuit. For the BGR part, we referred git repo [2]

## Running codes
Fristly, log into singularity env on farmshare: ``` /farmshare/home/classes/ee/admin/software/bin/centos.sh```  <br>
``` source setup.csh  
$ cd layout 
$ magic & 
$ load <mag_name>.mag  
$ source stem_cell_generation.tcl  
```
in magic command line put in: ``` place_pmos 0 0 2 12 1 ``` to generate stem cell for pmos/nmos/pnp/resistor/cap
## Reference 
[1] Wei, Po-Hsuan, and Boris Murmann. "Analog and Mixed-Signal Layout Automation Using Digital Place-and-Route Tools." IEEE Transactions on Very Large Scale Integration (VLSI) Systems 29.11 (2021): 1838-1849. <br>
[2] https://github.com/johnkustin/bandgapReferenceCircuit

## Contact
Yueting Li: lyt1314@stanford.edu <br>
Xingyu Ni: xingyuni@stanford.edu