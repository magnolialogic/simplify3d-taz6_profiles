; Taz 6 + S3D custom G-code
G26				; clear probe fail
G21				; set units to Millimetres
M107				; ensure fan is off
M140 S[bed0_temperature]	; start heating bed
G90				; absolute positioning
M82				; set extruder to absolute mode
G92 E0				; zero extruder
M104 S170			; start heating extruder
G28 XY				; home X and Y
G1 X-19 Y258 F1000		; move to safe homing position
M109 R170			; soften filament for Z homing
G28 Z 				; home Z
G1 E-20 F100 			; retract 20mm filament
G1 X-15 Y100 F3000 		; move above wiper pad
G1 Z1 				; push nozzle into wiper
G1 X-17 Y95 F1000 		; wipe sequence
G1 X-17 Y90 F1000
G1 X-17 Y85 F1000
G1 X-15 Y90 F1000
G1 X-17 Y80 F1000
G1 X-15 Y95 F1000
G1 X-17 Y75 F2000
G1 X-15 Y65 F2000
G1 X-17 Y70 F2000
G1 X-15 Y60 F2000
G1 X-17 Y55 F2000
G1 X-15 Y50 F2000
G1 X-17 Y40 F2000
G1 X-15 Y45 F2000
G1 X-17 Y35 F2000
G1 X-15 Y40 F2000
G1 X-17 Y70 F2000
G1 X-15 Y30 Z2 F2000
G1 X-17 Y35 F2000
G1 X-15 Y25 F2000
G1 X-17 Y30 F2000
G1 X-15 Y25 Z1.5 F1000
G1 X-17 Y23 F1000
G1 Z10				; raise extruder
G1 X-9 Y-9			; move above first probe point
M204 S100			; set accel for probing
G29				; probe sequence (for auto-leveling)
M204 S500			; set accel back to normal
G1 X0 Y0 Z15 F5000		; get out of the way
M400				; wait for moves to finish
M117 Heating...			; print message to LCD
M104 S[extruder0_temperature]	; start heating extruder
M190 S[bed0_temperature]	; stabilize bed
M109 S[extruder0_temperature]	; stabilize extruder
G1 Z2 E0 F75			; extrude filament back into nozzle
M117 TAZ PRINT			; print message to LCD
