import sys
import re

def findEPos(line):
	i=0
	startIndex = -1
	endIndex = -1
	length = 0
	for c in line:
		if c is 'E':
			startIndex = i
		elif c is (' ' or '\n') and (startIndex>-1):
			endIndex = i-1
			length = endIndex - startIndex +1
		i = i+1 
	print startIndex
	print endIndex

	return startIndex, length

def get_E_param(line):
	pos,  length = findEPos(line)
	return float(line[pos+2:pos+length-1])



sea = re.compile("M106 S[1-9]+[0-9]*")
rep = re.compile("M106 S255\n\g<0>")

filePath='/Users/sventemp/Documents/GitHub/meso-duet-settings/test_gcodes/postprocessing_ws/thing' 

# create output file destin
out = open(filePath+"_fixed"+".gcode", 'w')

with open(filePath+".gcode") as f:
    for line in f:
      if re.search("E-", line) is not None:
      	print get_E_param(line)
        out.write(line)
      else:
        out.write(line)