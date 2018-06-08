G28 ; home axis
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
M302 P1 ; allow cold extrusion

G1 Z5 F5000 ; raise nozzle set at 5000 mm/min
G1 X95 Y100 ; move to (100,100)

T0
G1 E10 F60
G1 E0:10 F60
G1 E10:0 F60

T1
G1 E10 F60
G1 E0:10 F60
G1 E10:0 F60

T2
G1 E10 F60
G1 E0:10 F60
G1 E10:0 F60