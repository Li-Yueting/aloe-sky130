module load base magic netgen xcelium matlab/caddy
# source ./venv/bin/activate.csh
# copy the magic config file if it doesn't exist already
cp -n /farmshare/home/classes/ee/272/PDKS.v2021/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
# set the PDKPATH variable
setenv PDKPATH /farmshare/home/classes/ee/272/PDKS.v2021/sky130A
# add search path
setenv PATH /cad/ngspice/33/bin:$PATH
setenv PATH /cad/gaw3/bin:$PATH
setenv PATH /cad/xschem/3.0/bin:$PATH
# setenv PATH /cad/ngspice/33/bin:$PATH
# setenv PATH /cad/gaw3/bin:$PATH