fpiSetSnapRule -grid InstanceGrid -for CORE
fpiSetSnapRule -grid InstanceGrid -for DIE
fpiSetSnapRule -grid InstanceGrid -for IOP
setFillerMode -core { } -corePrefix FILLER
setEndCapMode -rightEdge {ENDCAPTIE10_A9TUL_C16} -rightBottomEdge {INCNRCAPNWINTIE10_A9TUL_C16} -rightTopEdge {INCNRCAPNWINTIE10_A9TUL_C16} -bottomEdge {TBCAPNWIN1_A9TUL_C16 TBCAPNWIN2_A9TUL_C16 TBCAPNWIN3_A9TUL_C16 TBCAPNWINTIENW16_A9TUL_C16} -topEdge {TBCAPNWIN1_A9TUL_C16 TBCAPNWIN2_A9TUL_C16 TBCAPNWIN3_A9TUL_C16 TBCAPNWINTIENW16_A9TUL_C16} -rightBottomCorner {CNRCAPNWINTIENW10_A9TUL_C16} -rightTopCorner {CNRCAPNWINTIENW10_A9TUL_C16} -fitGap true
