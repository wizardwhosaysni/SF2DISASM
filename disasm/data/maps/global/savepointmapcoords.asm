
; ASM FILE data\maps\global\savepointmapcoords.asm :
; 0x7B71..0x7BCE : Save point map coords
SavepointMapCoordinates:
                ; Map, X, Y, Facing
                savePointMapCoords 0, 3, 6, UP
                dc.b $FF
                
                align 2