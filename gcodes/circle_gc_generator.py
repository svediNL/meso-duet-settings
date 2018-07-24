import numpy as np
import math 
import shutil
from matplotlib import pyplot as pp
import pprint

# circle coordinate generator
X_OFFSET = 450
Y_OFFSET = 550
X_MAX = 900
Y_MAX = 1140

# Get circle radius
radius = int(raw_input(" > circle radius in mm : "))

#get angle deviation
angle_deviation = int(raw_input(" > circle angle approximation deviation in deg : "))

# Get test feedrate
feedrate = int(raw_input(" > feedrate in mm/min : "))

coords = np.zeros(((360/angle_deviation),2), dtype='float')
feedrates = np.zeros(((360/angle_deviation)), dtype='int')
feedrates[:]= feedrate
feedrates[0]=0.66*feedrate

new_file_string = "circle_r" + str(radius) + "_d" + str(angle_deviation) + "_f" + str(feedrate) + ".gcode"
pprint.pprint(new_file_string)

#calculate x, y coordinates
for n in range((360/angle_deviation)):

	theta = ((n*angle_deviation*2*math.pi)/360)
	coords[n,0] = format(math.cos(theta)*radius, '.2f')
	coords[n,1] = format(math.sin(theta)*radius, '.2f')
	print n*angle_deviation, coords[n,0], coords[n,1], feedrates[n]
fig = pp.figure()
ax1 = fig.add_subplot(1,1,1) 
ax1.grid(True)
ax1.scatter(X_OFFSET+coords[:,0], (Y_MAX-Y_OFFSET)+coords[:,1])
pp.show()

# copy default init gcode
shutil.copyfile('start.gcode', new_file_string)

# build gcode
with open(new_file_string, "a") as f:
	f.write("\n\r")
	f.write("G1 X" + str(X_OFFSET) + " Y" + str(Y_OFFSET) + " F" + str(6000) + "\n\r") #move to centre
	f.write("G1 F" + str(feedrate) + " \n\r")
	#append coords
	i=0
	for point in coords:
		#newline = "G1 X"+ str(X_OFFSET+point[0]) + " Y" + str(Y_OFFSET+point[1]) + " F" + str(feedrates[i]) + " \n\r"
		newline = "G1 X"+ str(X_OFFSET+point[0]) + " Y" + str(Y_OFFSET+point[1]) + " \n\r"
		f.write(newline)
		i+=1