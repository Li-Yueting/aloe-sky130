with open('outputs/design.vcs.pg.v', 'r+') as f:
    content = f.read()        
    f.seek(0, 0)
    f.write('`define USE_POWER_PINS 1\n'+content)

