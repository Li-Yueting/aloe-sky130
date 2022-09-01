import os
path = "../../interface"
dirs = os.listdir(path)
dirs.sort()
for dir in dirs:
    if dir.startswith("gen"):
        print(dir)