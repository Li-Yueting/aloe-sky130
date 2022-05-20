proc areaRatio {args} {
  parse_proc_arguments -args $args options
  set g [dbGet -e top.fPlan.groups.name $options(-group) -p]
  
  set xmin 1e20
  set xmax -1
  set ymin 1e20
  set ymax -1

  set grp_members_area 0
  if {[dbGet $g.members.objType] == "hInst" } {set members [dbGet top.insts.name [dbGet $g.members.name]* -p]} else {set members [dbGet $g.members]}
  foreach m $members {
    if {[dbGet $m.box_llx] <$xmin} {set xmin [dbGet $m.box_llx]}
    if {[dbGet $m.box_lly] <$ymin} {set ymin [dbGet $m.box_lly]}

    if {[dbGet $m.box_urx] >$xmax} {set xmax [dbGet $m.box_urx]}
    if {[dbGet $m.box_ury] >$ymax} {set ymax [dbGet $m.box_ury]}
    set grp_members_area [expr $grp_members_area + [dbGet $m.area]]
  }
  set bbx_area [expr [expr $xmax -$xmin] * [expr $ymax - $ymin]]
  set area_ratio [expr $grp_members_area / $bbx_area]
  #Puts "CDNAE-INFO: Group: [dbGet $g.name] has [llength $members] members and area ratio $area_ratio"
  #Puts "$area_ratio"
  return "$area_ratio"
}

define_proc_arguments areaRatio \
  -info "Compute the ratio of the group-elements-cumulated-area to the group-bounding-box-area. \n" \
  -define_args {
    {-group "Group name" "none" string {required}}
  }
