import sys
sys.path.append('../pyMOSChar')
import spice3read as s3r
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rc
# import pdb
# rc.rcParams.update(rc.rcParamsDefault)


font = {'family' : 'sans-serif',
'weight' : 'bold',
'size' : 14}
rc('font', **font)

data27 = s3r.read('../sims/tsmc_bandgap_real_27degc_vbg.raw')
data0 = s3r.read('../sims/tsmc_bandgap_real_0degc_vbg.raw')
data70 = s3r.read('../sims/tsmc_bandgap_real_70degc_vbg.raw')
vbg27 = data27['v(vbg)'][0]
vbg0 = data0['v(vbg)'][0]
vbg70 = data70['v(vbg)'][0]
times = [data27['time'][0],data0['time'][0],data70['time'][0]]
maxtimes = times[np.asarray([len(x) for x in times]).argmax()]
tranvbg27 = np.interp(maxtimes, times[0], data27['v(vbg)'][0])
tranvbg0 = np.interp(maxtimes, times[1], data0['v(vbg)'][0])
tranvbg70 = np.interp(maxtimes, times[2], data70['v(vbg)'][0])
fig=plt.figure()
ax = fig.add_subplot(111)
ax.plot(maxtimes*1e6, tranvbg27, '--r' , label=r'27 $^\circ$C')
ax.plot(maxtimes*1e6, tranvbg0, '--b' , label=r'0 $^\circ$C')
ax.plot(maxtimes*1e6, tranvbg70, '--y' , label=r'70 $^\circ$C')
ax.set_xlabel(r"time ($\mu$s)")
ax.set_ylabel('Vout (V)')
ax.legend()
# plt.show()
# print(vbg27, "length is", len(vbg27))
# vbg27 = vbg27.tolist()
# x =np.linspace(0, 40.0, 200030)
# pdb.set_trace()
# print("=====================================",type(vbg27[0]))
# plt.plot(vbg27)
plt.savefig('tran1.png')