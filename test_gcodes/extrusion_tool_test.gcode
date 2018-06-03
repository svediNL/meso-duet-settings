; this g-code file was used to check and evaluate the implementation of tools and mixing ratios

; ± ± ±  S E T T I N G S  ± ± ± ±

M302 P1 ; allow cold extrusion
G21 ; set units to millimeters
G90 ; use absolute coordinates
M82 ; use absolute distances for extrusion

; ± ± ± ±  G   C O D E  ± ± ± ±

G92 E0	; set tool position to 0
T0		; select tool 0 (extruders 0, 1)
G1 E1	; make the tool extrude 1mm 