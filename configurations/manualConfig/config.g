; Configuration file for testing Duet Ethernet and Wifi with V1.19.2 firmware

; *******************************************************************************
; 							- MANUAL CONFIGURATION - 
; 				BASED ON INITIAL TEST CONFIG AND REPRAPCONFIGURATOR
; *******************************************************************************


; Communication and general
M111 S0             ; Debug off
M550 PDuetTest		; Machine name and Netbios name (can be anything you like)
M551 Preprap        ; Machine password (used for FTP)
M669 K0				; Cartesian kinemtics

;*** Networking 
M552 S1						; Turn network on

;*** Ethernet networking: Adjust the IP address and gateway in the following 2 lines to suit your network
M552 P192.168.1.14				; (0 = DHCP)
M554 P192.168.1.255				; Gateway
M553 P255.255.255.0				; Netmask

M555 P2					; Set output to look like Marlin
G21						; Work in millimetres
G90						; Send absolute coordinates...
M83						; ...but relative extruder moves

; Disable Fan 1 thermostatic mode
M106 P1 H-1

; Axis and motor configuration
M569 P0 S1					; Drive 0 goes forwards
M569 P1 S1					; Drive 1 goes forwards
M569 P2 S1					; Drive 2 goes forwards
M569 P3 S1					; Drive 3 goes forwards
M569 P4 S1					; Drive 4 goes forwards
M569 P5 S1                  ; Drive 5 goes forwards
M569 P6 S1                  ; Drive 6 goes forwards
; M574 X2 Y2 Z2 S1			; set endstop configuration (all endstops at high end, active high)

;*** The homed height is deliberately set too high in the following - you will adjust it during calibration
M208 X0 Y0 Z0 S1                           ; Set axis minima
M208 X230 Y210 Z200 S0                     ; Set axis maxima

;M350 X16 Y16 Z16 E16:16:16:16 I1           ; Configure microstepping with interpolation
M350 X1 Y1 Z1 E1:1:1:1           			; Configure fullstepping
M92 X640 Y640 Z320 E440:440:440:440     ; Set steps per mm
M906 X400 Y400 Z400 E400:400:400:400 I100  ; Set motor currents (mA) and motor idle factor in per cent (100)
M84 S30                                    ; Set idle timeout
M201 X500 Y500 Z250 E250:250:250:250       ; Set accelerations (mm/s^2)
M203 X6000 Y6000 Z180 E1200:1200:1200:1200 ; Set maximum speeds (mm/min)
M566 X900 Y900 Z12 E120:120:120:120        ; Set maximum instantaneous speed changes (mm/min)

; Thermistors
M305 P0 X200                               ; Configure thermocouple for bed heater
M143 H0 S120                               ; Set temperature limit for heater 0 to 120C

M305 P1 X201                               ; Configure thermocouple for heater 1
M143 H1 S280                               ; Set temperature limit for heater 1 to 280C

M305 P2 X202                               ; Configure thermocouple for heater 2
M143 H2 S280                               ; Set temperature limit for heater 2 to 280C

M305 P3 X203                               ; Configure thermocouple for heater 3
M143 H3 S280                               ; Set temperature limit for heater 3 to 280C

M305 P4 X204                               ; Configure thermocouple for chamber heater
M143 H4 S280                               ; Set temperature limit for heater 4 to 280C

; Adjustments for Lite6 hotends used as dummy heaters on test rig
M307 H0 A250 C140 D5.5 B1
M307 H1 A250 C140 D5.5 B0
M307 H2 A250 C140 D5.5 B0

; Fans
M106 P1 S-1					; disable thermostatic mode for fan 1

; Tools
M563 P0 D0:1 H1                            ; Define tool 0, drive 0 & 1
G10 P0 X0 Y0 Z0                            ; Set tool 0 axis offsets
G10 P0 R0 S0                               ; Set initial tool 0 active and standby temperatures to 0C
M568 P0 S1                                 ; Enable mixing for tool 0
M567 P0 E0.5:0.5                           ; Set mixing ratios for tool 0

M563 P1 D0:2 H2                            ; Define tool 1, drive 0 & 2
G10 P1 X0 Y0 Z0                            ; Set tool 1 axis offsets
G10 P1 R0 S0                               ; Set initial tool 1 active and standby temperatures to 0C
M568 P1 S1                                 ; Enable mixing for tool 1
M567 P1 E0.5:0.5                           ; Set mixing ratios for tool 1

M563 P2 D0:3 H3                            ; Define tool 2, drive 0 & 3
G10 P2 X0 Y0 Z0                            ; Set tool 2 axis offsets
G10 P2 R0 S0                               ; Set initial tool 2 active and standby temperatures to 0C
M568 P2 S1                                 ; Enable mixing for tool 2
M567 P2 E0.5:0.5                           ; Set mixing ratios for tool 2

; Z probe and compensation definition
;*** If you have a switch instead of an IR probe, change P1 to P4 in the following M558 command
M558 P4 X0 Y0 Z0				; Z probe is an IR probe and is not used for homing any axes
G31 X0 Y0 Z4.80 P500				; Set the zprobe height and threshold (put your own values here)

;*** If you are using axis compensation, put the figures in the following command
M556 S78 X0 Y0 Z0				; Axis compensation here

M208 S1 Z-0.2					; set minimum Z

T0						; select first hot end
