; *******************************************************************************
; 							- MANUAL CONFIGURATION - 
; 				BASED ON INITIAL TEST CONFIG AND REPRAPCONFIGURATOR
; *******************************************************************************
;	
;	Default WiFi Host SSID (name): 	mesoHost
;	Default WiFi Password:			mesoprint
;
;	7 motor drivers
;	- Drive 0 : X
;	- Drive 1 : Y
;	- Drive 2 : Z
;	- Drive 3 : E0 
;	- Drive 4 : E1
;	- Drive 5 : E2
;	- Drive 6 : E3
;
;	3 tools
;	- Tool 0
;		- Extruder 0, 1
;		- Mixing ratio 1:1
;		- 
;	- Tool 1
;		- Extruder 0, 2
;		- Mixing ratio 1:1
;		- 
;	- Tool 2
;		- Extruder 0, 3
;		- Mixing ratio 1:1
;		- 
;
;	Driver parameters:
;	- X, Y drivers
;		Resolution: x16
;			-> 640 steps/mm = 1.563 * 10^-3 mm/step
;	- Z driver
;		Resolution: x16 
;			-> 320 steps/mm = 3.125 * 10^-3 mm/step
;	- Rudder driver
;		Resolution: x16
;			-> 717.7 steps/mm = 1.36 * 10^-3 mm/step
;	- Hotend drivers
;		- Resolution: x16
;			-> 419 steps/mm = 2.38 * 10^-3 mm/step
;			-> 16.06 (mm^3)/step
;		- Max speed = 350 mm/s
;
;	Machine parameters
;		- X_min, _max:			[0, 900] mm
;		- Y_min, _max:			[0, 1140] mm
;		- Z_min, _max:			[2.5, 645] mm
;		- Filament diameter:	3 mm
;		- Filament area:	 	7.07 (mm^2)
; 		- Axis pitch:			10 mm/rev



;   + - + - +   G E N E R A L   + - + - + 
M111 S0             ; Set debug		S1/0 = on/off
M555 P2				; Set output to look like Marlin

M550 PDuetTest		; Set name
M551 Preprap        ; Set password 		default = (P)reprap

M669 K0				; Set kinematics	default = (K)0 = cartesian
G21					; Set metrics to millimetres
G90					; Set absolute G-code coordinate moves
M83					; Set relative G-code extruder moves (reduces drifting)

M574 X1 Y2 Z2 S1	; Set homing endstop locations & active state	 XYZ0/1/2 = no endstop/min pos/max pos		S0/1 = active low/high
M581 E0 S1 T0		; configure external trigger (Emergency stop) 	on E0 input  NC->falling edge (S0)	triggers E-stop (T0)
M581 E1 S1 T0		; configure external trigger (X min) 	on E1 input  NO->rising edge (S1)	triggers E-stop (T0)
M581 E2 S1 T0		; configure external trigger (Y min) 	on E2 input  NO->rising edge (S1) 	triggers E-stop (T0)
M581 E3 S1 T0		; configure external trigger (Z min) 	on E3 input  NO->rising edge (S1) 	triggers E-stop (T0)

M208 X0 Y0 Z2.5 S1 			; Set axis minima
M208 X900 Y1140 Z645 S0 	; Set axis maxima

M302 P1 				; Allow cold extrusions		P1/0 = enable/disable
;M564 H0					; Allow movement of unhomed axis 	H1/0 = disable/enable

;   + - + - +   N E T W O R K   + - + - +
M552 S0						; Turn network off
; M552 P192.168.1.14		; Set IP adress		P0.0.0.0 = DHCP
; M552 P0.0.0.0
; M554 P192.168.1.255			; Set gateway
; M553 P255.255.255.0			; Set netmask
M587 S"mesoHost" P"mesoprint"
M552 S1						; Turn network on 	S1/0 = on/off

;   + - + - +   D R I V E R S   + - + - + 
M584 X0 Y1 Z2 E3:4:5:6		; Set drive mapping 	default = [X, Y, Z, E0, E1, E...]
M569 P0 S0 R1					; Set drive 0 (X) direction forwards	S1/0 = forwards / backwards		R0/1 = active low/high
M569 P1 S1 R1					; Set drive 1 (Y) direction forwards	S1/0 = forwards / backwards		R0/1 = active low/high
M569 P2 S1 R1					; Set drive 2 (Z) direction forwards	S1/0 = forwards / backwards		R0/1 = active low/high
M569 P3 S1					; Set drive 3 (E0) direction forwards	S1/0 = forwards / backwards
M569 P4 S1					; Set drive 4 (E1) direction forwards	S1/0 = forwards / backwards
M569 P5 S1                  ; Set drive 5 (E2) direction forwards	S1/0 = forwards / backwards
M569 P6 S1                  ; Set drive 6 (E3) direction forwards	S1/0 = forwards / backwards

;	# # #   A X E S   # # #
M350 X8 Y8 Z8 I0 	         ; Configure microstepping XYZ 			(I1 -> with x256 interpolation)
M92 X160 Y160 Z160      	; Set steps per mm XYZ 			(without interpolation)
M201 X300 Y300 Z100       	; Set XYZ accelerations [mm/s^2]
M203 X7200 Y7200 Z1200  	; Set maximum XYZ speeds [mm/min]
M566 X600 Y600 Z50         ; Set maximum XYZ instantaneous speed changes d[mm/min]

; 1/3 overbrenging:
; M350 X16 Y16 Z16 I0 	         ; Configure microstepping XYZ 			(I1 -> with x256 interpolation)
; M92 X107 Y107 Z107      	; Set steps per mm XYZ 			(without interpolation)

;	# # #   E X T R U D E R S   # # # 
M350 E16:16:16:16 I1		; Configure microstepping extruders 	(I1 -> with x256 interpolation)
M92 E717.71:419:419:419		; Set steps per mm extruders 	(without interpolation)
M201 E250:250:250:250		; Set extruder accelerations [mm/s^2]
M203 E2750:2750:2750:2750	; Set maximum extruder speeds [mm/min]
M566 E120:120:120:120		; Set maximum extruder instantaneous speed changes d[mm/min]

M906 E400:400:400:400 I30	; Set extruder motor currents [mA] and idle percentage
M84 S30                     ; Set motor idle timeout [s]

;   + - + - +   H E A T I N G   + - + - +   
M305 P0 X200		; Configure sensor for bed heater 	X200/201/... = PT100
M305 P1 X201		; Configure sensor for heater 1
M305 P2 X202		; Configure sensor for heater 2
M305 P3 X203		; Configure sensor for heater 3
M305 P4 X204		; Configure sensor for chamber heater

M143 H0 S120		; Set temperature limit for bed heater to 120C
M143 H1 S500		; Set temperature limit for heater 1 to 500C
M143 H2 S500		; Set temperature limit for heater 2 to 500C
M143 H3 S500		; Set temperature limit for heater 3 to 500C
M143 H4 S500		; Set temperature limit for chamber heater to 500C

; 	# # #	P L A N T    P A R A M E T E R S 	# # #
;standard
M307 H0 A250 C140 D5.5 B1	; Set heater 0 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off
;M307 H1 A250 C140 D5.5 B0	; Set heater 1 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off
;M307 H2 A250 C140 D5.5 B0	; Set heater 2 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off
;M307 H3 A250 C140 D5.5 B0	; Set heater 3 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off
M307 H4 A250 C140 D5.5 B0	; Set heater 4 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off

; from auto calibration
M307 H1 A147 C317 D1.6 B0	; Set heater 1 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off
M307 H2 A147 C317 D1.6 B0	; Set heater 2 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off
M307 H3 A147 C317 D1.6 B0	; Set heater 3 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off

;	# # #    P I D   P A R A M E T E R S   # # #
M301 H1 P242 I11 D270		; Set heater 1 PID parameters 	P= proportional gain	I= integral gain	D= differential gain
M301 H2 P242 I11 D270		; Set heater 2 PID parameters 	P= proportional gain	I= integral gain	D= differential gain
M301 H3 P242 I11 D270		; Set heater 3 PID parameters 	P= proportional gain	I= integral gain	D= differential gain

;   + - + - +   P R O B E   + - + - +  
;G29, G30, G31, G32, M401, M402.
;M558 P1; Set IR Z-probe

;   + - + - +  . M . I . S . C .   + - + - +   
M106 P1 H-1 	; Disable Fan 1 thermostatic mode
M106 P1 S-1		; disable thermostatic mode for fan 1
M208 S1 Z-0.2					; set minimum Z
M404 N3.0 D1.0
; M556 S78 X0 Y0 Z0				; Axis compensation here

;   + - + - +   T O O L S  + - + - +
;	# # #   T O O L  0   # # #
M563 P0 D0:1 H1 			; Define tool 0 	extruder 0 & 1		heater 1
G10 P0 X0 Y0 Z0 			; Set offsets 
G10 P0 R0 S0 				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M143 H1 S400				; Set heater max to 400C
M568 P0 S1 					; Enable mixing
M567 P0 E1:1 				; Set mixing ratios

;	# # #   T O O L  1   # # #
M563 P1 D0:2 H2				; Define tool 1		extruder 0 & 2		heater 2
G10 P1 X0 Y0 Z0 			; Set offsets tool 1 
G10 P1 R0 S0 				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P1 S1 					; Enable mixing
M567 P1 E1:1 				; Set mixing ratios

;	# # #   T O O L  2   # # #
M563 P2 D0:3 H3 			; Define tool 2		extruder 0 & 3		heater 3
G10 P2 X0 Y0 Z0 			; Set offsets tool 2
G10 P2 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P2 S1 					; Enable mixing 
M567 P2 E1:1 				; Set mixing ratios

;	# # #   T O O L  3   # # #
M563 P3 D0:1:2 H1:2 		; Define tool 3		extruder 0, 1 & 2		heater 1 & 2
G10 P3 X0 Y0 Z0 			; Set offsets tool 3
G10 P3 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P3 S1 					; Enable mixing 
M567 P3 E1:0.5:0.5 			; Set mixing ratios

;	# # #   T O O L  4   # # #
M563 P4 D0:1:3 H1:3 		; Define tool 4		extruder 0, 1 & 3		heater 1 & 3
G10 P4 X0 Y0 Z0 			; Set offsets tool 4
G10 P4 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P4 S1 					; Enable mixing 
M567 P4 E1:0.5:0.5 			; Set mixing ratios

;	# # #   T O O L  5   # # #
M563 P5 D0:2:3 H2:3 		; Define tool 5		extruder 0, 2 & 3		heater 2 & 3
G10 P5 X0 Y0 Z0 			; Set offsets tool 5
G10 P5 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P5 S1 					; Enable mixing 
M567 P5 E1:0.5:0.5 			; Set mixing ratios

;	# # #   T O O L  6   # # #
M563 P6 D0:1:2:3 H1:2:3 	; Define tool 6		extruder 0, 1, 2 & 3		heater 1, 2 & 3
G10 P6 X0 Y0 Z0 			; Set offsets tool 6
G10 P6 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P6 S1 					; Enable mixing 
M567 P6 E1:0.33:0.33:0.33	; Set mixing ratios

;	# # #   T O O L  7   # # #
M563 P7 D1 H1 			; Define tool 7		extruder 1		heater 1
G10 P7 X0 Y0 Z0 			; Set offsets tool 7
G10 P7 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P7 S0 					; Disable mixing

;	# # #   T O O L  8   # # #
M563 P8 D2 H2 			; Define tool 8		extruder 2		heater 2
G10 P8 X0 Y0 Z0 			; Set offsets tool 8
G10 P8 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P8 S0 					; Disable mixing

;	# # #   T O O L  9   # # #
M563 P9 D3 H3 			; Define tool 9		extruder 3		heater 3
G10 P9 X0 Y0 Z0 			; Set offsets tool 9
G10 P9 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P9 S0 					; Disable mixing 

;	# # #   T O O L  10   # # #
M563 P10 D1:2 H1:2 			; Define tool 10		extruder 1 & 2		heater 1 & 2
G10 P10 X0 Y0 Z0 			; Set offsets tool 10
G10 P10 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P10 S1 					; Enable mixing 
M567 P10 E0.5:0.5 			; Set mixing ratios

;	# # #   T O O L  11   # # #
M563 P11 D1:3 H1:3 			; Define tool 11		extruder 1 & 3		heater 1 & 3
G10 P11 X0 Y0 Z0 			; Set offsets tool 11
G10 P11 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P11 S1 					; Enable mixing 
M567 P11 E0.5:0.5 			; Set mixing ratios

;	# # #   T O O L  12   # # #
M563 P12 D2:3 H2:3 			; Define tool 12		extruder 2 & 3		heater 2 & 3
G10 P12 X0 Y0 Z0 			; Set offsets tool 2
G10 P12 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P12 S1 					; Enable mixing 
M567 P12 E0.5:0.5 			; Set mixing ratios

;	# # #   T O O L  13   # # #
M563 P13 D1:2:3 H1:2:3 		; Define tool 12		extruder 1, 2 & 3		heater 1, 2 & 3
G10 P13 X0 Y0 Z0 			; Set offsets tool 2
G10 P13 R0 S0  				; Set initial 	active (S) and 	standby (R) temperatures to 0C
M568 P13 S1 					; Enable mixing 
M567 P13 E0.33:0.33:0.33 	; Set mixing ratios

T0						; select tool 0

