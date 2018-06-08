; *******************************************************************************
; 							- MANUAL CONFIGURATION - 
; 				BASED ON INITIAL TEST CONFIG AND REPRAPCONFIGURATOR
; *******************************************************************************
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
;		- X_min, _max:			
;		- Y_min, _max:			
;		- Z_min, _max:			
;		- Filament diameter:	3 mm
;		- Filament area:	 	7.07 (mm^2)
;		- E1,2,3


;   + - + - +   G E N E R A L   + - + - + 
M111 S0             ; Set debug		S1/0 = on/off
M555 P2				; Set output to look like Marlin

M550 PDuetTest		; Set name
M551 Preprap        ; Set password 		default = (P)reprap

M669 K0				; Set kinematics	default = (K)0 = cartesian
G21					; Set metrics to millimetres
G90					; Set absolute G-code coordinate moves
M83					; Set relative G-code extruder moves (reduces drifting)

M574 X2 Y2 Z2 S1	; Set homing endstop locations & active state	 XYZ0/1/2 = no endstop/min pos/max pos		S0/1 = active low/high
M581 E0 T0			; configure external trigger (E-stop) 	on E0 input 	triggers E-stop (T0)
M581 E1 T0			; configure external trigger (X min) 	on E1 input 	triggers E-stop (T0)
M581 E2 T0			; configure external trigger (Y min) 	on E2 input 	triggers E-stop (T0)
M581 E3 T0			; configure external trigger (Z min) 	on E3 input 	triggers E-stop (T0)

M208 X0 Y0 Z0 S1 		; Set axis minima
M208 X230 Y210 Z200 S0 	; Set axis maxima
M302 P1 				; Allow cold extrusions		P1/0 = enable/disable
M564 H0					; Allow movement of unhomed axis 	H1/0 = disable/enable

;   + - + - +   N E T W O R K   + - + - +
M552 S0						; Turn network off
; M552 P192.168.1.14		; Set IP adress		P0.0.0.0 = DHCP
M552 P0.0.0.0
M554 P192.168.1.255			; Set gateway
M553 P255.255.255.0			; Set netmask
M552 S1						; Turn network on 	S1/0 = on/off

;   + - + - +   D R I V E R S   + - + - + 
M584 X0 Y1 Z2 E3:4:5:6		; Set drive mapping 	default = [X, Y, Z, E0, E1, E...]
M569 P0 S1					; Set drive 0 direction forwards	S1/0 = forwards / backwards
M569 P1 S1					; Set drive 1 direction forwards	S1/0 = forwards / backwards
M569 P2 S1					; Set drive 2 direction forwards	S1/0 = forwards / backwards
M569 P3 S1					; Set drive 3 direction forwards	S1/0 = forwards / backwards
M569 P4 S1					; Set drive 4 direction forwards	S1/0 = forwards / backwards
M569 P5 S1                  ; Set drive 5 direction forwards	S1/0 = forwards / backwards
M569 P6 S1                  ; Set drive 6 direction forwards	S1/0 = forwards / backwards

M350 X16 Y16 Z16 I1         ; Configure microstepping XYZ 			(I1 -> with x256 interpolation)
M350 E16:16:16:16 I1		; Configure microstepping extruders 	(I1 -> with x256 interpolation)
M92 X640 Y640 Z320      	; Set steps per mm XYZ 			(without interpolation)
M92 E717.71:419:419:419		; Set steps per mm extruders 	(without interpolation)

; M906 X400 Y400 Z400 I30  	; Set XYZ motor currents [mA] and idle percentage
M906 E400:400:400:400 I30	; Set extruder motor currents [mA] and idle percentage
M84 S30                     ; Set motor idle timeout [s]

M201 X500 Y500 Z250       	; Set XYZ accelerations [mm/s^2]
M201 E250:250:250:250		; Set extruder accelerations [mm/s^2]
M203 X2000 Y2000 Z4000  	; Set maximum XYZ speeds [mm/min]
M203 E2750:2750:2750:2750	; Set maximum extruder speeds [mm/min]
M566 X900 Y900 Z12         	; Set maximum XYZ instantaneous speed changes d[mm/min]
M566 E120:120:120:120		; Set maximum extruder instantaneous speed changes d[mm/min]

;   + - + - +   T O O L S  + - + - +
;	# # #   T O O L  1   # # #
M563 P0 D0:1 H1 			; Define tool 0 	extruder 0 & 1		heater 1
G10 P0 X0 Y0 Z0 			; Set offsets 
G10 P0 R0 S0 				; Set initial 	active (S) and 	standby (R) temperatures to 0C
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

;   + - + - +   H E A T I N G   + - + - +   
M305 P0 X200		; Configure thermocouple for bed heaters 	X200/201/... = PT100
M305 P1 X201		; Configure thermocouple for heater 1
M305 P2 X202		; Configure thermocouple for heater 2
M305 P3 X203		; Configure thermocouple for heater 3
M305 P4 X204		; Configure thermocouple for chamber heater

M143 H0 S120		; Set temperature limit for heater 0 to 120C
M143 H1 S280		; Set temperature limit for heater 1 to 280C
M143 H2 S280		; Set temperature limit for heater 2 to 280C
M143 H3 S280		; Set temperature limit for heater 3 to 280C
M143 H4 S280		; Set temperature limit for heater 4 to 280C

M307 H0 A250 C140 D5.5 B1	; Set heater 0 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off
M307 H1 A250 C140 D5.5 B0	; Set heater 1 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off
M307 H2 A250 C140 D5.5 B0	; Set heater 2 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off
M307 H3 A250 C140 D5.5 B0	; Set heater 3 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off
M307 H4 A250 C140 D5.5 B0	; Set heater 4 process parameters	A= gain 	C= time constant 	D= dead time 	B1/0= bang-bang on/off

;   + - + - +  . M . I . S . C .   + - + - +   
M106 P1 H-1 	; Disable Fan 1 thermostatic mode
M106 P1 S-1		; disable thermostatic mode for fan 1

; M556 S78 X0 Y0 Z0				; Axis compensation here
M208 S1 Z-0.2					; set minimum Z

T0						; select first hot end
