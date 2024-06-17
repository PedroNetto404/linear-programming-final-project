import glob
import os

def read_instances():
    instances = []
    
    paths = os.path.join("./inputs", "*.txt")

    for file in glob.glob(paths):
        with open(file, "r") as file:
            lines = file.readlines()
            
            places_count = int(lines[0].strip())
            places = []
            
            for line in lines[1:]:
                data = list(map(int, line.strip().split()))
                x, y, m, d = data[0], data[1], data[2], data[3]
                places.append((x, y, m, d))
                
            instances.append(places)
    
    return instances