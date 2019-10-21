
; export coordinates shift X=+1, Y=+1

IntroCutscene:     
    ; executeSubroutine 0x57D6
    ; command C C0 5 FF DF 10 1D C9
    ; command 38
    playSound $7
    cameraSpeed $30
    newEntity $80,63,63,DOWN,31
    newEntity $81,63,63,DOWN,119
    newEntity $82,63,63,DOWN,121
    newEntity $83,63,63,DOWN,116
    newEntity $84,63,63,DOWN,115
    newEntity $85,63,63,UP,61
    newEntity $86,63,63,UP,61
    newEntity $87,63,63,UP,61
    newEntity $88,63,63,UP,61
    newEntity $89,63,63,UP,61
    newEntity $8A,63,63,UP,62
    newEntity $8B,63,63,DOWN,60
    newEntity $8C,63,63,DOWN,60
    newEntity $8D,63,63,DOWN,60
    newEntity $8E,63,63,DOWN,60
    newEntity $8F,12,5,DOWN,62
    newEntity $11,1,1,DOWN,ALLY_MAX
    newEntity $F,1,3,DOWN,ALLY_RIDION
    newEntity $1,1,4,DOWN,ALLY_MEAD
    newEntity $2,1,5,DOWN,ALLY_PAIGE
    newEntity $5,1,6,DOWN,ALLY_SONETTE   
    setPos $80,1,2,DOWN
    setPos $81,12,30,DOWN
    setPos $82,13,29,DOWN
    setPos $83,13,31,DOWN
    setPos $84,13,32,DOWN
    setPos $85,1,1,DOWN
    setPos $86,1,1,DOWN
    setPos $87,1,1,DOWN
    setPos $88,1,1,DOWN
    setPos $89,1,1,DOWN
    setPos $8A,1,1,DOWN
    setPos $8B,1,1,DOWN
    setPos $8C,1,1,DOWN
    setPos $8D,1,1,DOWN
    setPos $8E,1,1,DOWN
    setFacing $85,DOWN
    setFacing $86,DOWN
    setFacing $87,DOWN
    setFacing $88,DOWN
    setFacing $89,DOWN
    setFacing $8A,UP
    setFacing $8B,DOWN
    setFacing $8C,DOWN
    setFacing $8D,DOWN
    setFacing $8E,LEFT          
    mapLoad 0,7,18   
    customActscript $80
     ac_setSpeed $30,$30   
     ac_jump eas_Idle  
    ac_end             
    customActscript $81
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript $82
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript $83
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript $84
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript $85
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript $86
     ac_setSpeed $30,$30    
     ac_jump eas_Idle  
    ac_end             
    customActscript $87
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript $88
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript $89
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript $8A
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript $8B
     ac_setSpeed $40,$40   
     ac_jump eas_Idle   
    ac_end             
    customActscript $8C
     ac_setSpeed $40,$40   
     ac_jump eas_Idle   
    ac_end             
    customActscript $8D
     ac_setSpeed $40,$40   
     ac_jump eas_Idle   
    ac_end             
    customActscript $8E
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end          
    customActscript $8F
     ac_setAnimCounter 0 
     ac_jump eas_Idle   
    ac_end             
    customActscript $11
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript $F
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end
    customActscript 1
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript 2
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end             
    customActscript 5
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end
    ;setBlocks 5,3,5,7,1,26
    ;setBlocks 25,9,5,7,5,3
    ;setBlocks 1,26,5,7,25,9
    ;setBlocks 11,15,5,5,1,26
    ;setBlocks 25,17,5,5,11,15
    ;setBlocks 1,26,5,5,25,17
    ;setBlocks 18,2,3,6,1,26
    ;setBlocks 25,23,3,6,18,2
    ;setBlocks 1,26,3,6,25,23
    setBlocks 50,0,5,5,10,14
    setBlocks 57,0,7,7,3,3
    setBlocks 50,12,6,8,16,3
    ; command  51 1
    ; command 53
    ; command  54 0
    textCursor $293
    fadeInB
    ; command  51 1
    ; command 53
    entityActions $81
      moveUp 11
      faceLeft 20
    endActions
    entityActions $82
      moveUp 11
      moveLeft 2
    endActions
    entityActions $83
      moveUp 13
      moveLeft 1
    endActions
    entityActionsWait $84
      moveUp 9
    endActions
    setCameraEntity $81
    entityActionsWait $84
      moveUp 5
    endActions
    nextSingleText $0,17      ; "Mishaela!{N}It's taken a long time.{N}At last I've found you!{D2}"
    setFacing $81,DOWN
    setFacing $82,DOWN
    setFacing $83,DOWN
    setFacing $84,DOWN
    setPos $11,12,30,DOWN
    setPos $80,11,31,DOWN
    setPos $F,13,31,DOWN
    setPos $1,11,32,DOWN
    setPos $2,12,32,DOWN
    setPos $5,13,32,DOWN
    setFacing $11,UP
    setFacing $80,UP
    setFacing $F,UP
    ; command 53
    setCamDest 7,22
    ; command  51 1
    entityActions $11
      moveUp 4
    endActions
    entityActions $80
      moveUp 4
    endActions
    entityActions $F
      moveUp 4
    endActions
    entityActions $1
      moveUp 4
    endActions
    entityActions $2
      moveUp 4
    endActions
    entityActionsWait $5
      moveUp 4
    endActions
    csWait 40
    nextText $0,$82            ; "What are you saying, Max?{N}If that's the case, it's time{N}to finish me, don't you think?{D2}"
    nextSingleText $0,$82      ; "Too bad I'm not{N}the same old Mishaela{N}you defeated before!{D2}"
    setCamDest 7,16
    entityActionsWait $81
     moveLeft 1
    endActions
    setFacing $81,UP
    nextText $80,$81           ; "Mistress Mishaela, I am{N}here! You can always{N}rely on Lynx.{D2}"
    nextSingleText $80,$81     ; "Leave them to me!{D2}"
    nextText $0,$82            ; "So, Max, it seems that{N}you're here to stop us from"
    nextText $0,$82            ; "fulfilling our dream.{D2}"
    nextSingleText $0,$82      ; "Do as you wish, Lynx.{D2}"
    ; command  51 1
    entityActions $82
      moveLeft 7
    endActions
    entityActions $83
      moveLeft 7
    endActions
    entityActions $84
      moveLeft 7
    endActions
    entityActionsWait $81
      faceUp 80
      faceLeft 100
      faceDown 40
      moveRight 1
      moveDown 1
    endActions
    setPos $82,5,8,DOWN
    setPos $83,6,7,DOWN
    setPos $84,4,7,DOWN
    setFacing $82,DOWN
    setFacing $83,DOWN
    setFacing $84,DOWN
    nextSingleText $80,$81     ; "Well, Shining Force!{N}Show me what you've got!{D2}"
    setCamDest 7,22
    csWait 44
    nextSingleText $0,17      ; "Ridion, we can't let{N}Mishaela escape!{D2}"
    setFacing $11,DOWN
    nextText $0,17            ; "Adam, take Mead and the others{N}and go after Mishaela!{D2}"
    nextSingleText $0,17      ; " "
    nextSingleText $0,$80      ; "Understood, Master Max.{N}We'll chase after Mishaela.{D2}"
    setFacing $80,DOWN
    nextSingleText $0,$80      ; "Mead, Paige, Sonette, let's go.{N}Follow me!{D2}"
    ; command  51 2
    entityActions $1
      jumpUp 1
    endActions
    entityActions $2
      jumpUp 1
    endActions
    entityActionsWait $5
      jumpUp 1
    endActions
    nextSingleText $FF,255      ; "Right!{D2}"
    ; command  51 2
    entityActions $80
      moveUp 2
      moveLeft 8
    endActions
    entityActions $1
      moveUp 3
      moveLeft 7
    endActions
    entityActions $2
      moveLeft 1
      moveUp 3
      moveLeft 6
    endActions
    entityActionsWait $5
      moveLeft 2
      moveUp 3
      moveLeft 5
    endActions
    setFacing $11,LEFT
    csWait 40
    setPos $80,5,11,DOWN
    setPos $1,5,13,DOWN
    setPos $2,5,14,DOWN
    setPos $5,4,14,DOWN
    setFacing $80,UP
    setFacing $1,UP
    setFacing $2,UP
    setFacing $5,UP
    setFacing $11,DOWN
    nextSingleText $0,17      ; "Ridion, you sneak up behind Lynx.{D2}"
    nextSingleText $80,15     ; "Okay Max!{D2}"
    ; command  51 2
    entityActionsWait $F
      moveUp 2
      moveRight 6
    endActions
    setFacing $11,RIGHT
    csWait 40
    setPos $F,20,17,UP
    setFacing $F,LEFT
    setFacing $11,UP
    csWait 40
    setCamDest 7,17
    ; command  51 1
    csWait 30
    entityActionsWait $11
     moveUp 1
    endActions
    csWait 30
    entityActionsWait $11
     moveUp 1
    endActions
    csWait 30
    shiver $81
    nextText $0,$81            ; "They've gone after Mistress{N}Mishaela?{D2}"
    nextSingleText $0,$81      ; "I should get to her side quickly.{D2}"
    entityActionsWait $11
     moveUp 1
    endActions
    setCameraEntity $81
    csWait 30
    entityActionsWait $11
     moveUp 1
    endActions
    csWait 40
    ; command  51 2
    ; command 53
    setPriority $11, $FFFF
    entityActions $11
      moveUp 1
    endActions
    entityActionsWait $81
      moveDown 1
    endActions
    playSound $54
    flashScreenWhite 2
    ;csWait 2
    entityActions $11
      faceUp 5
      moveDown 1
    endActions
    entityActionsWait $81
      faceDown 5
      moveUp 1
    endActions
    setPriority $11, 0
    entityActions $11
      moveLeft 1
      faceRight 20
      moveUp 1
      faceRight 40
      moveRight 1
    endActions
    entityActionsWait $81
      moveRight 1
      faceLeft 20
      moveDown 1
      faceLeft 40
      moveLeft 1
    endActions
    playSound $53
    flashScreenWhite 2
    ;csWait 2   
    entityActions $11
      faceRight 5
      moveLeft 1
    endActions
    entityActionsWait $81
      faceLeft 5
      moveRight 1
    endActions
    setPriority $11, $FFFF
    entityActions $11
      faceRight 40
      moveUp 2
      moveRight 1
    endActions
    entityActionsWait $81
      faceLeft 40
      moveUp 2
      moveLeft 1
    endActions
    playSound $54
    flashScreenWhite 2
    ;csWait 2
    entityActions $11
      faceRight 5
      moveLeft 1
      faceRight 1
    endActions
    entityActionsWait $81
      faceLeft 5
      moveRight 1
      faceLeft 1
    endActions
    setPriority $11, 0
    ; command 53
    csWait 40
    nextText $80,$81           ; "Max fights well, however...{D2}"
    nextSingleText $80,$81     ; "Pity I can't stay... I must return{N}to Mistress Mishaela.{D2}"
    ; command  51 2
    ; command 53
    entityActions $81
      moveUp 1
      moveRight 2
      moveUp 1
      moveRight 2
    endActions
    entityActionsWait $11
      faceUp 20
      jumpUp 1
      moveUp 1
      moveRight 3
    endActions
    nextSingleText $0,15      ; "Hold it, Lynx! You'll have{N}to get past me first.{D2}"
    ; command 53
    setCamDest 11,13
    setActscript $81,eas_Jump
    csWait 60
    ; command  51 1
    entityActions $81
      moveLeft 1
      faceRight 20
      moveLeft 1
      faceRight 20
    endActions
    entityActionsWait $F
      faceLeft 20
      moveLeft 1
      faceLeft 20
      moveLeft 1
    endActions
    nextSingleText $80,15     ; "I'll knock you down and wipe{N}the floor with you, Devil!{D2}"
    ; command  51 2
    customActscript $F
     ac_setSpeed $40,$40   
     ac_jump eas_Idle   
    ac_end      
    entityActions $81
      faceRight 15
      moveUp 1
    endActions       
    entityActionsWait $F
      moveLeft 3
    endActions
    setQuake 1
    playSound SFX_LIGHTNING_2
    flashScreenWhite 5
    entityActions $11
      jumpUp 1
      moveDown 1
    endActions
    setBlocks 50,6,5,5,10,14
    flashScreenWhite 5
    ; command  51 2
    playSound SFX_FALLING
    entityActionsWait $81
      ;moveUp 1
      ;moveLeft 2
      moveUpLeft 1
      moveDownLeft 1
      ; unknownMoveCommand 10 4E
      moveDown 1
    endActions
    setQuake 0
    csWait 40
    customActscript $F
     ac_setSpeed $30,$30   
     ac_jump eas_Idle   
    ac_end  
    ; command  51 1
    ; command  51 1
    entityActionsWait $81
      faceDown 20
      moveUp 4
    endActions
    setPos $81,13,9,UP
    setFacing $81,LEFT
    csWait 60
    setCamDest 9,14
    csWait 40
    ; rotate to implement here
    setFacing $F,DOWN
    setActscript $F,eas_Jump
    csWait 30
    ; command  51 1
    entityActionsWait $F
      moveDown 2
      faceLeft 20
    endActions
    setFacing $11,RIGHT
    nextSingleText $0,17      ; "Ridion, he got away.{N}I'm concerned about Adam and{N}the others. Let's hurry up{N}and rejoin them.{D2}"
    ; command  51 2
    ; command 53
    entityActions $11
      moveLeft 6
    endActions
    entityActionsWait $F
      moveLeft 7
    endActions
    csWait 30
    setPos $11,1,1,RIGHT
    setPos $F,1,1,DOWN
    setCamDest 0,6
    csWait 60
    nextSingleText $0,$80      ; "With this, Mishaela, it's time{N}for you to die.{N}Your anger is useless.{N}This is the end.{D2}"
    nextSingleText $FF,255      ; "Adam fires his laser cannon.{D2}"
    ; command 8 3 8D 5B
    setPos $8A,5,10,UP
    flashScreenWhite 2
    csWait 2
    csWait 23
    ;playSound SFX_PRISM_LASER_CUTSCENE_FIRING
    csWait 12
    ; command  51 4
    ; command 53
    entityActions $8A
      moveUp 5
      ; unknownMoveCommand 10 4B
    endActions
    playSound SFX_PRISM_LASER_CUTSCENE_FIRING
    entityActions $82
      faceDown 5
      moveRight 4
      moveDown 1
      moveRight 2
    endActions
    entityActions $83
      faceDown 5
      moveRight 3
      moveDown 2
      moveRight 2
    endActions
    entityActions $84
      faceDown 5
      moveRight 5
      moveDown 2
      moveRight 2
    endActions
    csWait 30
    setBlocks 57,8,7,7,3,3
    csWait 60
    setPos $8A,1,1,UP
    ; command 3C 8 1E
    ;setBlocks 25,1,5,7,5,3
    setPos $82,11,9,DOWN
    setPos $83,13,8,DOWN
    setPos $84,12,10,DOWN
    setFacing $82,LEFT
    setFacing $83,LEFT
    setFacing $84,LEFT
    csWait 45
    setCamDest 6,4
    csWait 60
    ; command  51 2
    entityActionsWait $80
      moveUp 2
      moveRight 3
    endActions
    csWait 40
    nextText $80,$82           ; "Oh, ho ho ho!{N}I can't be defeated *that* easily!{D2}"
    nextSingleText $80,$82     ; "Eiku, destroy those{N}hindering pests!{D2}"
    ; command  51 1
    entityActionsWait $83
      moveLeft 1
    endActions
    nextText $80,$83           ; "I have my orders...{N}it's nothing personal!{D2}"
    nextSingleText $80,$83     ; "Take this... Blaze level 3!{D2}"
    playSound SFX_SPELL_CAST
    flashScreenWhite 10
    csWait 2
    flashScreenWhite 10
    csWait 2
    flashScreenWhite 10
    csWait 2
    csWait 30
    playSound $75
    setPos $8B,7,4,DOWN
    setPos $8C,8,1,DOWN
    setPos $8D,9,3,DOWN
    ; command  51 4
    entityActions $8B
      moveDown 6
    endActions
    entityActions $8C
      moveDown 7
    endActions
    entityActions $8D
      moveDown 6
    endActions
    entityActionsWait $80
      faceLeft 10
      faceRight 5
      faceLeft 5
      faceRight 5
    endActions
    playSound SFX_LIGHTNING_2
    setQuake 1
    setPos $8E,7,10,LEFT
    csWait 20
    playSound SFX_LIGHTNING_2
    setPos $8E,9,9,LEFT
    csWait 20
    playSound SFX_LIGHTNING_2
    setPos $8E,8,8,LEFT
    csWait 20
    setPos $8E,1,1,LEFT
    playSound $75
    setPos $8B,7,2,UP
    setPos $8C,8,2,UP
    setPos $8D,9,4,UP
    setQuake 0
    ; command  51 4
    entityActions $8B
      moveDown 6
    endActions
    entityActions $8C
      moveDown 6
    endActions
    entityActions $8D
      moveDown 6
    endActions
    entityActionsWait $80
      faceRight 10
      faceLeft 5
      faceRight 5
      faceLeft 5
    endActions
    playSound SFX_LIGHTNING_2
    setQuake 1
    setPos $8E,9,10,LEFT
    csWait 20
    playSound SFX_LIGHTNING_2
    setPos $8E,7,8,LEFT
    csWait 10
    playSound SFX_LIGHTNING_2
    setPos $8E,8,8,LEFT
    csWait 20
    setPos $8E,1,1,LEFT
    ;setBlocks 25,9,5,6,5,3
    setBlocks 57,16,7,7,3,3
    setPos $8B,1,1,LEFT
    setPos $8C,1,1,LEFT
    setPos $8D,1,1,LEFT
    ;setFacing $8B,UP
    ;setFacing $8C,UP
    ;setFacing $8D,UP    
    setQuake 0
    ; command  51 1
    ;entityActionsWait $80
    ;  ; unknownMoveCommand 4 1
    ;endActions
    ;setFacing $80,DOWN
    customActscript $80
      ac_setAnimCounter $0
      ac_autoFacing $0
      ac_setSpeed $10,$10 
      ac_moveRel 1,0
      ac_setFacing LEFT
      ac_updateSprite
      ac_wait 5
      ac_setFacing UP
      ac_updateSprite
      ac_wait 5
      ac_setFacing RIGHT
      ac_updateSprite
      ac_wait 5
      ac_setFacing DOWN
      ac_updateSprite
      ac_wait 5
      ac_setFacing LEFT
      ac_updateSprite
      ac_wait 5
      ac_setFacing UP
      ac_updateSprite
      ac_wait 5
      ac_setFacing RIGHT
      ac_updateSprite
      ac_wait 5
      ac_setFacing DOWN
      ac_updateSprite
      ac_wait 5
      ac_jump eas_LyingLeft
    ac_end
    playSound $12
    ; rotate + shrink to implement here
    csWait 6
    ; rotate + shrink to implement here
    csWait 9
    ; rotate + shrink to implement here
    csWait 6
    ; rotate + shrink to implement here
    csWait 150
    shiver $83
    playSound $7
    nextSingleText $80,$83     ; "Hah hah hah ha!{N}You'd do well to realise{N}just how much power I have.{D2}"
    setFacing $82,RIGHT
    nextSingleText $80,$82     ; "Now Lynx,{N}Eiku, Magus - let's GO!{D2}"
    ; command  51 1
    entityActions $82
      moveRight 6
    endActions
    entityActionsWait $81
      faceDown 5
    ;  moveUp 1
    endActions
    customActscriptWait $81
      ac_autoFacing $0
      ac_moveRel 0,-1
      ac_jump eas_Idle
    ac_end
    csWait 40
    customActscriptWait $81
      ac_autoFacing $FFFF
      ac_jump eas_Idle
    ac_end
    ; command  51 1
    entityActions $81
      moveDown 1
      moveRight 4
    endActions
    entityActions $83
      moveDown 1
      moveRight 5
    endActions
    entityActionsWait $84
      faceUp 20
      moveUp 1
      moveRight 5
    endActions
    nextSingleText $0,17      ; "A.. Adaaaam!{D2}"
    setPos $11,5,9,RIGHT
    setPos $F,4,9,DOWN
    setPos $1,3,9,UP
    setPos $2,2,9,UP
    setPos $5,1,9,UP
    ; command  51 2
    entityActions $11
      moveRight 3
      moveDown 1
      moveRight 1
      faceUp 20
    endActions
    entityActions $F
      moveRight 4
      moveDown 1
      faceUp 20
    endActions
    entityActions $1
      moveRight 4
      moveDown 2
      moveRight 3
      faceUp 20
    endActions
    entityActions $2
      moveRight 5
      moveDown 2
      moveRight 2
      faceUp 20
    endActions
    entityActionsWait $5
      moveRight 6
      moveDown 2
      moveRight 1
      faceUp 20
    endActions
    setCamDest 4,5
    shiver $11
    nextSingleText $0,17      ; "...{N}Adam, are you alright?!{D2}"
    nextSingleText $0,$80      ; "...{N}Master{D2} Max...{D2}"
    setFacing $11,RIGHT
    nextText $0,17            ; "Mishaela has damaged Adam...{D2}"
    setFacing $11,DOWN
    nextText $0,17            ; "Mead, Paige, Sonette, you stay{N}here and help Adam.{D2}"
    setFacing $11,LEFT
    nextSingleText $0,17      ; "Ridion, follow me, we'll go{N}after Mishaela!{D2}"
    ; command  51 2
    entityActions $11
      moveRight 3
    endActions
    entityActionsWait $F
      moveRight 3
    endActions
    ; command  51 2
    entityActionsWait $1
      moveRight 2
      faceUp 20
    endActions
    setFacing $2,RIGHT
    setFacing $5,RIGHT
    nextSingleText $0,1       ; "Please don't leave us here!{N}Let us come and fight with you.{D2}"
    setFacing $11,DOWN
    setFacing $F,DOWN
    nextSingleText $0,17      ; "Mead, don't say such things.{N}Adam will need someone to{N}stay and assist him, won't he?{D2}"
    nextSingleText $0,2       ; "What a thing to say!{N}I'm concerned that only two{N}people are going though.{D2}"
    setFacing $11,LEFT
    setFacing $F,LEFT
    nextSingleText $0,15      ; "It'll be okay Paige.{N}Though you are gallant,{N}you are needed here.{D2}"
    ; command  51 1
    entityActionsWait $5
      moveUp 1
      faceRight 20
    endActions
    nextSingleText $0,5       ; "Max and the others{N}won't be harmed.{D2}"
    ; command  51 1
    entityActions $11
      faceLeft 20
      moveLeft 1
    endActions
    entityActionsWait $F
      faceLeft 20
      moveUp 1
    endActions
    nextText $0,17            ; "That's right Sonette.{D2}"
    nextSingleText $0,17      ; "I'll leave Adam in{N}your capable hands. Ridion will{N}come with me.{D2}"
    setPos $82,19,8,RIGHT
    setPos $81,18,9,LEFT
    setPos $83,19,9,LEFT
    setPos $84,20,9,LEFT
    setFacing $82,UP
    setFacing $84,UP
    setFacing $83,UP
    setFacing $81,UP
    ; command  51 2
    ; command 53
    entityActions $11
      moveRight 1
      moveUp 1
      moveRight 3
      moveUp 1
      faceRight 20
    endActions
    entityActions $F
      faceRight 40
      moveRight 4
    endActions
    entityActions $1
      moveLeft 2
      moveUp 2
      faceLeft 20
    endActions
    entityActions $2
      moveUp 1
    endActions
    entityActionsWait $5
      moveUp 1
      faceRight 20
    endActions
    ; command 53
    setCamDest 12,4
    nextSingleText $0,17      ; "Just you wait, Mishaela!{D2}"
    setFacing $82,LEFT
    setFacing $84,LEFT
    setFacing $83,LEFT
    setFacing $81,LEFT
    setCamDest 13,4
    csWait 30
    shiver $82
    nextSingleText $80,$82     ; "Ho ho ho! You're not going{N}to stop me here!{N}I'll cast Spark level 3!{D2}"
    playSound $4D
    flashScreenWhite 10
    csWait 2
    flashScreenWhite 10
    csWait 2
    flashScreenWhite 10
    csWait 2
    ; command  51 2
    entityActions $11
      faceRight 20
      moveUp 1
    endActions
    entityActionsWait $F
      faceRight 20
      moveDown 1
    endActions
    setQuake 4
    playSound $51
    setPos $85,15,5,UP
    setPos $86,15,6,UP
    setPos $87,15,7,UP
    setPos $88,15,8,UP
    setPos $89,15,9,UP
    csWait 2
    playSound $51
    csWait 2
    playSound $76
    flashScreenWhite 10
    csWait 2
    csWait 30
    setPos $85,1,1,UP
    setPos $86,1,1,UP
    setPos $87,1,1,UP
    setPos $88,1,1,UP
    setPos $89,1,1,UP
    setPos $11,15,7,LEFT
    setPos $F,15,10,LEFT
    ; command  51 1
    ;entityActions $11
      ; unknownMoveCommand 84 1
    ;endActions
    ;entityActionsWait $F
      ; unknownMoveCommand 87 1
    ;endActions
    customActscript $11
      ac_setFacing LEFT
      ac_updateSprite
      ac_wait 5
      ac_setFacing UP
      ac_updateSprite
      ac_wait 5
      ac_setFacing RIGHT
      ac_updateSprite
      ac_wait 5
      ac_setFacing DOWN
      ac_updateSprite
      ac_wait 5
      ac_setFacing LEFT
      ac_updateSprite
      ac_wait 5
      ac_setFacing UP
      ac_updateSprite
      ac_wait 5
      ac_setFacing RIGHT
      ac_updateSprite
      ac_setFlip $1
      ac_updateSprite
      ac_setAnimCounter $0
      ac_jump eas_Idle
    ac_end
    customActscript $F
      ac_setFacing UP
      ac_updateSprite
      ac_wait 5
      ac_setFacing RIGHT
      ac_updateSprite
      ac_wait 5
      ac_setFacing DOWN
      ac_updateSprite
      ac_wait 5
      ac_setFacing LEFT
      ac_updateSprite
      ac_wait 5
      ac_setFacing UP
      ac_updateSprite
      ac_wait 5
      ac_setFacing RIGHT
      ac_updateSprite
      ac_wait 5
      ac_setFacing DOWN
      ac_updateSprite
      ac_setFlip $2
      ac_updateSprite
      ac_setAnimCounter $0
      ac_jump eas_Idle
    ac_end
    setQuake 0
    ; rotate to implement here
    ; rotate to implement here
    csWait 50
    ; command  51 1
    entityActionsWait $82
      moveLeft 1
      faceUp 20
    endActions
    nextSingleText $80,$82     ; "Your turn, Magus!{D2}"
    ; command  51 1
    entityActionsWait $84
      moveUp 1
      moveLeft 1
      faceUp 20
    endActions
    nextSingleText $80,$84     ; "Alright! (guffaws){N}Blaze level 2!{D2}"
    setCamDest 14,3
    playSound SFX_SPELL_CAST
    flashScreenWhite 10
    csWait 2
    flashScreenWhite 10
    csWait 2
    flashScreenWhite 10
    csWait 2
    playSound SFX_INTRO_LIGHTNING
    setPos $8B,18,3,DOWN
    setPos $8C,19,2,DOWN
    setPos $8D,20,1,DOWN
    ; command  51 2
    entityActions $8B
      moveDown 3
    endActions
    entityActions $8C
      moveDown 4
    endActions
    entityActionsWait $8D
      moveDown 5
    endActions
    setQuake 1
    playSound SFX_LIGHTNING_2
    setPos $8B,1,1,DOWN
    setPos $8C,1,1,DOWN
    setPos $8D,1,1,DOWN
    ;setFacing $8B,UP
    ;setFacing $8C,UP
    ;setFacing $8D,UP        
    setPos $8E,18,6,LEFT
    csWait 10
    playSound SFX_LIGHTNING_2
    setPos $8E,19,6,LEFT
    csWait 10
    playSound SFX_LIGHTNING_2
    setPos $8E,20,6,LEFT
    csWait 10
    setPos $8E,1,1,LEFT
    ;setBlocks 25,23,3,6,18,2
    flashScreenWhite 2
    setBlocks 50,21,6,8,16,3
    flashScreenWhite 2
    setQuake 0
    csWait 60
    setFacing $82,LEFT
    nextSingleText $80,$82     ; "How do you like that, Max?{N}Oh ho ho ho!{D2}"
    ; command  51 1
    entityActionsWait $84
      faceLeft 10
      moveRight 1
    endActions
    ; command  51 2
    entityActions $82
      moveRight 1
      moveUp 1
    ;endActions
      ; unknownMoveCommand 10 4E
    ;playSound SFX_FALLING
      eaSound SFX_FALLING
    ;entityActions $82
      moveUp 2
      jumpUp 1
      moveUp 4
    endActions
    entityActions $81
      faceUp 30
      moveUp 1
      moveRight 1
      moveUp 1
    ;endActions
      ; unknownMoveCommand 10 4E
    ;playSound SFX_FALLING
      eaSound SFX_FALLING
    ;entityActions $81
      moveUp 2
      jumpUp 1
      moveUp 4
    endActions
    entityActions $83
      faceUp 80
      moveUp 2
    ;endActions
      ; unknownMoveCommand 10 4E
    ;playSound SFX_FALLING
      eaSound SFX_FALLING
    ;entityActions $83
      moveUp 2
      jumpUp 1
      moveUp 4
    endActions
    entityActionsWait $84
      faceLeft 120
      moveLeft 1
      moveUp 1
    ;entityActions $84
      ; unknownMoveCommand 10 4E
    ;playSound SFX_FALLING
      eaSound SFX_FALLING
    ;endActions
    ;entityActions $84
      moveUp 2
      jumpUp 1
      moveUp 4
    endActions
    setCamDest 12,4
    ; rotate to implement here
    shiver $11
    customActscript $11
      ac_setAnimCounter $FFFF
    	ac_autoFacing $FFFF
    	ac_setFlip 0
      ac_setFacing DOWN
      ac_updateSprite
      ac_jump eas_Idle
    ac_end
    ; rotate to implement here
    shiver $F
    ; command  51 2
    customActscript $F
    	ac_setFlip 0
    	ac_autoFacing $FFFF
      ac_setAnimCounter $FFFF
      ac_updateSprite
      ac_jump eas_Idle
    ac_end    
    entityActionsWait $11
      moveDown 1
    endActions
    ; command  51 2
    entityActionsWait $F
      moveUp 1
    endActions
    nextText $0,17            ; "Ridion, we must destroy{N}Mishaela and her devils{N}to stop their evil plan...{D1}"
    nextSingleText $0,17      ; "At all costs!{D2}"
    nextSingleText $80,15     ; "Yes, we will defeat them!{D2}"
    ; command  51 2
    entityActions $11
      moveRight 4
      moveUp 1
    ;endActions
      ; unknownMoveCommand 10 4E
    ;playSound SFX_FALLING
      eaSound SFX_FALLING
    ;entityActions $11
      moveUp 2
      jumpUp 1
      moveUp 3
    endActions
    entityActionsWait $F
      faceRight 60
      moveRight 4
      moveUp 2
    ;endActions
      ; unknownMoveCommand 10 4E
    ;playSound SFX_FALLING
      eaSound SFX_FALLING
    ;entityActionsWait $F
      moveUp 2
      jumpUp 1
      moveUp 3
    endActions
    csWait 60
    ; command 8 3 8D 5F
    playSound $FD
    fadeOutB
    csWait 150
    csc_end
    
