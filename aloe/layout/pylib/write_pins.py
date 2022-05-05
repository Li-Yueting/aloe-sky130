import os
import sys
import aloe.layout.pnr.def_ip as ip
sys.dont_write_bytecode = True

#os.chdir(ip.pnr_dir)

def write_pins(top_cell, lpins, rpins, tpins, bpins, fpin):
    pin_cmd = []
    if len(lpins) > 0:
        pin_cmd.append('createPinGroup leftPin -cell {} -spacing 1 -optimizeOrder\n'.format(top_cell))
        for pin in lpins:
            pin_cmd.append('addPinToPinGroup -pinGroup leftPin -cell {} -pin {}\n'.format(top_cell, pin))
        pin_cmd.append('createPinGuide -pinGroup leftPin -cell {} -edge 0 -layer {{{}}}\n'.format(
        	   top_cell, ' '.join(str(n) for n in range(2, ip.top_layer+1))))
        
    if len(rpins) > 0:
        pin_cmd.append('createPinGroup rightPin -cell {} -spacing 1 -optimizeOrder\n'.format(top_cell))
        for pin in rpins:
            pin_cmd.append('addPinToPinGroup -pinGroup rightPin -cell {} -pin {}\n'.format(top_cell, pin))
        pin_cmd.append('createPinGuide -pinGroup rightPin -cell {} -edge 2 -layer {{{}}}\n'.format(top_cell, ' '.join(str(n) for n in range(2, ip.top_layer+1))))
        
    if len(bpins) > 0:
        pin_cmd.append('createPinGroup bottomPin -cell {} -spacing 1 -optimizeOrder\n'.format(top_cell))
        for pin in bpins:
            pin_cmd.append('addPinToPinGroup -pinGroup bottomPin -cell {} -pin {}\n'.format(top_cell, pin))
        pin_cmd.append('createPinGuide -pinGroup bottomPin -cell {} -edge 3 -layer {{{}}}\n'.format(
        	   top_cell, ' '.join(str(n) for n in range(2, ip.top_layer+1))))
 
    if len(tpins) > 0:
        pin_cmd.append('createPinGroup topPin -cell {} -spacing 1 -optimizeOrder\n'.format(top_cell))
        for pin in tpins:
            pin_cmd.append('addPinToPinGroup -pinGroup topPin -cell {} -pin {}\n'.format(top_cell, pin))
        pin_cmd.append('createPinGuide -pinGroup topPin -cell {} -edge 1 -layer {{{}}}\n'.format(
        	   top_cell, ' '.join(str(n) for n in range(2, ip.top_layer+1))))    
 
    pin_str = ''.join(pin_cmd)
    with open(fpin, 'w') as fo:
        fo.write(pin_str)
 

if __name__ == '__main__':
    fpin = os.path.join(ip.pnr_dir, 'pins.tcl')
    # print 'DEBUG: tpin: {}'.format(ip.tpins)
    write_pins(ip.top_cell, ip.lpins, ip.rpins, ip.tpins, ip.bpins, fpin)
    # print 'INFO: Pins written.[write_pins]'
