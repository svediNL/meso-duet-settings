import numpy as np
import math 
import shutil
from matplotlib import pyplot as pp
import pprint

# square coordinate generator

# Get circle radius
size = int(raw_input(" > square size in mm : "))

# Get test feedrate
feedrate = int(raw_input(" > feedrate in mm/min : "))
coords = np.zeros((5,2), dtype='float')

new_file_string = "square_l" + str(radius) + "_f" + str(feedrate) + ".gcode"
pprint.pprint(new_file_string)

#calculate x, y coordinates
for n in range(4):

	coords[n,0] = format(math.cos(theta)*radius, '.2f')
	coords[n,1] = format(math.sin(theta)*radius, '.2f')
	print n*angle_deviation, coords[n,0], coords[n,1]

pp.scatter(450+coords[:,0], 1140-500+coords[:,1])
pp.show()

# copy default init gcode
shutil.copyfile('start.gcode', new_file_string)

# build gcode
with open(new_file_string, "a") as f:
	f.write("\n\r")
	f.write("G1 X450 Y-500 F6000 \n\r") #move to centre

	#append coords
	for point in coords:
		newline = "G1 X"+ str(point[0]) + " Y" + str(point[1]) + " F" + str(feedrate) + " \n\r"
		f.write(newline)