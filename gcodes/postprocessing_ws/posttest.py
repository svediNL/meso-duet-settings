#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys
import os
import re
import argparse
import math
import tempfile

# /Users/svedi/Documents/GitHub/meso-duet-settings/gcodes/postprocessing_ws/posttest.py

def find_E_pos(line):
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

	return startIndex, length


def get_E_param(line):
	pos,  length = find_E_pos(line)
	return float(line[pos+1:pos+length-1])

def build_new_line(line, setting=0):
	pos, length = find_E_pos(line)
	extrVal = get_E_param(line)
	editedLine = ""

	if setting is 1:
		# retract E0:1
		editedLine += line[:pos+1] 
		editedLine += "0:" 
		editedLine += str(extrVal) 
		editedLine += line[pos+length :]
		return str(editedLine)
	elif setting is 2:
		# retract E1:0
		editedLine += line[:pos+1] 
		editedLine += str(extrVal) 
		editedLine += ":0" 
		editedLine += line[pos+length :]
		return str(editedLine)
	else:
		return ""


# manipulation mode:
# 0: remove retraction
# 1: E0:1:1:1 retraction
# 2: E1:1:1:0 retraction
mode = 1

# use file in local directory 
filePath=sys.argv[1]

def main():

	# create output file destin
	inFile = open(filePath, "r")
	outFile = open(filePath+".fixed", "w")

	for line in inFile:
		if re.search("E-", line) is not None:
			addLine =  build_new_line(line, mode)
			outFile.write( addLine )
		else:
			outFile.write(line)

	inFile.close()
	outFile.close()

	os.rename(filePath + ".fixed", filePath)

if __name__ == "__main__":
    main()
