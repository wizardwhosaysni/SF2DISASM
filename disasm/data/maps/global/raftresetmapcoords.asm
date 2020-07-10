
; ASM FILE data\maps\global\raftresetmapcoords.asm :
; 0x7BCE..0x7BDE : Raft reset map coords
RaftResetMapCoordinates:
                ; Save point map, Raft map, Raft X, Raft Y
                raftResetMapCoords 255, 0, 42, 15
                raftResetMapCoords 255, MAP_OVERWORLD_PATH_TO_RIBBLE, 42, 15
