import sys
sys.path.append('../pyMOSChar')
import spice3read as s3r
import numpy as np

opdat = s3r.read('../sims/tsmc_bandgap_real_op.raw')

gms = [entry for entry in opdat.keys() if '[gm]' in entry]
ids = [entry for entry in opdat.keys() if '[id]' in entry]
ids.remove('i(@m.xm10.msky130_fd_pr__nfet_01v8_lvt[id])')
gms.sort()
ids.sort()
vdsats = []
for i, x in enumerate(gms):
    gm = opdat[x]
    id = opdat[ids[i]]
    vdsats.append(2/(gm/id))


indx = range(1,10)
indx.insert(1,13)
vdsats = np.asarray(vdsats).flatten()


vdd = opdat['v(vdd)']
va = opdat['v(va)']
vb = opdat['v(vb)']
vbg = opdat['v(vbg)']
vgate = opdat['v(vgate)']
vq = opdat['v(vq)']
vx = opdat['v(vx)']
vg = opdat['v(vg)']
vdsmargin1 = vdd - va - vdsats[0]
vdsmargin13 = vdd - vx - vdsats[1]
vdsmargin2 = vdd - vb - vdsats[2]
vdsmargin3 = vdd - vbg - vdsats[3]
vdsmargin4 = vdd - vgate - vdsats[4]
vdsmargin5 = vgate - vq- vdsats[5]
vdsmargin6 = vq - vdsats[6]
vdsmargin7 = vx - vdsats[7]
vdsmargin8 = vdd - vg - vdsats[8]
vdsmargin9 = vg - vq - vdsats[9]


vdsmargins = np.asarray([
    vdsmargin1,
    vdsmargin13,
    vdsmargin2,
    vdsmargin3,
    vdsmargin4,
    vdsmargin5,
    vdsmargin6,
    vdsmargin7,
    vdsmargin8,
    vdsmargin9
]).flatten()


with open('vdsat.txt', 'wb') as f:
    f.write('vdsats')
    f.write('\n')
    for i, n in enumerate(indx):
        f.write('vdsat{} = {}'.format(n,vdsats[i]))
        f.write('\n')
    f.write('vdsmargins')
    f.write('\n')
    for i, n in enumerate(indx):
        f.write('vds{}margin = {}'.format(n,vdsmargins[i]))
        f.write('\n')
    if np.all(vdsmargins > 0):
        f.write('All Vds margins are positive')
        f.write('\n')
        f.write('The lowest Vds margin is {}'.format(np.min(vdsmargins)))
        f.write('\n')
    else:
        f.write('Vds margins are violated. Most violated is {}'.format(np.min(vdsmargins)))
        f.write('\n')