print("************************************")
print("replacing pnp strings now ...")
# creating a variable and storing the text that we want to search
search_text = "sky130_fd_pr__pnp_05v5 area=0p"
# creating a variable and storing the text that we want to add
replace_text = "sky130_fd_pr__pnp_05v5_W3p40L3p40"
  
# Opening our text file in read only
# mode using the open() function
with open('outputs/design_extracted.spice', 'r') as file:
    data = file.read()
    data = data.replace(search_text, replace_text)

with open('outputs/design_extracted.spice', 'w') as file:
    file.write(data)

print("... finished pnp strings")
print("************************************")
# # Printing Text replaced
# print("Text replaced")
# reading_file = open("./outputs/design_extracted.spice", "r")

# new_file_content = ""
# for line in reading_file:
#   stripped_line = line.strip()
#   new_line = stripped_line.replace("sky130_fd_pr__pnp_05v5 area=0p", "sky130_fd_pr__pnp_05v5_W3p40L3p40")
#   new_file_content += new_line +"\n"
# reading_file.close()

# writing_file = open("./outputs/design_extracted.spice", "w")
# writing_file.write(new_file_content)
# writing_file.close()