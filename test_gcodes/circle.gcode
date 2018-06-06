G28 ; home axis
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
M302 P1 ; allow cold extrusion

G1 Z5 F5000 ; raise nozzle set at 5000 mm/min
G1 X95 Y100 ; move to (100,100)

G2 X95 Y100 I5 J0 ; do full clockwise rotation (r =5)

G3 X105 Y100 I5 J0 ; do half counterclockwise rotation
G2 X95 Y100 I-5 J0 ; do half clockwise rotation

G28 ; home axis