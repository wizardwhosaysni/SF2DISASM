

bbcs_01:        
                setF $1C2+1 
                
    cameraSpeed $30
                
    newEntity $80,63,63,DOWN,MAPSPRITE_ADAM
    newEntity $82,63,63,DOWN,65
    newEntity $83,63,63,DOWN,65
    newEntity $84,12,5,DOWN,MAPSPRITE_CARAVAN
    newEntity $3,12,33,DOWN,3
    newEntity $1,11,33,DOWN,1
    newEntity $2,13,33,DOWN,2
    newEntity $5,11,33,DOWN,5
    newEntity $4,13,33,DOWN,4
    newEntity $7,12,6,DOWN,7
    setPos $80,12,33,DOWN
    setPos $82,11,8,DOWN
    setPos $83,13,8,DOWN
    setFacing $80,UP
    setFacing $3,UP
    setFacing $1,UP
    setFacing $2,UP
    setFacing $5,UP
    setFacing $4,UP
    setFacing $7,UP
    setFacing $82,UP
    setFacing $83,UP
    ; command  51 1
    ; command 53
    ; command  54 0
    mapLoad 0,32,32
    csWait 1
    playSound $FD
    fadeInB
                yesNo
                jumpIfFlagClear $59,b01_bbcs_end
    textCursor $2F1
    ; Undocumented command 42
    ; Undocumented command 5
    nextText $FF,-1             ; "So Adam and his companions{N}headed for the ancient temple{N}to search for Max's trail.{W2}"
    ; Undocumented command 42
    nextSingleText $FF,-1       ; "However...{W1}"
    fadeOutB
    playSound MUSIC_BATTLE_THEME_3
    mapLoad 1,7,22
    fadeInB
    ; command  51 1    
    customActscript $84
     ac_setAnimCounter 0 
     ac_jump eas_Idle   
    ac_end     
    entityActions $80
      moveUp 9
    endActions
    entityActions $3
      faceUp 40
      moveUp 7
    endActions
    entityActions $1
      faceUp 40
      moveUp 7
    endActions
    entityActions $2
      faceUp 40
      moveUp 7
    endActions
    entityActions $5
      faceUp 60
      moveUp 6
    endActions
    entityActionsWait $4
      faceUp 60
      moveUp 6
    endActions
    nextSingleText $80,7     ; "This... Is this it?{W1}"
    setCamDest 7,3
    csWait 40
    setPos $7,11,5,UP
    setFacing $7,RIGHT
    csWait 20
    setPos $7,12,6,RIGHT
    setFacing $7,UP
    csWait 20
    setPos $7,13,5,UP
    setFacing $7,LEFT
    csWait 20
    setPos $7,12,6,LEFT
    setFacing $7,UP
    csWait 40
    ; Undocumented command 21
    ; Undocumented command 7
    ; Undocumented command 3
    ; Undocumented command 1
    entityActionsWait $7
      faceUp 10
      moveDown 1
    endActions
    csWait 20
    entityActionsWait $7
      faceDown 10
    endActions
    csWait 30
    setFacing $7,DOWN
    nextText $80,7      ; "It is! This is the Caravan...{W2}"
    nextSingleText $80,7      ; "It's said to be a very{N}convenient means of{N}transportation.{W1}"
    ; command  51 2
    entityActionsWait $7
      moveUp 1
    endActions
    shiver $7
    csWait 30
    ; command  51 2
    entityActionsWait $7
      moveRight 1
      moveUp 1
      faceLeft 20
    endActions
    shiver $7
    csWait 30
    ; command  51 2
    entityActionsWait $7
      moveDown 1
      moveLeft 1
      faceUp 20
    endActions
    shiver $7
    csWait 30
    ; command  51 2
    entityActionsWait $7
      moveLeft 1
      faceRight 20
      moveUp 1
    endActions
    shiver $7
    csWait 30
    ; command  51 2
    entityActionsWait $7
      moveDown 1
      moveRight 1
      faceUp 20
    endActions
    ; command  51 1
    ; Undocumented command 21
    ; Undocumented command 7
    ; Undocumented command 3
    ; Undocumented command 1
    shiver $7
    csWait 60
    nextText $80,7            ; "I... I don't understand!{N}How do you get this thing to{N}move?{W2}{N}If we could only work out{N}how to get inside...{W2}"
    nextSingleText $80,7      ; "Oh well, that woman said{N}it's okay to break it if we{N}can't make it work.{W1}"
    nextSingleText $0,2       ; "He's going to damage that{N}ancient relic!{W1}"
    setFacing $7,DOWN
    setFacing $82,DOWN
    setFacing $83,DOWN
    setActscript $7,eas_Jump
    nextText $80,7            ; "Someone just had to come and{N}spoil this... {W2}{N}We'll abandon{N}the caravan for now.{N}Let's get out of here!{W2}"
    nextSingleText $80,7      ; "Hey, you!{N}A thief like me is skilled enough{N}to escape.{W2}{N}Men, why don't you{N}keep them company?{W1}"
    ; command  51 2
    entityActions $82
      jumpUp 1
      jumpUp 1
    endActions
    entityActionsWait $83
      jumpUp 1
      jumpUp 1
    endActions
    setCamDest 7,22
    ; command  51 1
    setFacing $80,DOWN
    nextSingleText $0,26      ; "The enemy is coming!{W1}"
    ; command  51 1
    entityActionsWait $1
      moveUp 2
      faceRight 20
    endActions
    setFacing $80,LEFT
    nextSingleText $0,1       ; "Adam, you can't fight,{N}but we can!{W1}"
    nextSingleText $0,26      ; "Understood. Well then Mead,{N}please lead them!{W1}"
    csWait 60
    playSound $FD           
                
b01_bbcs_end:                
                executeSubroutine removeIanFromParty
                csc_end   
                
removeIanFromParty:
                moveq   #ALLY_IAN,d0  ; starting character
                jsr   LeaveForce
                rts