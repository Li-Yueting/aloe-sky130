# module load base magic netgen xcelium matlab/caddy
# # source ./venv/bin/activate.csh
# # copy the magic config file if it doesn't exist already
# # cp -n /farmshare/home/classes/ee/272/PDKS.v2021/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
# # set the PDKPATH variable
# # setenv PDKPATH /farmshare/home/classes/ee/272/PDKS.v2021/sky130A
# # add search path
# setenv PATH /cad/xschem/3.0/bin:$PATH
# setenv PATH /cad/ngspice/33/bin:$PATH
# setenv PATH /cad/gaw3/bin:$PATH


setenv MFLOWGEN_PATH /farmshare/home/classes/ee/372/PDKs
setenv SRAM_PATH     /farmshare/home/classes/ee/372/PDKs/sky130_sram_macros

setenv PATH /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/bin:$PATH
setenv PATH /cad/iverilog/bin:$PATH
setenv MGLS_LICENSE_FILE 1717@cadlic0.stanford.edu

#source /cad/modules/tcl/init/csh

module load base
module load vcs
module load lc
module load syn
module load xcelium
module load genus
module load innovus/20.13.000
module load calibre/2019.1
module load prime
module load magic/latest
module load netgen/latest

# export PATH=/cad/openlane/build/bin:$PATH

# Autocomplete for make
complete make \
    'n/-f/f/' \
    'c/*=/f/' \
    'n@*@`cat -s GNUmakefile Makefile makefile |& sed -n -e "/No such file/d" -e "/^[^     #].*:/s/:.*//p"`@'