pi = 22/7

class Pushrod():
	"""contains properties of the pushrod"""
	def __init__(self):
		self.pitch = 2.5		# in [mm/revolution]
		self.volume = 14.65	# in [mm^3]
		self.thread_length = 10.0 			# in [mm]
		self.revolutions = 4

	def setParameters(self):
		self.pitch = float( getValue( " ? Thread pitch of the pushrod 	[mm/rev] : " , self.pitch ) )
		self.volume = float( getValue(" ? Volume of the threaded pushrod [mm^3] : ", self.volume ) )
		self.thread_length = float( getValue(" ? Length of the threaded section [mm]	 : ", self.thread_length ) )

		self.setRevolutions()

	def setRevolutions(self):
		self.revolutions = self.thread_length / self.pitch

class Barrel():
	"""contains properties of the Barrel"""
	def __init__(self):
		self.mixing_length = 7.0		# in [mm]
		self.diameter = 3.0	# in [mm]
		self.length = 10.0
		self.volume = 70.68

	def setVolume(self):
		self.volume = self.length * pi * pow((self.diameter / 2), 2)

	def setParameters(self):
		self.diameter = float( getValue(" ? Inner diameter of the barrel [mm]	 : " , self.diameter ) )
		self.mixing_length = getValue( " ? Height from nozzle to centre of filament entrance [mm] : ",  self.mixing_length)

		self.setVolume()

class Extruder():
	"""contains properties of entire extruder"""
	def __init__(self):
		self.barrel = Barrel()
		self.pushrod = Pushrod()
		self.mixing_volume = -1.0

		self.nozzle_diameter = 1	# in [mm]
		self.microstepping = 16
		self.motor_resolution = 3200		# in [steps/revolution]

	def setMotorResolution(self):
		self.microstepping = int(getValue(" ? Microstepping on motor 	[ 1, 2, 4, 8, ... ]	: " , self.microstepping))
		self.motor_resolution=200* self.microstepping

	def calcVolumePerStep(self):
		return self.mixing_volume / self.pushrod.revolutions 

	def setMixingVolume(self):
		self.mixing_volume = (self.barrel.mixing_length / self.pushrod.thread_length) * ( self.barrel.volume - self.pushrod.volume )

def getValue(questionString, var):
	value = raw_input(questionString)
	#check if value is a digit
	if value.replace('.', '', 1).isdigit():
		var = float(value)
		print " ~ " , var
	else:
		var = var
		print " ~ default value : " , var

	return var

def main():
	print ""
	print "             PUSHROD / RUDDER   EXTRUSION FACTOR   CALCULATOR "
	print ""
	print "            - CALCULATE THE VOLUMETRIC  EXTRUSION RESOLUTION - "
	print "            -          AND THE FILAMENT  EQUIVALENT          - "
	print ""
	print " 	*	standard values are based on data from around may	*	  "
	print ""

	extruder = Extruder() # declare extruder clas, which contains a barrel and pushrod class

	# get and set variables based on input from the user
	print " > S Y S T E M     V A R I A B L E S"
	extruder.pushrod.setParameters()
	extruder.barrel.setParameters()
	extruder.setMixingVolume()
	extruder.setMotorResolution() 
	volume_per_revolution = extruder.calcVolumePerStep()
	volume_per_step = volume_per_revolution / extruder.motor_resolution

	print " ... "
	print " > Total volume in the barrel [mm^3]			: ", extruder.barrel.volume
	print " > Volume in the mixing part of the barrel [mm^3]	: ", extruder.barrel.volume - extruder.pushrod.volume
	print " > Volume in the barrel for mixing [mm^3]		: ", extruder.mixing_volume
	print ""
	print " > Volume per revolution [mm^3/rev] 	: ", volume_per_revolution
	print " > Volume per step [mm^3/step]		: ", volume_per_step
	print " > Volume per step [steps/mm^3]        : ", 1 / volume_per_step
	print ""
	print " > Above as 2.85mm filament [mm/step]	: ", volume_per_step / ( 3.14 * pow( 2.85/2 , 2))
	print " > Above as 2.85mm filament [steps/mm]	: ", ( 3.14 * pow( 2.85/2 , 2)) / volume_per_step

	print ""
	print " + - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + "
	print ""

if __name__ == "__main__":
	main()
