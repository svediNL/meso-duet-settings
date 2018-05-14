class Pushrod:
	"""docstring for Pushrod"""
	def __init__(self, arg):
		super(Pushrod, self).__init__()
		self.arg = arg

	pitch = 2.5		# in [mm/revolution]
	volume = 14.65	# in [mm^3]
	length = 10 			# in [mm]
	revolutions = 4

class Barrel:
	"""docstring for Barrel"""
	def __init__(self, arg):
		super(Barrel, self).__init__()
		self.arg = arg

	mixingLength = 7		# in [mm]

	diameter = 3	# in [mm]
	length = 10
	volume = 70.68

class Extruder:
	"""docstring for Extruder"""
	def __init__(self, arg):
		super(Extruder, self).__init__()
		self.arg = arg

	barrel = Barrel
	pushrod = Pushrod

	nozzleDiameter = 1	# in [mm]
	motorRes = 3200		# in [steps/revolution]

def getValue(questionString, var):
	value = raw_input(questionString)
	#check if value is a digit
	if value.replace('.', '', 1).isdigit():
		var = float(value)
		# print " > " , var
	else:
		var = var
		print " > default value : " , var

	return var
	
		
print ""
print " + - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + "
print ""

extruder = Extruder

extruder.pushrod.pitch = float( getValue( " > Thread pitch of the pushrod 	[mm/rev] : " , extruder.pushrod.pitch ) )
extruder.pushrod.volume = float( getValue(" > Volume of the threaded pushrod [mm^3] : ", extruder.pushrod.volume ) )
extruder.barrel.diameter = float( getValue(" > Diameter of the barrel 	[mm] : " , extruder.barrel.diameter ) )
print " ... "

extruder.pushrod.revolutions = float(extruder.pushrod.length / extruder.pushrod.pitch)
extruder.barrel.volume = extruder.barrel.length * 3.14 * pow((extruder.barrel.diameter / 2), 2)
print " > Total volume in the barrel 	[mm^3] : ", extruder.barrel.volume
print " > Free volume in the barrel 	[mm^3] : ", extruder.barrel.volume - extruder.pushrod.volume
print " ... "

extruder.motorRes = int(200 * getValue(" > Microstepping on motor 	[ 1, 2, 4, 8, ... ] : ", (extruder.motorRes/200) ))
print " ... "

print " > Motor resolution		[steps/rev] : ", extruder.motorRes
print " ... "

volPerRev = ( ((extruder.barrel.volume - extruder.pushrod.volume) / extruder.pushrod.revolutions ) )
volPerStep = volPerRev / extruder.motorRes
print " > Volume per revolutions 	[mm^3/rev] : ", volPerRev
print " > Volume per steps 		[mm^3/step] : ", volPerStep
print " > Above as 3mm filament	[mm/step] : ", volPerStep/ ( 3.14 * pow( 3/2 , 2) )
print " > Above as 3mm filament	[steps/mm] : ", ( 3.14 * pow( 3/2 , 2) ) / volPerStep

print ""
print " + - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + "
print ""
