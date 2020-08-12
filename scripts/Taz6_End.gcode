; Taz 6 + S3D custom G-code
M400				; wait for moves to finish
M104 S0				; turn off extruder
M107				; turn off fan
G91				; relative positioning
G1 E-1 F300			; retract 1mm filament
G1 Z20 E-5 X-20 Y-20 F3000	; lift up and retract even more filament
G1 E6				; re-prime extruder
G90				; absolute positioning
G1 Y0 F3000			; move to cooling position
M117 Cooling, R E L A X		; print message to LCD
M190 R50			; cool down bed to part removal temp
M190 S50			; maintain part removal temp
G1 Y280 F3000			; present finished print
M84				; disable motors
M117 Print complete		; print message to LCD
