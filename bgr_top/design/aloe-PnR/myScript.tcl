# $argv is a list of all the argument values

# Print as single string
puts $argv

# Iterate through each value and print on separate lines
foreach argValue $argv {
   puts $argValue
}

# # Access a specific element (zero-based index)
# puts [lindex $argv 0] ;# First
# puts [lindex $argv 1] ;# Second