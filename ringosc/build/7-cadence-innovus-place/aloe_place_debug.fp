###############################################################
#  Generated by:      Cadence Innovus 20.13-s083_1
#  OS:                Linux x86_64(Host ID rice-503-20-north)
#  Generated on:      Mon May 16 00:25:31 2022
#  Design:            ringosc
#  Command:           saveFPlan aloe_place_debug.fp
###############################################################

Version: 8

Head Box: 0.0000 0.0000 127.4200 76.1600
IO Box: 0.0000 0.0000 127.4200 76.1600
Core Box: 28.9800 28.5600 98.4400 47.3600
UseStdUtil: false

######################################################
#  DesignRoutingHalo: <space> <bottomLayerName> <topLayerName>
######################################################

######################################################
#  Core Rows Parameters:                             #
######################################################
Row Spacing = 0.000000
Row SpacingType = 2
Row Flip = 1
Core Row Site: unitasc 

##############################################################################
#  DefRow: <name> <site> <x> <y> <orient> <num_x> <num_y> <step_x> <step_y>  #
##############################################################################
DefRow: ROW_1 unitasc 28.9800 37.9600 FS 141 1 0.4900 0.0000
DefRow: ROW_0 unitasc 28.9800 28.5600 N 141 1 0.4900 0.0000

############################################################################################
#  Track: dir start number space layer_num layer1 [firstColor] [isSameColor] [width] [rule]#
############################################################################################
Track: X 0.9200 184 0.6900 1 6
Track: Y 3.1100 20 3.6600 1 6
Track: Y 0.6700 124 0.6100 1 5
Track: X 0.9200 184 0.6900 1 5
Track: X 0.2300 277 0.4600 1 4
Track: Y 0.6700 124 0.6100 1 4
Track: Y 0.1700 224 0.3400 1 3
Track: X 0.2300 277 0.4600 1 3
Track: X 0.2300 277 0.4600 1 2
Track: Y 0.1700 224 0.3400 1 2
Track: Y 0.1700 224 0.3400 1 1
Track: X 0.2300 277 0.4600 1 1

######################################################
#  GCellGrid: dir start number space                 #
######################################################
GCellGrid: X 124.4300 2 2.9900
GCellGrid: X 0.2300 28 4.6000
GCellGrid: X 0.0000 2 0.2300
GCellGrid: Y 74.9700 2 1.1900
GCellGrid: Y 0.1700 23 3.4000
GCellGrid: Y 0.0000 2 0.1700

###############################1p########################
#  <SelectiveBlockage>                                #
#     <cell name="cell_name" />                     #
#  </SelectiveBlockage                                #
#######################################################

######################################################
#  ScanGroup: groupName startPin stopPin             #
######################################################

######################################################
#  JtagCell:  leafCellName                           #
#  JtagInst:  <instName | HInstName>                 #
######################################################

#########################################################
#  PhysicalNet: <name> [-pwr|-gnd|-tiehi|-tielo]        #
#########################################################
PhysicalNet: VNW -pwr
PhysicalNet: VDDPST -pwr
PhysicalNet: POC -pwr
PhysicalNet: VDDCE -pwr
PhysicalNet: VDDPE -pwr
PhysicalNet: VPW -gnd
PhysicalNet: VSSPST -gnd
PhysicalNet: VSSE -gnd

#####################################################################################
# <PGNets>                                                                          #
#    <PGNet name="net_name">                                                        #
#       <HNet name="hnet_name">                                                     #
#          <Port hinst="hinst_name" name="port_name" direction="in|out|inout" />    #
#       </HNet>                                                                     #
#    </PGNet>                                                                       #
# </PGNets>                                                                         #
#####################################################################################
<PGNets>
   <PGNet name="VSS">
      <HNet name="VSS">
         <Port hinst="-" name="VSS" direction="inout" />
      </HNet>
   </PGNet>
   <PGNet name="VDD">
      <HNet name="VDD">
         <Port hinst="-" name="VDD" direction="inout" />
      </HNet>
   </PGNet>
</PGNets>

#########################################################
#  PhysicalInstance: <name> <cell> <orient> <llx> <lly> #
#########################################################

######################################################
#  SpareCell: cellName                               #
#  SpareInst: instName                               #
######################################################

#####################################################################
#  Group: <group_name> <nrHinst> [-isPhyHier]                       #
#    <inst_name>                                                    #
#    ...                                                            #
#####################################################################

#####################################################################
#  Fence:  <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  Region: <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  Guide:  <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  SoftGuide: <name>                                                #
#    ...                                                            #
#####################################################################

###########################################################################
#  <Constraints>                                                          #
#     <Constraint  type="fence|guide|region|softguide"                    #
#                  readonly=1  name="blk_name">                           #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                               #
#     </Constraint>                                                       #
#  </Constraints>                                                         #
###########################################################################

###########################################################################
#  <macro_place_constraint>                                               #
#          ...                                                            #
#  </macro_place_constraint>                                              #
###########################################################################

######################################################################################
#  BlackBox: -cell <cell_name> { -size <x> <y> |  -area <um^2> | \                  #
#            -gatecount <count> <areapergate> <utilization> | \                     #
#            {-gateArea <gateAreaValue> [-macroArea <macroAreaValue>]} } \          #
#            [-minwidth <w> | -minheight <h> | -fixedwidh <w> | -fixedheight <h>] \ #
#            [-aspectratio <ratio>]                                                  #
#            [-boxList <nrConstraintBox>                                             #
#              ConstraintBox: <llx> <lly> <urx> <ury>                                #
#              ... ]                                                                 #
######################################################################################

#######################################################################################
#  <Blackboxes>                                                                       #
#     <Blackbox  cell=name  width=N height=N                                          #
#                { area=A | gatecount=N areaPerGate=A cellUtil=F |                    #
#                  gateArea=F {macroArea=F | macorList='str'} includeMacroArea={0|1}} #
#                [minWidth=N | minHeight=N | fixedWidh=N | fixedHeight=N]             #
#                [aspectRatio=R] >                                                    #
#         <Box llx=float lly=float urx=float ury=float /> ...                         #
#     </Blackbox>                                                                     #
#  </Blackboxes>                                                                      #
#######################################################################################

######################################################
#  Instance: <name> <orient> <llx> <lly>             #
######################################################

#################################################################
#  Block: <name> <orient> [<llx> <lly>]                         #
#         [<haloLeftMargin>  <haloBottomMargin>                 #
#          <haloRightMargin> <haloTopMargin> <haloFromInstBox>] #
#         [<IsInstDefCovered> <IsInstPreplaced>]                #
#                                                               #
#  Block with INT_MAX loc is for recording the halo block with  #
#  non-prePlaced status                                         #
#################################################################

###########################################################################
#  BlockRoutingHalo: <name> <space> <bottomLayer> <topLayer> <-lithoHalo> #
###########################################################################

######################################################
#  BlockLayerObstruct: <name> <layerX> ...           #
######################################################

######################################################
#  FeedthroughBuffer: <instName>                     #
######################################################

###########################################################################
#  <HierarchicalPartitions>                                               #
#     <GlobalPinConstraints>                                              #
#         <PinSpacing spacing=val />                                      #
#         <PinSpacing layer=layerId spacing=val />                        #
#         <PinWidth layer=layerId width=val />                            #
#         <PinDepth layer=layerId depth=val />                            #
#         <CornerToPinDistance distance=val />                            #
#     </GlobalPinConstraints>                                             #
#     <CellPtnCut name="name" cuts=Num >                                  #
#        <Box llx=11.0 lly=22.0 urx=33.0 ury=44.0 /> ...                  #
#     </CellPtnCut>                                                       #
#     <NetGroup name="group_name" nets=val spacing=val isOptOrder=val   #
#         isAltLayer=val isPffGroup=val isSpreadPin=val                   #
#         isExcludeAllLayer=val isExcludeSameLayer=val keepOutDistance=val#
#         isPureExclude=val isCompactArea=val isMixedSignal=val >         #
#         <Net name="net_name" /> ...                                   #
#     </NetGroup>                                                         #
#     <Partition name="ptn_name"  hinst="name"                            #
#         coreToLeft=fval coreToRight=fval coreToTop=fval                 #
#         coreToBottom=val pinSpacingNorth=val pinSpacingWest=val         #
#         pinSpacingSouth=val pinSpacingEast=val  blockedLayers=xval >    #
#         <TrackHalfPitch Horizontal=val Vertical=val />                  #
#         <SpacingHalo left=10.0 right=11.0 top=11.0 bottom=11.0 />       #
#         <Clone hinst="hinst_name" orient=R0|R90|... />                  #
#         <PinLayer side="N|W|S|E" Metal1=yes Metal2=yes ... />           #
#         <RowSize cellHeight=1.0 railWidth=1.0 />                        #
#         <DefaultTechSite name="core" />                                   #
#         <RoutingHalo sideSize=11.0 bottomLayer=M1 topLayer=M2  />       #
#         <SpacingHalo left=11.0 right=11.0 top=11.0 bottom=11.0 />       #
#         <PinToCornerDistance  totalCorners=nrCorners >                  #
#            <Corner number=<cornerNumber> distance=<distance> /> ...     #
#         </PinToCornerDistance >                                         #
#         <PinSpacingArea llx=val lly=val urx=val ury=val spacing=val />  #
#         <LayerWidthDepth layer=layerId width=w depth=d spacing=val />   #
#         <PinConstraint>                                                 #
#            <Pin name="pinName" >                                      #
#               <edge2 edgeMap=val />                                    #
#               <spacing space=val />                                    #
#               <layer layerMap=xval />                                  #
#               <pinWidth width=val />                                   #
#               <pinDepth depth=val />                                   #
#               <location x=val y=val />                                 #
#            </Pin>                                                       #
#         </PinConstraint>                                                #
#     </Partition>                                                        #
#     <CellPinGroup name="group_name" cell="cell_name" pins=nr        #
#         spacing=val isOptOrder=val isAltLayer=val isSpreadPin=val       #
#         isExcludeAllLayer=val isExcludeSameLayer=val keepOutDistance=val#
#         isPureExclude=val isCompactArea=val >                           #
#         <GroupFTerm name="term_name" /> ...                             #
#     </CellPinGroup>                                                     #
#     <PartitionPinBlockage layerMap=x llx=1 lly=2 urx=3 ury=4 name="n" />#
#     <PinGuide name="name" boxes=num layerPriority=val cell="name" >     #
#        <Box llx=11.0 lly=22.0 urx=33.0 ury=44.0 layer=id /> ...         #
#     </PinGuide>                                                         #
#  </HierarchicalPartitions>                                              #
###########################################################################
<HierarchicalPartitions>
    <GlobalPinConstraints>
        <PinSpacing spacing=2 />
        <CornerToPinDistance distance=5 />
    </GlobalPinConstraints>
    <Partition name="ringosc" hinst="" coreToLeft=0.0000 coreToRight=0.0000 coreToTop=0.0000 coreToBottom=0.0000 pinSpacingNorth=-1 pinSpacingWest=-1 pinSpacingSouth=-1 pinSpacingEast=-1 blockedLayers=0x3f orient=R0>
	<PinLayer side="N" Metal3=yes Metal5=yes />
	<PinLayer side="W" Metal2=yes Metal4=yes Metal6=yes />
	<PinLayer side="S" Metal3=yes Metal5=yes />
	<PinLayer side="E" Metal2=yes Metal4=yes Metal6=yes />
    <PinToCornerDistance totalCorners=4 >
      <Corner number=0 distance=-1 />
      <Corner number=1 distance=-1 />
      <Corner number=2 distance=-1 />
      <Corner number=3 distance=-1 />
    </PinToCornerDistance>
    </Partition>
</HierarchicalPartitions>

####################################################################################
#  <PlacementBlockages>                                                            #
#     <Blockage name="blk_name" type="hard|soft|partial">                      #
#       <Attr density=1.2 excludeFlops=yes inst="inst_name" pushdown=yes />      #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                                        #
#     </Blockage>                                                                  #
#  </PlacementBlockages>                                                           #
####################################################################################

#################################################################
#  <SizeBlockages>                                             #
#     <Blockage name="blk_name">                              #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                     #
#     </Blockage>                                               #
#  </SizeBlockages>                                            #
#################################################################

##########################################################################################################################
#  <RouteBlockages>                                                                                                      #
#     <Blockage name="blk_name" type="User|RouteGuide|PtnCut|WideWire">                                              #
#       <Attr spacing=1.2 drw=1.2 inst="name" pushdown=yes fills=yes exceptpgnet=yes pgnetonly=yes coreeolblkg=yes />  #
#       <Layer type="route|cut|masterslice" id=layerNo />                                                              #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                                                                              #
#       <Poly points=nr x0=1 y0=1 x1=2 y2=2 ...  />                                                                      #
#     </Blockage>                                                                                                        #
#  </RouteBlockages>                                                                                                     #
##########################################################################################################################

######################################################
#  NetWeight: <net_name> <weight (in integer)>       #
######################################################

###########################################################################################
# NetbottomPreferredRoutingLayer:  <net_name> <bottomPreferredRoutingLayer (in integer)>  #
###########################################################################################

################################################################
# NetAvoidDetour:  <net_name>  < avoidDetour  { 1| 0}>   #
################################################################

#################################################################
#  SprFile: <file_name>                                         #
#################################################################
SprFile: aloe_place_debug.fp.spr

###################################################################################################################
#  PGPin: <pin> <net> {in|out|inout} {pwr|gnd|-} {placed|fixed|-} <x> <y> <side> <layerId> <nrBox> <NETEXPR=""> #
#    PinBox: <llx> <lly> <urx> <ury>                                                                              #
#    PinPoly: <nrPts> <x1> <y1> <x2> <y2>...<xn> <yn>                                                             #
###################################################################################################################
PGPin: VDD VDD inout pwr fixed 127.4200 57.3600 E 6 1
  PinBox: 123.4200 55.3600 127.4200 59.3600 -lyr 6
PGPin: VDD VDD inout pwr fixed 0.0000 57.3600 W 6 1
  PinBox: 0.0000 55.3600 4.0000 59.3600 -lyr 6
PGPin: VDD VDD inout pwr fixed 127.4200 18.5600 E 6 1
  PinBox: 123.4200 16.5600 127.4200 20.5600 -lyr 6
PGPin: VDD VDD inout pwr fixed 0.0000 18.5600 W 6 1
  PinBox: 0.0000 16.5600 4.0000 20.5600 -lyr 6
PGPin: VDD VDD inout pwr fixed 108.0700 76.1600 N 5 1
  PinBox: 106.0700 72.1600 110.0700 76.1600 -lyr 5
PGPin: VDD VDD inout pwr fixed 108.0700 0.0000 S 5 1
  PinBox: 106.0700 0.0000 110.0700 4.0000 -lyr 5
PGPin: VDD VDD inout pwr fixed 18.9800 76.1600 N 5 1
  PinBox: 16.9800 72.1600 20.9800 76.1600 -lyr 5
PGPin: VDD VDD inout pwr fixed 18.9800 0.0000 S 5 1
  PinBox: 16.9800 0.0000 20.9800 4.0000 -lyr 5
PGPin: VSS VSS inout gnd fixed 127.4200 69.3600 E 6 1
  PinBox: 123.4200 67.3600 127.4200 71.3600 -lyr 6
PGPin: VSS VSS inout gnd fixed 0.0000 69.3600 W 6 1
  PinBox: 0.0000 67.3600 4.0000 71.3600 -lyr 6
PGPin: VSS VSS inout gnd fixed 127.4200 6.5600 E 6 1
  PinBox: 123.4200 4.5600 127.4200 8.5600 -lyr 6
PGPin: VSS VSS inout gnd fixed 0.0000 6.5600 W 6 1
  PinBox: 0.0000 4.5600 4.0000 8.5600 -lyr 6
PGPin: VSS VSS inout gnd fixed 120.0700 76.1600 N 5 1
  PinBox: 118.0700 72.1600 122.0700 76.1600 -lyr 5
PGPin: VSS VSS inout gnd fixed 120.0700 0.0000 S 5 1
  PinBox: 118.0700 0.0000 122.0700 4.0000 -lyr 5
PGPin: VSS VSS inout gnd fixed 6.9800 76.1600 N 5 1
  PinBox: 4.9800 72.1600 8.9800 76.1600 -lyr 5
PGPin: VSS VSS inout gnd fixed 6.9800 0.0000 S 5 1
  PinBox: 4.9800 0.0000 8.9800 4.0000 -lyr 5

#####################################################################
#  <Property>                                                       #
#     <obj_type name="inst_name" >                                  #
#       <prop name="name" type=type_name value=val />               #
#       <Attr name="name" type=type_name value=val />               #
#     </obj_type>                                                   #
#  </Property>                                                      #
#  where:                                                           #
#       type is data type: Box, String, Int, PTR, Loc, double, Bits #
#       obj_type are: inst, Design, instTerm, Bump, cell, net       #
#####################################################################
<Properties>
  <Design name="ringosc">
	<prop name="flow_implementation_stage" type=String value="place_opt" def=yes />
	<prop name="CUT_ROWS" type=Int value=0 />
  </Design>
</Properties>

###########################################################$############################################################################################
#  GlobalNetConnection: <net_name> {-pin|-instanceBasename|-net} <base_name_pattern> -type {pgpin|net|tiehi|tielo} {-all|-module <name>|-region <box>} [-override] #
########################################################################################################################################################
GlobalNetConnection: VDD -pin VPWR -instanceBasename * -type pgpin -all
GlobalNetConnection: VSS -pin VGND -instanceBasename * -type pgpin -all

################################################################################
#  NetProperties: <net_name> [-special] [-def_prop {int|dbl|str} <value>]...   #
################################################################################

##################################################################################
#    Feedthru info:                                                              #
# <Feedthrus>                                                                    #
#   <Feedthru>                                                                   #
#       <tsv llx=n lly=n urx=n ury=n />                                          #
#       <stackvia layer=z llx=n lly=n urx=n ury=n />                             #
#       <bump front=name back=name  />                                           #
#   </Feedthru>                                                                  #
#   <Feedthru>                                                                   #
#   <...>                                                                        #
#   </Feedthru>                                                                  #
# </Feedthrus>                                                                   #
################################################################################
