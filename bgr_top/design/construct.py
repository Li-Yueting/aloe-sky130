#! /usr/bin/env python
#=========================================================================
# construct.py
#=========================================================================
# Demo with 16-bit GcdUnit
#
# Author      : Priyanka Raina
# Date        : December 4, 2020
# Modified by : Allen Pan
# Date        : March 15, 2022
from email.policy import default
import os
import sys
from mflowgen.components import Graph, Step
def construct():
  g = Graph()
  g.sys_path.append('/home/users/lyt1314/ee372/aloe-sky130')
  #-----------------------------------------------------------------------
  # Parameters
  #-----------------------------------------------------------------------
  adk_name = 'skywater-130nm-analog-adk'
  adk_view = 'view-standard'
  parameters = {
    'construct_path' : __file__,
    'design_name'    : 'bgr_top',
    'clock_period'   : 10.0,
    'adk'            : adk_name,
    'adk_view'       : adk_view,
    'topographical'  : True,
    # 'dut_name'       : 'GcdUnit_inst'
  }
  #-----------------------------------------------------------------------
  # Create nodes
  #-----------------------------------------------------------------------
  this_dir = os.path.dirname( os.path.abspath( __file__ ) )
  # ADK step
  g.set_adk( adk_name )
  adk = g.get_adk_step()
  # Custom steps
  dummy_dc        = Step( this_dir + '/dummy_dc'                        )
  rtl             = Step( this_dir + '/rtl'                             )
  # constraints     = Step( this_dir + '/constraints'                     )
  init            = Step( this_dir + '/cadence-innovus-init'            )
  # power           = Step( this_dir + '/cadence-innovus-power'           )
  pnr           = Step( this_dir + '/aloe-PnR'           )
  # route           = Step( this_dir + '/cadence-innovus-route'            )
  # Signoff is custom because it has to output def that the default step does
  # not do. This is because we use the def instead of gds for generating spice
  # from layout for LVS
  # signoff         = Step( this_dir + '/cadence-innovus-signoff'         )
  # pt_timing       = Step( this_dir + '/synopsys-pt-timing-signoff'      )
  magic_drc       = Step( this_dir + '/open-magic-drc'                  )
  magic_def2spice = Step( this_dir + '/open-magic-def2spice'            )
  magic_gds2spice = Step( this_dir + '/open-magic-gds2spice'            )
  netgen_lvs_gds  = Step( this_dir + '/netgen-lvs-gds'                  )
  netgen_lvs_gds_device = Step( this_dir + '/netgen-lvs-gds-device'     )
  netgen_lvs_def  = Step( this_dir + '/netgen-lvs-def'                  )
  magic_antenna   = Step( this_dir + '/open-magic-antenna'              )
  calibre_lvs     = Step( this_dir + '/mentor-calibre-comparison'       )
  # macro           = Step( this_dir + '/macro')
  pointer         = Step( this_dir + '/pointer')
  post_sim        = Step( this_dir + '/post-sim')
  #klayout         = Step( this_dir + '/klayout-drc-gds')
  #klayout_drc_gds = Step( this_dir + '/klayout-drc-gds'                 )
  # pt_power        = Step( this_dir + '/synopsys-pt-power')
  # pt_power_rtl    = pt_power.clone()
  # pt_power_gl     = pt_power.clone()
  # pt_power_rtl.set_name( 'ptpx-rtl')
  # pt_power_gl.set_name( 'ptpx-gl')
  # Default steps
  info            = Step( 'info',                          default=True )
  # dc              = Step( 'synopsys-dc-synthesis',         default=True )
  iflow           = Step( 'cadence-innovus-flowsetup',     default=True )
  # init            = Step( 'cadence-innovus-init',          default=True )
  # place           = Step( 'cadence-innovus-place',         default=True )
  # route           = Step( 'cadence-innovus-route',         default=True )
  # power           = Step( 'cadence-innovus-power',     default=True)
  # postroute       = Step( 'cadence-innovus-postroute',     default=True )
  gdsmerge        = Step( 'mentor-calibre-gdsmerge',       default=True )
  #-----------------------------------------------------------------------
  # Graph -- Add nodes
  #-----------------------------------------------------------------------
  g.add_step( info            )
  g.add_step( dummy_dc        )
  g.add_step( rtl             )
  # g.add_step( constraints     )
  # g.add_step( dc              )
  g.add_step( iflow           )
  g.add_step( init            )
  # g.add_step( power           )
  g.add_step( pnr           )
  # g.add_step( route           )
  # g.add_step( postroute       )
  # g.add_step( signoff         )
  g.add_step( gdsmerge        )
  # g.add_step( pt_timing       )
  # g.add_step( pt_power_rtl    )
  # g.add_step( pt_power_gl     )
  g.add_step( magic_drc       )
  g.add_step( magic_antenna   )
  g.add_step( magic_def2spice )
  g.add_step( netgen_lvs_def  )
  g.add_step( magic_gds2spice )
  g.add_step( netgen_lvs_gds  )
  g.add_step( netgen_lvs_gds_device  )
  g.add_step( calibre_lvs     )
  # g.add_step( macro)
  g.add_step( pointer)
  g.add_step( post_sim)
  #g.add_step( klayout)
  #g.add_step( klayout_drc_gds )
  #-----------------------------------------------------------------------
  # Graph -- Add edges
  #-----------------------------------------------------------------------
  # Connect by name
  g.connect_by_name( adk,             iflow           )
  g.connect_by_name( adk,             init            )
  # g.connect_by_name( adk,             power           )
  g.connect_by_name( adk,             pnr           )
  # g.connect_by_name( adk,             route           )
  # g.connect_by_name( adk,             postroute       )
  g.connect_by_name(adk,              pointer         )
  # g.connect_by_name( adk,             signoff         )
  g.connect_by_name( adk,             gdsmerge        )
  g.connect_by_name( adk,             magic_drc       )
  g.connect_by_name( adk,             magic_antenna   )
  g.connect_by_name( adk,             magic_def2spice )
  g.connect_by_name( adk,             magic_gds2spice )
  g.connect_by_name( adk,             netgen_lvs_def  )
  g.connect_by_name( adk,             netgen_lvs_gds  )
  g.connect_by_name( adk,             netgen_lvs_gds_device  )
  g.connect_by_name( adk,             calibre_lvs     )
  # g.connect_by_name( adk,             macro           )
  # g.connect_by_name( adk,             pt_timing       )
  # g.connect_by_name( adk,             pt_power_rtl    )
  # g.connect_by_name( adk,             pt_power_gl     )
  # g.connect_by_name( power,           route           )
  g.connect_by_name( rtl,             dummy_dc        )
  g.connect_by_name( dummy_dc,          iflow           )
  g.connect_by_name( dummy_dc,          init            )
  # g.connect_by_name( dummy_dc,          power           )
  g.connect_by_name( dummy_dc,          pnr           )
  g.connect_by_name( iflow,           init            )
  # g.connect_by_name( iflow,           power           )
  g.connect_by_name( iflow,           pnr               )
  # g.connect_by_name( iflow,           route           )
  # g.connect_by_name( iflow,           postroute       )
  g.connect_by_name( iflow,           pointer           )
  # g.connect_by_name( iflow,           signoff         )
  # Core place and route flow
  g.connect_by_name( init,            pnr               )
  # g.connect_by_name( place,           power           )
  # g.connect_by_name( route,           postroute       )
  # g.connect_by_name( postroute,       signoff         )
  # g.connect_by_name( pnr,       signoff         )
  g.connect_by_name(  pnr,            pointer         )
  g.connect_by_name(  pointer,        gdsmerge        )
  # g.connect_by_name( signoff,         gdsmerge        )
  # DRC, LVS, timing signoff and power signoff
  g.connect_by_name( gdsmerge,        magic_drc       )
  g.connect_by_name( gdsmerge,        magic_antenna   )
  #g.connect_by_name( gdsmerge,        klayout_drc_gds )
  # LVS using DEF
  g.connect_by_name( pointer,         magic_def2spice)
  g.connect_by_name( pointer,         netgen_lvs_def )
  # g.connect_by_name( signoff,         magic_def2spice )
  # g.connect_by_name( signoff,         netgen_lvs_def  )
  g.connect_by_name( magic_def2spice, netgen_lvs_def  )
  # LVS using GDS
  g.connect_by_name( gdsmerge,        magic_gds2spice )
  g.connect_by_name( pointer,         netgen_lvs_gds  )
  g.connect_by_name( pointer,         netgen_lvs_gds_device)
  # g.connect_by_name( signoff,         netgen_lvs_gds  )
  # g.connect_by_name( signoff,         netgen_lvs_gds_device  )
  g.connect_by_name( magic_gds2spice, netgen_lvs_gds  )
  g.connect_by_name( magic_gds2spice, netgen_lvs_gds_device  )
  # LVS comparision using Calibre
  g.connect_by_name( pointer,         calibre_lvs     )
  # g.connect_by_name( signoff,         calibre_lvs     )
  g.connect_by_name( magic_gds2spice, calibre_lvs     )
  g.connect_by_name( pointer,         post_sim        )
  g.connect_by_name( adk,             post_sim        )
  # g.connect_by_name( signoff,         macro         )
  #g.connect_by_name( gdsmerge,           klayout)
  # Timing signoff
  # g.connect( signoff.o('design.spef.gz'),   pt_timing.i('design.spef.gz' ) )
  # g.connect( signoff.o('design.vcs.v'  ),   pt_timing.i('design.vcs.v'   ) )
  # g.connect( dc.o(     'design.sdc'    ),   pt_timing.i('design.pt.sdc'  ) )
  # Gate level simulation
  # g.connect( signoff.o('design.spef.gz'),   pt_power_rtl.i('design.spef.gz' ) )
  # g.connect( signoff.o('design.vcs.v'  ),   pt_power_rtl.i('design.vcs.v'   ) )
  # g.connect( dc.o(     'design.sdc'    ),   pt_power_rtl.i('design.pt.sdc'  ) )
  # g.connect( dc.o(     'design.namemap'),   pt_power_rtl.i('design.namemap' ) )
  # g.connect( signoff.o('design.spef.gz'),   pt_power_gl.i('design.spef.gz' ) )
  # g.connect( signoff.o('design.vcs.v'  ),   pt_power_gl.i('design.vcs.v'   ) )
  # g.connect( dc.o(     'design.sdc'    ),   pt_power_gl.i('design.pt.sdc'  ) )
  #-----------------------------------------------------------------------
  # Parameterize
  #-----------------------------------------------------------------------
  g.update_params( parameters )
  return g
if __name__ == '__main__':
  g = construct()
  g.plot()
