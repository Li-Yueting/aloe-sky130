import os
import re
import pandas as pd
import aloe.layout.pnr.def_ip as ip

# TODO: Find and get variable for the grid
def write_snap_rule():
    return 'fpiSetSnapRule -grid InstanceGrid -for CORE\n'\
            + 'fpiSetSnapRule -grid InstanceGrid -for DIE\n'\
            + 'fpiSetSnapRule -grid InstanceGrid -for IOP\n'

# tested
def transverse_dirs(top_dir, type_name):
    paths = []
    for top, dirs, files in os.walk(top_dir):
        for f in files:
            if f.endswith('.{}'.format(type_name)):
                paths.append(os.path.join(top_dir, f))
        for subdir in dirs:
            if subdir.endswith('_{}'.format(type_name)):
                paths.extend(transverse_dirs(top_dir + subdir, type_name))
    return set(paths)

#tested
def write_macro_techsite_map(macro_lef_path, map_path, map_mode):
    '''Parses only TASC library.'''
    macros = []
    techsites = []
    flag = False
    with open(macro_lef_path, 'r') as fi:
        for line in fi:
            if line.startswith('MACRO') and not flag:
                macros.append(line.split()[1])
                flag = True
                continue
            elif line.lstrip().startswith('SITE') and flag:
                techsites.append(line.split()[1])
                flag = False
                continue
    if map_mode == 'a':
        macro_map_in = pd.read_csv(map_path, sep='\t')
        macro_map_new = pd.DataFrame({'macro':macros, 'techsite': techsites})
        macro_map_out = macro_map_in.append(macro_map_new, ignore_index=True)
        # This "inplace" is super important!
        macro_map_out.drop_duplicates(inplace=True)
    else:
        macro_map_out = pd.DataFrame({'macro': macros, 'techsite': techsites})
        
    macro_map_out.to_csv(map_path, sep='\t', index=False)

def get_techsites(lef_path):
   techsites = []
   with open(lef_path, 'r') as fi:
       for line in fi:
           if line.startswith('SITE'):
               techsites.append(line.split()[1])
   return techsites
   
# tested             
# def techsite_in_netlist(map_path, cell_list_path):
#     Map = pd.read_csv(map_path, sep='\t')
#     Map.set_index('macro', inplace=True)
#     techsites = []
#     cells=[]
#     with open(cell_list_path, 'r') as fi:
#         cells = fi.readline().split()
#     for cell in cells:
#         if not cell.startswith('FILL'):
#             site = Map['techsite'][cell]
#             #print site
#             if site not in techsites: 
#                 techsites.append(site)
#     return techsites

   
def cal_max_site_height(techsites, exclude_techsites):
    site_heights = []
    if type(techsites) == list:
        for site in techsites:
            if len(filter(str.isdigit, site)) > 0 and site not in exclude_techsites:
                site_heights.append(int(filter(str.isdigit, site)))
    elif len(filter(str.isdigit, techsites)) > 0 and techsites not in exclude_techsites:
        site_heights.append(int(filter(str.isdigit, techsites)))
    if len(site_heights) == 0:
        return ''
    else:
        return max(1, site_heights)[0]
    
# TODO:.
    #return max(site_heights)
        
# Not used since innovus 17.12 [2018.07.03]
# def create_row_cmd(techsites):
#     cmd_list = []
#     if type(techsites) == list:
#         for site in techsites:
#             cmd_list.append('createRow -site {} -flip1st\n'.format(site))
#     else:
#         cmd_list.append('createRow -site {} -flip1st\n'.format(techsites))
#     return ''.join(cmd_list)

# tested   
def filler_list(filler_lef_path, 
    dont_use_widths=set(), 
    pattern='MACRO\ FILL(\d+)'):
    '''
    function: find fillers from LEF file by pattern matching
    dont_use_widths: set in units of site width
    '''
    fillers = []
    regex = re.compile(pattern)
    with open(filler_lef_path, 'r') as fi:
        for line in fi:
            if not regex.search(line):
                continue
            if ('CAP' not in line) \
            and int(regex.search(line).group(1)) not in dont_use_widths:
                filler_name = line.split()[1]
                fillers.append(filler_name)
    return fillers

def dcap_list(dcap_lef_path, 
    dont_use_widths=set(), 
    pattern='MACRO\ FILLSGCAP(\d+)'):
    '''
    function: find fillers from LEF file by pattern matching.
              use only SGCAP for better freq response
    dont_use_widths: set in units of site width
    '''
    dcaps = []
    regex = re.compile(pattern)
    with open(dcap_lef_path, 'r') as fi:
        for line in fi:
            if not regex.search(line):
                continue
            if int(regex.search(line).group(1)) not in dont_use_widths:
                dcap_name = line.split()[1]
                dcaps.append(dcap_name)
    return dcaps
    
def set_endcap_cmd(num_of_rows, welltaps, endcaps, tbcapnwin, tbcapnwout, cnrnwin, cnrnwout, incnrnwin, incnrnwout, bot_std_rail = 'power'):
    if num_of_rows%2 == 0 and bot_std_rail.lower() == 'power':
        cmd_list = ['setEndCapMode -rightEdge {{{}}}'.format(' '.join(endcaps)), 
                '-rightBottomEdge {{{}}}'.format(' '.join(incnrnwin)), 
                '-rightTopEdge {{{}}}'.format(' '.join(incnrnwin)), 
                '-bottomEdge {{{}}}'.format(' '.join(tbcapnwin)),
                '-topEdge {{{}}}'.format(' '.join(tbcapnwin)),
                '-rightBottomCorner {{{}}}'.format(' '.join(cnrnwin)), 
                '-rightTopCorner {{{}}}'.format(' '.join(cnrnwin)), 
                '-fitGap true']
    elif num_of_rows%2 == 1 and bot_std_rail.lower() == 'power':
        cmd_list = ['setEndCapMode -rightEdge {{{}}}'.format(' '.join(endcaps)), 
                '-rightBottomEdge {{{}}}'.format(' '.join(incnrnwin)), 
                '-rightTopEdge {{{}}}'.format(' '.join(incnrnwout)), 
                '-bottomEdge {{{}}}'.format(' '.join(tbcapnwin)),
                '-topEdge {{{}}}'.format(' '.join(tbcapnwout)),
                '-rightBottomCorner {{{}}}'.format(' '.join(cnrnwin)), 
                '-rightTopCorner {{{}}}'.format(' '.join(cnrnwout)), 
                '-fitGap true']
    elif num_of_rows%2 == 0 and bot_std_rail.lower() == 'ground':
        cmd_list = ['setEndCapMode -rightEdge {{{}}}'.format(' '.join(endcaps)), 
                '-rightBottomEdge {{{}}}'.format(' '.join(incnrnwout)), 
                '-rightTopEdge {{{}}}'.format(' '.join(incnrnwout)), 
                '-bottomEdge {{{}}}'.format(' '.join(tbcapnwout)),
                '-topEdge {{{}}}'.format(' '.join(tbcapnwout)),
                '-rightBottomCorner {{{}}}'.format(' '.join(cnrnwout)), 
                '-rightTopCorner {{{}}}'.format(' '.join(cnrnwout)), 
                '-fitGap true']
    elif num_of_rows%2 == 1 and bot_std_rail.lower() == 'ground':
        cmd_list = ['setEndCapMode -rightEdge {{{}}}'.format(' '.join(endcaps)), 
                '-rightBottomEdge {{{}}}'.format(' '.join(incnrnwout)), 
                '-rightTopEdge {{{}}}'.format(' '.join(incnrnwin)), 
                '-bottomEdge {{{}}}'.format(' '.join(tbcapnwout)),
                '-topEdge {{{}}}'.format(' '.join(tbcapnwin)),
                '-rightBottomCorner {{{}}}'.format(' '.join(cnrnwout)), 
                '-rightTopCorner {{{}}}'.format(' '.join(cnrnwin)), 
                '-fitGap true']
    return ' '.join(cmd_list)

if __name__ == '__main__':

    #------#
    # ULVT #
    #------#
    arm_techsites   = ['sc9mc_cln16fpgl001', 'sc9mc_cln16fpgl001_pg']
    arm_welltaps    = ['FILLTIE14_A9TUL_C16']
    arm_endcaps     = ['ENDCAPTIE10_A9TUL_C16']
    arm_tbcapnwin   = ['TBCAPNWIN1_A9TUL_C16', 'TBCAPNWIN2_A9TUL_C16', \
                       'TBCAPNWIN3_A9TUL_C16', 'TBCAPNWINTIENW16_A9TUL_C16']
    arm_tbcapnwout  = ['TBCAPNWOUT1_A9TUL_C16', 'TBCAPNWOUT2_A9TUL_C16', \
                       'TBCAPNWOUT3_A9TUL_C16', 'TBCAPNWOUTTIEPW16_A9TUL_C16']
    arm_incnrnwin   = ['INCNRCAPNWINTIE10_A9TUL_C16']
    arm_incnrnwout  = ['INCNRCAPNWOUTTIE10_A9TUL_C16']
    arm_cnrnwin     = ['CNRCAPNWINTIENW10_A9TUL_C16']
    arm_cnrnwout    = ['CNRCAPNWOUTTIEPW10_A9TUL_C16']
    #-----#
    # LVT #
    #-----#
    # arm_techsites   = ['sc9mc_cln16fpgl001', 'sc9mc_cln16fpgl001_pg']
    # arm_welltaps    = ['FILLTIE14_A9TL_C16']
    # arm_endcaps     = ['ENDCAPTIE10_A9TL_C16']
    # arm_tbcapnwin   = ['TBCAPNWIN1_A9TL_C16', 'TBCAPNWIN2_A9TL_C16', \
    #                    'TBCAPNWIN3_A9TL_C16', 'TBCAPNWINTIENW16_A9TL_C16']
    # arm_tbcapnwout  = ['TBCAPNWOUT1_A9TL_C16', 'TBCAPNWOUT2_A9TL_C16', \
    #                    'TBCAPNWOUT3_A9TL_C16', 'TBCAPNWOUTTIEPW16_A9TL_C16']
    # arm_incnrnwin   = ['INCNRCAPNWINTIE10_A9TL_C16']
    # arm_incnrnwout  = ['INCNRCAPNWOUTTIE10_A9TL_C16']
    # arm_cnrnwin     = ['CNRCAPNWINTIENW10_A9TL_C16']
    # arm_cnrnwout    = ['CNRCAPNWOUTTIEPW10_A9TL_C16']
    
#    arm_fillers = []

    lef_dirs = transverse_dirs(ip.lef_dir, 'lef')
    for idx, lef_path in enumerate(lef_dirs):
        if idx == 0: write_macro_techsite_map(lef_path, os.path.join(ip.tech_dir, 'macro_site.map'), map_mode='w')
        else: write_macro_techsite_map(lef_path, os.path.join(ip.tech_dir, 'macro_site.map'), map_mode='a')
    # techsites = techsite_in_netlist(os.path.join(ip.tech_dir, 'macro_site.map'),\
                                    # os.path.join(ip.tech_dir,'cells.list'))
    #create_row_str = create_row_cmd(techsites)
    #TODO: Resume when arm.tlef is available
    set_endcap_mode_str = set_endcap_cmd(
    	10, 
    	arm_welltaps, 
    	arm_endcaps, 
    	arm_tbcapnwin, 
    	arm_tbcapnwout, 
    	arm_cnrnwin, 
    	arm_cnrnwout, 
    	arm_incnrnwin, 
    	arm_incnrnwout, 
    	bot_std_rail = 'power')
    
    dcaps = []
    fillers = []
    for idx, lef_path in enumerate(lef_dirs):
        dcaps.extend(dcap_list(lef_path))
        fillers.extend(filler_list(lef_path))
    dcap_str = ' '.join(dcaps)
    filler_str = ' '.join(fillers)
    #create_row_arm_str = create_row_cmd(arm_techsites)
    #TODO: Use later
    #max_site_height = str(cal_max_site_height(techsites, arm_techsites))
    set_filler_mode_str = 'setFillerMode -core {{{} {}}} -corePrefix FILLER\n'.format(dcap_str, filler_str)
    with open(ip.tech_path, 'w') as fo:
        fo.write(write_snap_rule())
        #fo.write(set_dcap_mode_str)
        fo.write(set_filler_mode_str)
        #TODO: Resume when tech.lef arrives 
        fo.write(set_endcap_mode_str)
        
    with open('{}fp.tcl'.format(ip.pnr_dir), 'w') as fo:
        #TODO:
        
        fo.write('floorPlan -r {} {} 0.0 0.0 0.0 0.0\n'.\
                 format(ip.aspect_ratio, ip.area_util))
        # TODO: Resume when arm.tlef is available
        #fo.write(create_row_cmd(arm_techsites[0]))
        #fo.write(create_row_cmd('core'))
        #fo.write(create_row_str)
        fo.write('initCoreRow')
