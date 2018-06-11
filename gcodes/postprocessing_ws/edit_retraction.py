#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys
import os
import re
import argparse
import math
import tempfile

# https://github.com/svediNL/meso-duet-settings

# /Users/svedi/Documents/GitHub/meso-duet-settings/gcodes/postprocessing_ws/edit_retraction.py

# # PREPENDABLE VARIABLES IN G-CODE:
# - E_USED:		set number of extruders used
# - MODE:		set replacement mode
# - E_RED:		reduction faction of rudder extruder when mode 3/4 is used

# replacement mode:
# 0: remove all retraction
# 1: E0:1:1:1 disable rudder retraction
# 2: E1:1:1:0 disable rudder retraction
# 3: Ex:1:1:1 reduce rudder retraction
# 4: E1:1:1:x reduce rudder retraction

# declaration of G-code class which contains (specified) variables and search-and-replace functions
class gcode(object):

	#initiation of variables
	def __init__(self):
		self.inFile = None
		self.outFile = None

		self.extruders = 4
		self.mode = 1
		self.reduction = 0.1

	# search for variables given in the gcode
	def searchVars(self):

		# iterate through lines
		for line in self.inFile.readlines():
			i=len(line) - 1
			if re.search("start_gcode", line) is None :

				## if a known variable was found, add it to the class
				if re.search("E_USED", line) is not None:
					for c in reversed(line):
						if c is " ":
							print repr(line)
							self.extruders = int(line[i:])
							break
						i-=1

				if re.search("MODE", line) is not None:
					for c in reversed(line):
						if c is " ":
							print repr(line)
							self.mode = int(line[i:])
							break
						i-=1
				if re.search("E_RED", line) is not None:
					for c in reversed(line):
						if c is " ":
							print repr(line)
							self.reduction = float(line[i:])
							break
						i-=1

		self.inFile.seek(0) # reset iterator

	# execute post processing of gcode
	def doPost(self, infile, outfile):

		# initiate class variables
		self.inFile = infile
		self.outFile = outfile
		self.searchVars()

		# iterate though lines...
		for line in self.inFile.readlines():
			# if "E-" string was found...
			if re.search("E-", line) is not None:
				# ...build new retraction line and add to new file
				addLine =  self.build_retraction_line(line)
				self.outFile.write( addLine )

			else:
				# ...else write existing line
				self.outFile.write(line)

		self.inFile.seek(0) # reset iterator

	# find  position  and  length  of retraction command
	def find_retraction_pos(self, line):
		i=0
		startIndex = -1
		endIndex = -1
		length = 0

		for c in line:
			# get firstIndex by finding the index of 'E' character in line
			if c is 'E':
				startIndex = i
			# get lastIndex by finding ' ' or '\n' after firstIndex has been found
			if c is (' ' or '\n') and (startIndex is not -1):
				endIndex = i-1
				length = endIndex - startIndex +1
				break
			i = i+1 

		return startIndex, length

	# get retraction value as a float
	def get_retraction_param(self, line):
		pos,  length = self.find_retraction_pos(line)
		return float(line[pos+1:pos+length-1])

	# build replacement line
	def build_retraction_line(self, line):
		pos, length = self.find_retraction_pos(line)
		extrVal = self.get_retraction_param(line)
		editedLine = ""

		# MODE = 1 -> E0:1:1:1
		if self.mode is 1:
			#prepend COMMAND E...
			editedLine += line[:pos+1] 		

			#build E parameter
			editedLine += "0"
			for n in range(self.extruders-1):
				editedLine += ":"
				editedLine += str(extrVal)

			#append FEEDRATE
			editedLine += line[pos+length :]	
			return str(editedLine)

		# MODE = 2 -> E1:1:1:0
		elif self.mode is 2:
			#prepend COMMAND E...
			editedLine += line[:pos+1]

			#build E parameter
			for n in range(self.extruders-1):
				editedLine += str(extrVal) 
				editedLine += ":"
			editedLine += "0" 

			#append FEEDRATE
			editedLine += line[pos+length :]	
			return str(editedLine)

		# MODE = 3 -> Ex:1:1:1
		elif self.mode is 3:
			#prepend COMMAND E...
			editedLine += line[:pos+1] 			
			
			#build E parameter
			editedLine += str(extrVal*self.reduction)
			for n in range(self.extruders-1):
				editedLine += ":"
				editedLine += str(extrVal)

			#append FEEDRATE
			editedLine += line[pos+length :]	
			return str(editedLine)

		# MODE = 4 -> E1:1:1:x
		elif self.mode is 4:
			#prepend COMMAND E...
			editedLine += line[:pos+1] 			

			#build E parameter
			for n in range(self.extruders-1):
				editedLine += str(extrVal) 
				editedLine += ":"
			editedLine += str(extrVal*self.reduction)

			#append FEEDRATE
			editedLine += line[pos+length :]	
			return str(editedLine)

		else:
			return ""

# main function that is excecuted by SLIC3R
def main():

	# use file in local directory 
	filePath=sys.argv[1]

	# create output file destin
	with open(filePath, "r") as gin, open(filePath+".fixed", "w+") as gout:
		
		gcode().doPost(gin, gout)

		gin.close()
		gout.close()

	os.rename(filePath + ".fixed", filePath) #delete temporary outFile

if __name__ == "__main__":
    main()
