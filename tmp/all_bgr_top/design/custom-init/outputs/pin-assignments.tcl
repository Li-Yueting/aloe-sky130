# Placing pins clockwise starting from top left

# Pins on the top side, going left to right


# Pins on the right side, going top to bottom

#set pins_right {\
  {out} \
  {so} \
}

# Pins on the bottom side, going right to left


# Pins on the left side, going bottom to top

set pins_right {\
  {out_va} \
  {out_vb} \
}

#editPin -layer met3 -pin $pins_right  -side RIGHT  -spreadType SIDE
editPin -layer met3 -pin $pins_right -side RIGHT  -spreadType SIDE
editPin -layer met3 -pin out_vbgr -assign 599 310
editPin -layer met3 -pin porst[0] -assign 599 89