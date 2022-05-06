import os
import sys
from glob2 import glob
from aloe.layout.pylib.DEF import DEF
from aloe.layout.pnr.cstr import read_cstr
import aloe.layout.pnr.def_ip as ip
sys.dont_write_bytecode = True


def cmd_defout():
    '''
    Function: save DEF file from Lucy
    '''
    return 'defOut -floorplan -noStdCells {}\n'.format(ip.fdef0)

def cmd_lefout(n, gennum):
    '''
    Function: save LEF file for the final gneration
    '''
    flef = '{}{}{}_{}.lef'.format(ip.lefout_dir, ip.blk_name, str(gennum), str(n))
    return 'write_lef_abstract -5.8 -extractBlockObs {}\n'.format(flef)

def cmd_vout(n):
    '''
    Function: save Verilog file for the final gneration
    '''
    fverilog = '{}{}{}.v'.format(ip.vout_dir, ip.blk_name, str(n))
    # ONETIME: decapNamePattern
    return 'save_lvs_netlist -dcapNamePattern "FILLSGCAP*" -fVerilog {} -flat\n'.format(fverilog)

def cmd_gdsout(n):
    '''
    Function: Save GDS file for the final generation
    '''
    print('DEBUG: cmd_gdsout() called')
    gds_merge = []
    os.chdir(ip.gds_dir)
    for gds in glob('*.gds'):
        gds_merge.append(ip.gds_dir+gds)
    for gds_dir in glob('*_gds'):
        os.chdir(ip.gds_dir+gds_dir)
        for gds in glob('*.gds'):
            gds_merge.append(ip.gds_dir+gds_dir+'/'+gds)
    gds_merge_str = ' '.join(gds_merge)
    os.chdir(ip.pnr_dir)

    # ############### Remember GDS step ####################

    fgds = '{}{}{}.gds'.format(ip.gdsout_dir, ip.blk_name, str(n))
    ostrm_cmd = 'streamOut {} -mapFile {}tech.map -libName DesignLib -units {} -mode ALL -merge {{{}}}\n'.format(
        fgds,\
        str(ip.data_dir),\
        str(ip.gds_unit),\
        gds_merge_str)
    return ostrm_cmd

def write_run(run_num, generation, gennum):
    '''
    run_num:    layout #
    cstr_df:    pandas DataFrame containing the input constraints
    '''
    #==============================================================================
    # Set I/O paths
    #==============================================================================
    if generation == 'out':
        cstrin_path = '{}{}{}.txt'.format(ip.cstr_hof_dir, ip.cstr, str(run_num).zfill(ip.run_num_len))
        defout_path = '{}{}{}.def'.format(ip.def_hof_dir, ip.blk_name, str(run_num).zfill(ip.run_num_len))
    elif generation == 'old':
        cstrin_path = '{}{}{}.txt'.format(ip.cstr_old_dir, ip.cstr, str(run_num).zfill(ip.run_num_len))
        defout_path = '{}{}{}.def'.format(ip.def_old_dir, ip.blk_name, str(run_num).zfill(ip.run_num_len))
    elif generation == 'new':
        cstrin_path = '{}{}{}.txt'.format(ip.cstr_new_dir, ip.cstr, str(run_num).zfill(ip.run_num_len))
        defout_path = '{}{}{}.def'.format(ip.def_new_dir, ip.blk_name, str(run_num).zfill(ip.run_num_len))
    else:
        defout_path = ip.fdef0 
    #==============================================================================
    # Initiate DEF objectf
    #==============================================================================
    flow = DEF(ip.fdef0, defout_path, ip.stage, run_num)
    flow.set_steps()

    #==============================================================================
    # Write run.tcl file
    #==============================================================================
    # Change the directory so that def_ip.py file can be found
    os.chdir(ip.pnr_dir)

    if not generation == 'lucy':
        cstr_df = read_cstr('net', ['weight'], cstrin_path)
        net_wt_stubs = []
        all_nets = ["clk", "en", "out1", "out2", "out3", "out4", "out5", "inv1/ds", "inv2/ds", "inv3/ds", "inv4/ds", "inv5/ds", "VDD", "VSS", "VNW", "VDDPST", "POC", "VDDCE", "VDDPE", "VPW", "VSSPST", "VSSE"]
        for idx, net in enumerate(all_nets):
            print(net)
            net_wt_stubs.append('createNetGroup group' + str(idx) + '\n')
            net_wt_stubs.append('specifyNetWeight ' + net + ' ' + str(cstr_df._get_value(net,'weight')) + '\n')

    with open(ip.run_path, 'w') as run_tcl:
        # if flow.steps['init']:
            ####################
            # run_tcl.write('source {}\n'.format(os.path.join(ip.pnr_dir, 'ini.tcl')))
            # run_tcl.write('source {}\n'.format(os.path.join(ip.pnr_dir, 'tech.tcl')))

            #ONETIME comment
            #run_tcl.write('source {}\n'.format(os.path.join(ip.pnr_dir, 'pins.tcl')))
            #ONETIME comment
            #run_tcl.write('source {}\n'.format(os.path.join(ip.pnr_dir, 'fp.tcl')))
            #ONETIME comment
            #run_tcl.write('source {}\n'.format(os.path.join(ip.pnr_dir, 'sroute.tcl')))
        if flow.steps['place']:
            # ONETIME
            run_tcl.write('loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp\n')
            if not generation == 'lucy':
                run_tcl.write('defIn ' + ip.fdef0 + '\n')
                run_tcl.write(''.join(net_wt_stubs))
            run_tcl.write('setDesignMode -process 130 -powerEffort high\n')
            run_tcl.write('setAnalysisMode -analysisType onChipVariation\n')
            run_tcl.write('setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false\n')
            run_tcl.write('set_interactive_constraint_modes [all_constraint_modes -active]\n')
            run_tcl.write('setPlaceMode -checkCellDRCFromPreRoute false\n')
            if os.path.isfile(os.path.join(ip.pnr_dir, 'cluster.tcl')):
                run_tcl.write('source {}\n'.format(os.path.join(ip.pnr_dir, 'cluster.tcl')))
            # run_tcl.write('setPlaceMode -place_detail_color_aware_legal true -place_global_place_io_pins true\n')
            run_tcl.write('place_design\n')
            # ONETIME comment. Prob dont need it anyway
            # run_tcl.write('source {}\n'.format(os.path.join(ip.pnr_dir, 'fix_sroute.tcl')))

        if flow.steps['route']:
            run_tcl.write('selectNet *\n')
            run_tcl.write('deselectNet {{{}}}\n'.format(' '.join(ip.pwr_nets)))
            run_tcl.write('deselectNet {{{}}}\n'.format(' '.join(ip.gnd_nets)))
            run_tcl.write('setNanoRouteMode -quiet -routeSelectedNetOnly 1\n')
            run_tcl.write('routeDesign -globalDetail\n')
            #TODO: If there is open in regular wires, change aspect ratio or decrease TU
            # run_tcl.write('verify_connectivity -selected -type regular -error 1000 -warning 50 -report {}\n'.format(
                # os.path.join(ip.rpt_dir, '{}.conn.rpt'.format(ip.blk_name))))
            # Ignore power and ground
            # run_tcl.write('addFiller\n')
            # run_tcl.write('set_verify_drc_mode -check_implant true -exclude_pg_net true -report {}\n'.format(
            #     os.path.join(ip.rpt_dir, '{}.drc.rpt'.format(ip.blk_name))))
            #run_tcl.write('source {}fix_sroute.tcl\n'.format(ip.pnr_dir))

        if flow.steps['lvs']:
            run_tcl.write('source {}\n'.format(os.path.join(ip.pnr_dir, 'lvs.tcl')))
        if flow.steps['pex']:
            pass
        # TODO: Make a dictionary for different generations
        # for instance, old['expr'], old['perf'], or expr['old']
        if generation == 'old':
            run_tcl.write('cal_nl -n {} -l {} -d {} -b {}\n'.format(
                run_num, ip.run_num_len, ip.expr_old_dir, ip.blk_name))
            run_tcl.write(cmd_lefout(run_num, gennum))
        elif generation == 'new':
            run_tcl.write('cal_nl -n {} -l {} -d {} -b {}\n'.format(
                run_num, ip.run_num_len, ip.expr_new_dir, ip.blk_name))
            run_tcl.write(cmd_lefout(run_num, gennum))
        elif generation == 'out':
            #TODO: Multiple iteration here
            run_tcl.write('cal_nl -n {} -l {} -d {} -b {}\n'.format(
                run_num, ip.run_num_len, ip.expr_hof_dir, ip.blk_name))
            # ########################################################################### Remember to add swap cells #########
            # for net in ip.pwr_nets:
            #     run_tcl.write('swap_cells -net {} -tail _tied\n'.format(net))
            # for net in ip.gnd_nets:
            #     run_tcl.write('swap_cells -net {} -tail _tied\n'.format(net))
            # [Warning]: Output lef file is not accurate on M1
            run_tcl.write(cmd_lefout(run_num, gennum))

            ###################################################### Remember to merge gds (lose tech map file) ###############
            # run_tcl.write(cmd_gdsout(run_num))
            ###################################################### Remember to do lvs (lose tech map file) ###############
            # run_tcl.write(cmd_vout(run_num))

        # Lucy is one single layout from which all other layouts loads DEF from
        elif generation == 'lucy':
            # TODO: write_run0 also contains other functionaliry
            run_tcl.write('cal_nl -n {} -l {} -d {} -b {}\n'.format(
                0, ip.run_num_len, ip.expr_hof_dir, ip.blk_name))
            run_tcl.write(cmd_defout())
            run_tcl.write(cmd_lefout(run_num, gennum))

if __name__ == '__main__':
    run_num, generation, gennum = sys.argv[1:4]
    write_run(run_num, generation, gennum)
