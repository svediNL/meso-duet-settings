G28 ; home axis
G21 ; set units to millimeters
G91 ; use relative coordinates
M83 ; use relative distances for extrusion
M302 P1 ; allow cold extrusion

G1 Z5 F5000 ; raise nozzle set at 5000 mm/min
G1 X100 Y-100 ; move to (100,100)

G1 X10 ; move to d(10,0)
G1 Y10 ; move to d(10,10)
G1 X-10 ; move to d(0,10)
G1 Y-10 ; move to d(0,0)

G28 ; home axis