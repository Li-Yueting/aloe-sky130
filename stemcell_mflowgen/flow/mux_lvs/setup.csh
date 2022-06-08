setenv MFLOWGEN_PATH /farmshare/home/classes/ee/372/PDKs
# setenv PDKPATH /farmshare/classes/ee/272/PDKs/share/pdk/sky130A
cp -n /farmshare/home/classes/ee/272/PDKS.v2021/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
setenv PDK_ROOT /farmshare/home/classes/ee/372/PDKs/volare_pdk
setenv PDKPATH /farmshare/home/classes/ee/372/PDKs/volare_pdk/sky130A
setenv PATH /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/bin:$PATH
setenv PATH /cad/iverilog/bin:$PATH
setenv MGLS_LICENSE_FILE 1717@cadlic0.stanford.edu
setenv LD_LIBRARY_PATH /cad/cadence/INNOVUS20.13.000.lnx86/tools.lnx86/lib/64bit:/cad/cadence/INNOVUS20.13.000.lnx86/share/oa/lib/linux_rhel60_64/opt:/.singularity.d/libs:/cad/common/Linux/x86_64/lib:/cad/synopsys/syn/P-2019.03/lib

setenv PATH /cad/ngspice/33/bin:$PATH
setenv PATH /cad/gaw3/bin:$PATH
setenv PATH /cad/xschem/3.0/bin:$PATH

# setenv REPO `pwd`
# setenv ALOE_HOME `pwd`/aloe


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

