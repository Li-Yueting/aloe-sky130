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

setenv aloe_home `pwd`
setenv tcllib $aloe_home/tcllib
setenv pylib $aloe_home/pylib
setenv inputs $aloe_home/inputs
setenv outputs $aloe_home/outputs
setenv PATH /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/bin:$PATH
setenv PATH /cad/iverilog/bin:$PATH
setenv MGLS_LICENSE_FILE 1717@cadlic0.stanford.edu
# Autocomplete for make
complete make \
    'n/-f/f/' \
    'c/*=/f/' \
    'n@*@`cat -s GNUmakefile Makefile makefile |& sed -n -e "/No such file/d" -e "/^[^     #].*:/s/:.*//p"`@'

