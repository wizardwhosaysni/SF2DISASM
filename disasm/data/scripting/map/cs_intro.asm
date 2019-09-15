
; export coordinates shift X=+1, Y=+1

IntroCutscene:     
    ; executeSubroutine 0x57D6
    ; command C C0 5 FF DF 10 1D C9
    ; command 38
    newEntity $80,63,63,DOWN,73
    newEntity $81,63,63,DOWN,53
    newEntity $82,63,63,DOWN,56
    newEntity $83,63,63,DOWN,51
    newEntity $84,63,63,DOWN,50
    newEntity $85,63,63,DOWN,83
    newEntity $86,63,63,DOWN,83
    newEntity $87,63,63,DOWN,83
    newEntity $88,63,63,DOWN,83
    newEntity $89,63,63,DOWN,83
    newEntity $8A,63,63,DOWN,82
    newEntity $8B,63,63,DOWN,85
    newEntity $8C,63,63,DOWN,85
    newEntity $8D,63,63,DOWN,85
    newEntity $8E,63,63,DOWN,84
    newEntity $11,1,1,DOWN,17
    newEntity $F,1,3,DOWN,15
    newEntity $1,1,4,DOWN,1
    newEntity $2,1,5,DOWN,2
    newEntity $5,1,6,DOWN,5
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
    mapLoad 0,7,19
    ;setBlocks 5,3,5,7,1,26
    ;setBlocks 25,9,5,7,5,3
    ;setBlocks 1,26,5,7,25,9
    ;setBlocks 11,15,5,5,1,26
    ;setBlocks 25,17,5,5,11,15
    ;setBlocks 1,26,5,5,25,17
    ;setBlocks 18,2,3,6,1,26
    ;setBlocks 25,23,3,6,18,2
    ;setBlocks 1,26,3,6,25,23
    ; command  51 1
    ; command 53
    ; command  54 0
    textCursor $293           ; "Mishaela!{N}It's taken a long time. At last I've found you!{D3}{D1}"
    playSound $21
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
      moveUp 14
    endActions
    nextSingleText $0,17      ; "Mishaela!{N}It's taken a long time. At last I've found you!{D3}{D1}"
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
    setCamDest 7,23
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
    nextText $0,23            ; "What are you saying, Max?{N}If that's the case, it's time to finish me, don't you think?{D3}{D1}"
    nextSingleText $0,23      ; "Too bad I'm not the same old Mishaela you defeated before!{D3}{D1}"
    setCamDest 7,17
    entityActionsWait $81
     moveLeft 1
    endActions
    setFacing $81,UP
    nextText $80,21           ; "Mistress Mishaela, I am here!{N}You can always rely on Lynx.{D3}{D1}"
    nextSingleText $80,21     ; "Leave them to me!{D3}{D1}"
    nextText $0,23            ; "So, Max, it seems that you're here to stop us from fulfilling our dream.{D3}{D1}"
    nextText $0,23            ; " "
    nextSingleText $0,23      ; "Do as you wish, Lynx.{D3}{D1}"
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
    nextSingleText $80,21     ; "Well, Shining Force!{N}Show me what you've got!{D3}{D1}"
    setCamDest 7,23
    csWait 44
    nextSingleText $0,17      ; "Ridion, we can't let Mishaela escape!{D3}{D1}"
    setFacing $11,DOWN
    nextText $0,17            ; "Adam, take Mead and the others and go after Mishaela!{D3}{D1}"
    nextSingleText $0,17      ; " "
    nextSingleText $0,26      ; "Understood, Master Max.{N}We'll chase after Mishaela.{D3}{D1}"
    setFacing $80,DOWN
    nextSingleText $0,26      ; "Mead, Paige, Sonette, let's go. Follow me!{D3}{D1}"
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
    nextSingleText $0,26      ; "Right!{D3}{D1}"
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
    nextSingleText $0,17      ; "Ridion, you sneak up behind Lynx.{D3}{D1}"
    nextSingleText $80,15     ; "Okay Max!{D3}{D1}"
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
    setCamDest 7,19
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
    nextText $0,21            ; "They've gone after Mistress Mishaela?{D3}{D1}"
    nextSingleText $0,21      ; "I should get to her side quickly.{D3}{D1}"
    entityActionsWait $11
     moveUp 1
    endActions
    csWait 30
    entityActionsWait $11
     moveUp 1
    endActions
    csWait 40
    ; command  51 2
    ; command 53
    entityActions $11
      moveUp 1
    endActions
    entityActionsWait $81
      moveDown 1
    endActions
    flashScreenWhite 10
    csWait 2
    playSound $54
    entityActions $11
      faceUp 20
      moveDown 1
      moveLeft 1
      faceRight 20
      moveUp 1
      faceRight 40
      moveRight 1
    endActions
    entityActionsWait $81
      faceDown 20
      moveUp 1
      moveRight 1
      faceLeft 20
      moveDown 1
      faceLeft 40
      moveLeft 1
    endActions
    flashScreenWhite 10
    csWait 2
    playSound $53
    entityActions $11
      faceRight 20
      moveLeft 1
      faceRight 40
      moveUp 2
      moveRight 1
    endActions
    entityActionsWait $81
      faceLeft 20
      moveRight 1
      faceLeft 40
      moveUp 2
      moveLeft 1
    endActions
    flashScreenWhite 10
    csWait 2
    playSound $54
    entityActions $11
      faceRight 20
      moveLeft 1
    endActions
    entityActionsWait $81
      faceLeft 20
      moveRight 1
    endActions
    ; command 53
    csWait 40
    nextText $80,21           ; "Max fights well, however...{D3}{D1}"
    nextSingleText $80,21     ; "Pity I can't stay... I must return to Mistress Mishaela.{D3}{D1}"
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
    nextSingleText $0,15      ; "Hold it, Lynx! You'll have to get past me first.{D3}{D1}"
    ; command 53
    setCamDest 12,14
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
    nextSingleText $80,15     ; "I'll knock you down and wipe the floor with you, Devil!{D3}{D1}"
    ; command  51 2
    entityActions $81
      faceRight 40
      moveUp 1
    endActions
    entityActionsWait $F
      moveLeft 3
    endActions
    setQuake 1
    playSound $64
    setBlocks 25,17,4,5,11,15
    ; rotate to implement here
    ; command  51 2
    entityActions $81
      moveUp 1
      moveLeft 2
      ; unknownMoveCommand 10 4E
      moveDown 1
    endActions
    entityActionsWait $11
      jumpUp 1
      moveDown 1
    endActions
    setQuake 0
    csWait 40
    ; command  51 1
    ; command  51 1
    entityActionsWait $81
      faceDown 20
      moveUp 4
    endActions
    setPos $81,13,9,UP
    setFacing $81,LEFT
    csWait 60
    setCamDest 9,15
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
    nextSingleText $0,17      ; "Ridion, he got away.{N}I'm concerned about Adam and the others. Let's hurry up and rejoin them.{D3}{D3}"
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
    setCamDest 1,7
    csWait 60
    nextSingleText $0,26      ; "With this, Mishaela, it's time for you to die.{N}Your anger is useless. This is the end.{D3}{D1}"
    nextSingleText $0,26      ; "Adam fires his laser cannon.{D3}{D1}"
    ; command 8 3 8D 5B
    setPos $8A,5,10,UP
    flashScreenWhite 10
    csWait 2
    csWait 23
    playSound $50
    csWait 12
    ; command  51 4
    ; command 53
    entityActions $8A
      moveUp 5
      ; unknownMoveCommand 10 4B
    endActions
    entityActions $82
      faceDown 20
      moveRight 7
    endActions
    entityActions $83
      faceDown 20
      moveRight 7
    endActions
    entityActionsWait $84
      faceDown 20
      moveRight 7
    endActions
    ; command 3C 8 1E
    setBlocks 25,1,5,7,5,3
    setPos $82,11,9,DOWN
    setPos $83,13,8,DOWN
    setPos $84,12,10,DOWN
    setFacing $82,LEFT
    setFacing $83,LEFT
    setFacing $84,LEFT
    csWait 45
    setCamDest 6,5
    csWait 60
    ; command  51 2
    entityActionsWait $80
      moveUp 2
      moveRight 3
    endActions
    csWait 40
    nextText $80,23           ; "Oh, ho ho ho!{N}I can't be defeated *that* easily!{D3}{D1}"
    nextSingleText $80,23     ; "Eiku, destroy those hindering pests!{D3}{D1}"
    ; command  51 1
    entityActionsWait $83
      moveLeft 1
    endActions
    nextText $80,20           ; "I have my orders...{N}it's nothing personal!{D3}{D1}"
    nextSingleText $80,20     ; "Take this...{N}Blaze level 3!{D3}{D1}"
    playSound $4B
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
      faceLeft 40
      faceRight 20
      faceLeft 20
      faceRight 20
    endActions
    playSound $6B
    setQuake 1
    setPos $8E,7,10,LEFT
    csWait 20
    playSound $6B
    setPos $8E,9,9,LEFT
    csWait 20
    playSound $6B
    setPos $8E,8,8,LEFT
    csWait 20
    setPos $8E,1,1,LEFT
    playSound $75
    setPos $8B,7,2,DOWN
    setPos $8C,8,2,DOWN
    setPos $8D,9,4,DOWN
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
      faceRight 40
      faceLeft 20
      faceRight 20
      faceLeft 20
    endActions
    playSound $6B
    setQuake 1
    setPos $8E,9,10,LEFT
    csWait 20
    playSound $6B
    setPos $8E,7,8,LEFT
    csWait 10
    playSound $6B
    setPos $8E,8,8,LEFT
    csWait 20
    setPos $8E,1,1,LEFT
    setBlocks 25,9,5,6,5,3
    setQuake 0
    ; command  51 1
    entityActionsWait $80
      ; unknownMoveCommand 4 1
    endActions
    setFacing $80,DOWN
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
    nextSingleText $80,20     ; "Hah hah hah ha!{N}You'd do well to realise just how much power I have.{D3}{D1}"
    setFacing $82,RIGHT
    nextSingleText $80,23     ; "Now Lynx, Eiku, Magus - let's GO!{D3}{D1}"
    ; command  51 1
    entityActions $82
      moveRight 5
    endActions
    entityActionsWait $81
      faceDown 20
      moveUp 1
    endActions
    csWait 40
    ; command  51 1
    entityActions $81
      moveDown 1
      moveRight 3
    endActions
    entityActions $83
      moveDown 1
      moveRight 4
    endActions
    entityActionsWait $84
      faceUp 20
      moveUp 1
      moveRight 4
    endActions
    nextSingleText $0,17      ; "A.. Adaaaam!{D3}{D1}"
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
    setCamDest 5,7
    shiver $11
    nextSingleText $0,17      ; "...{N}Adam, are you alright?!{D3}{D1}"
    nextSingleText $0,26      ; "...{N}Master{D2} Max...{D3}{D1}"
    setFacing $11,RIGHT
    nextText $0,17            ; "Mishaela has damaged Adam...{D3}{D1}"
    setFacing $11,DOWN
    nextText $0,17            ; "Mead, Paige, Sonette, you stay here and help Adam.{D3}{D1}"
    setFacing $11,LEFT
    nextSingleText $0,17      ; "Ridion, follow me, we'll go after Mishaela!{D3}{D1}"
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
    nextSingleText $0,1       ; "Please don't leave us here! Let us come and fight with you.{D3}{D1}"
    setFacing $11,DOWN
    setFacing $F,DOWN
    nextSingleText $0,17      ; "Mead, don't say such things.{N}Adam will need someone to stay and assist him, won't he?{D3}{D3}"
    nextSingleText $0,2       ; "What a thing to say!{N}I'm concerned that only two people are going though.{D3}{D1}"
    setFacing $11,LEFT
    setFacing $F,LEFT
    nextSingleText $0,15      ; "It'll be okay Paige.{N}Though you are gallant, you are needed here.{D3}{D1}"
    ; command  51 1
    entityActionsWait $5
      moveUp 1
      faceRight 20
    endActions
    nextSingleText $0,5       ; "Max and the others won't be harmed.{D3}{D1}"
    ; command  51 1
    entityActions $11
      faceLeft 20
      moveLeft 1
    endActions
    entityActionsWait $F
      faceLeft 20
      moveUp 1
    endActions
    nextText $0,17            ; "That's right Sonette.{D3}{D1}"
    nextSingleText $0,17      ; "I'll leave Adam in your capable hands. Ridion will come with me.{D3}{D1}"
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
    setCamDest 12,5
    nextSingleText $0,17      ; "Just you wait, Mishaela!{D3}{D1}"
    setFacing $82,LEFT
    setFacing $84,LEFT
    setFacing $83,LEFT
    setFacing $81,LEFT
    setCamDest 13,5
    csWait 30
    shiver $82
    nextSingleText $80,23     ; "Ho ho ho!{N}You're not going to stop me here!{N}I'll cast Spark level 3!{D3}{D1}"
    playSound $4B
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
    setQuake 1
    playSound $64
    setPos $85,15,5,DOWN
    setPos $86,15,6,DOWN
    setPos $87,15,7,DOWN
    setPos $88,15,8,DOWN
    setPos $89,15,9,DOWN
    flashScreenWhite 10
    csWait 2
    csWait 30
    setPos $85,1,1,DOWN
    setPos $86,1,1,DOWN
    setPos $87,1,1,DOWN
    setPos $88,1,1,DOWN
    setPos $89,1,1,DOWN
    setPos $11,15,7,LEFT
    setPos $F,15,10,LEFT
    ; command  51 1
    entityActions $11
      ; unknownMoveCommand 84 1
    endActions
    entityActionsWait $F
      ; unknownMoveCommand 87 1
    endActions
    setQuake 0
    ; rotate to implement here
    ; rotate to implement here
    csWait 50
    ; command  51 1
    entityActionsWait $82
      moveLeft 1
      faceUp 20
    endActions
    nextSingleText $80,23     ; "Your turn, Magus!{D3}{D1}"
    ; command  51 1
    entityActionsWait $84
      moveUp 1
      moveLeft 1
      faceUp 20
    endActions
    nextSingleText $80,19     ; "Alright!{N}*guffaws*{N}Blaze level 2!{D3}{D1}"
    setCamDest 15,4
    playSound $4B
    flashScreenWhite 10
    csWait 2
    flashScreenWhite 10
    csWait 2
    flashScreenWhite 10
    csWait 2
    playSound $75
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
    playSound $6B
    setPos $8E,18,6,LEFT
    csWait 10
    playSound $6B
    setPos $8E,19,6,LEFT
    csWait 10
    playSound $6B
    setPos $8E,20,6,LEFT
    csWait 10
    setPos $8E,1,1,LEFT
    setBlocks 25,23,3,6,18,2
    setQuake 0
    csWait 60
    setFacing $82,LEFT
    nextSingleText $80,23     ; "How do you like that, Max?{N}Oh ho ho ho!{D3}{D1}"
    ; command  51 1
    entityActionsWait $84
      faceLeft 20
      moveRight 1
    endActions
    ; command  51 2
    entityActions $82
      moveRight 1
      moveUp 1
      ; unknownMoveCommand 10 4E
      moveUp 3
      moveDown 1
      moveUp 4
    endActions
    entityActions $81
      faceUp 60
      moveUp 1
      moveRight 1
      moveUp 1
      ; unknownMoveCommand 10 4E
      moveUp 3
      moveDown 1
      moveUp 4
    endActions
    entityActions $83
      faceUp 160
      moveUp 2
      ; unknownMoveCommand 10 4E
      moveUp 3
      moveDown 1
      moveUp 4
    endActions
    entityActionsWait $84
      faceLeft 240
      moveLeft 1
      moveUp 1
      ; unknownMoveCommand 10 4E
      moveUp 3
      moveDown 1
      moveUp 4
    endActions
    setCamDest 12,5
    ; rotate to implement here
    shiver $11
    ; rotate to implement here
    shiver $F
    ; command  51 2
    entityActionsWait $11
      moveDown 1
    endActions
    ; command  51 2
    entityActionsWait $F
      moveUp 1
    endActions
    nextText $0,17            ; "Ridion, we must destroy Mishaela and her devils to stop their evil plan...{D1} at all costs!{D3}{D1}"
    nextSingleText $0,17      ; " "
    nextSingleText $80,15     ; "Yes, we will defeat them!{D3}{D1}"
    ; command  51 2
    entityActions $11
      moveRight 4
      moveUp 1
      ; unknownMoveCommand 10 4E
      moveUp 3
      moveDown 1
      moveUp 3
    endActions
    entityActionsWait $F
      faceRight 60
      moveRight 4
      moveUp 2
      ; unknownMoveCommand 10 4E
      moveUp 3
      moveDown 1
      moveUp 3
    endActions
    csWait 60
    ; command 8 3 8D 5F
    playSound $FD
    fadeOutB
    csWait 150
    csc_end
