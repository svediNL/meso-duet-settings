
def get_file_length(fname):
	counter = 0
	with open(fname) as f:
		#cycle though indices
		for index, line in enumerate(f):
			# for c in line:

			if line.find('E-')>0:
				print line
				counter = counter + 1

			# counter = index
		return counter

def find_retraction()

filePath='/Users/sventemp/Documents/GitHub/meso-duet-settings/test_gcodes/sample.gcode' 

print get_file_length(filePath)

# f = open(filePath, 'w')

# f.prepend('hi there\n') # python will convert \n to os.linesep 
# f.close()