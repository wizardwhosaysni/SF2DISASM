
; ASM FILE data\maps\entries\map07\mapsetups\scripts.asm :
; 0x55A36..0x55F8E : 
cs_55A36:       textCursor $4AE
                setCamDest 6,2
                nextSingleText $0,139   ; "Are you a phoenix?{N}The legendary bird?{W1}"
                nextText $C0,ALLY_RUBURAN ; "Y...yeah, I'm a phoenix.{W2}"
                nextSingleText $C0,ALLY_RUBURAN ; "But...legendary?{N}I don't know about that.{W1}"
                nextSingleText $0,129   ; "You are legendary, {NAME;7}!{N}I read that a phoenix serves{N}a god.{W1}"
                nextText $C0,ALLY_RUBURAN ; "God?  Ah, Volcanon!{N}{NAME;10} calls him a god. {W2}"
                nextSingleText $C0,ALLY_RUBURAN ; "As long as he watches over{N}us, nothing can break the{N}peace of Parmecia.{W1}"
                entityActionsWait 139
                 moveUp 1
                endActions
                nextText $0,139         ; "Volcanon?  The great being{N}who created the Earth?{W2}"
                nextSingleText $0,139   ; "Oh, this is the happiest day{N}of my life!{W1}"
                entityActionsWait 139
                 moveDown 1
                endActions
                setFacing 139,RIGHT
                nextSingleText $0,139   ; "Please let me go with you{N}and meet Volcanon!{W1}"
                nextText $C0,ALLY_RUBURAN ; "Ummm...OK.{W2}"
                nextText $C0,ALLY_RUBURAN ; "To tell the truth, I hurt{N}my wing during this trip.{W2}"
                nextText $C0,ALLY_RUBURAN ; "I stopped by here to ask{N}for help.{W2}"
                nextSingleText $C0,ALLY_RUBURAN ; "But, I don't want to trouble{N}you....{W1}"
                nod 139
                nextSingleText $0,139   ; "Don't worry.  These lads{N}love trouble.{W1}"
                entityActionsWait 139
                 moveDown 1
                 moveRight 1
                endActions
                setFacing 139,DOWN
                setFacing ALLY_RUBURAN,DOWN
                nextText $0,139         ; "{LEADER}!{W2}"
                nextText $0,139         ; "Why didn't you tell me you{N}were here?  Did you listen{N}to our conversation?{W2}"
                nextText $0,139         ; "You know, it's time for us to{N}set out!{W2}"
                nextSingleText $0,139   ; "We're going to Mt. Volcano{N}with {NAME;7}.{N}It's in the far east!{W1}"
                nextSingleText $0,128   ; "Sir Astral!{W1}"
                entityActionsWait 128
                 moveDown 2
                endActions
                setFacing 128,LEFT
                setFacing 139,RIGHT
                nextSingleText $0,128   ; "You said, you're going too?{N}No!{W1}"
                setActscriptWait 139,eas_JumpLeft
                csWait 40
                entityActionsWait 139
                 moveRight 1
                endActions
                nextSingleText $0,139   ; "Wh...why not?{W1}"
                csWait 30
                nextText $0,128         ; "We came here just a year{N}ago.{W2}"
                nextSingleText $0,128   ; "We're still learning about{N}this country.  You're needed{N}here.{W1}"
                nod 129
                nextSingleText $0,129   ; "He's right.  You must stay.{W1}"
                entityActions 128
                 moveUp 1
                endActions
                entityActionsWait 139
                 moveLeft 1
                 moveUp 1
                endActions
                setFacing ALLY_RUBURAN,UP
                nextText $0,129         ; "{LEADER}, please take your{N}party and go with{N}{NAME;7}.{W2}"
                nextSingleText $0,129   ; "Astral, do you agree?{W1}"
                setFacing 139,DOWN
                csWait 60
                nextText $0,139         ; "Hmmmmm....{W2}"
                setFacing 139,UP
                nod 139
                nextSingleText $0,139   ; "Y...yes.{W1}"
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                nextSingleText $C0,ALLY_RUBURAN ; "Then, they're my companions!{W1}"
                nod 129
                entityActionsWait ALLY_RUBURAN
                 moveDown 2
                endActions
                nextText $C0,ALLY_RUBURAN ; "I'm {NAME;7}.{W2}"
                nextText $C0,ALLY_RUBURAN ; "I really appreciate your{N}kindness.{W2}"
                nextSingleText $C0,ALLY_RUBURAN ; "Mt. Volcano is in the east....{N}It's very far away.{W1}"
                nextSingleText $FF,255  ; "{CLEAR}{LEADER} decides to take{N}{NAME;7} with him.{W1}{CLEAR}"
                joinForceAI ALLY_RUBURAN,$FFFF ; 0054 JOIN FORCE WITH AI
                entityActionsWait ALLY_RUBURAN
                 moveDown 2
                endActions
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                followEntity ALLY_MEAD,ALLY_RUBURAN,2
                followEntity ALLY_PAIGE,ALLY_MEAD,2
                followEntity ALLY_HAWEL,ALLY_IAN,5
                followEntity ALLY_KNUCKLES,ALLY_IAN,6
                csWait 60
                nextSingleText $0,129   ; "Minister, bring the gift!{W1}"
                nod 128
                nextSingleText $0,128   ; "Yes, sir.{W1}"
                entityActionsWait 128
                 moveRight 2
                 moveUp 1
                endActions
                setFacing 128,UP
                csWait 60
                entityActionsWait 128
                 moveLeft 3
                 moveDown 2
                endActions
                nextSingleText $0,128   ; "A parting gift.  Take it.{W1}"
                nextSingleText $FF,255  ; "{LEADER} receives 100{N}gold coins.{W1}"
                entityActionsWait 128
                 moveUp 1
                 moveRight 1
                endActions
                setFacing 128,DOWN
                entityActionsWait 139
                 moveRight 1
                 moveDown 1
                endActions
                nextSingleText $0,139   ; "Good luck, {LEADER}.{W2}"
                nextSingleText $0,139   ; "Find as many friends as you{N}can on your journey with{N}{NAME;7}.{W1}"
                nod ALLY_IAN
                csWait 60
                setCameraEntity ALLY_IAN
                entityActionsWait ALLY_IAN
                 moveDown 18
                endActions
                warp $6,$B,$1,$3
                csc_end
cs_55BEE:       textCursor $4E1
                setActscriptWait ALLY_RUBURAN,eas_Init
                nextSingleText $0,128   ; "Welcome back, {LEADER}.{W1}"
                setDest 32768,11,7
                setDest ALLY_RUBURAN,10,8
                setCamDest 6,2
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                nextSingleText $0,139   ; "Thanks to you, Granseal has{N}many allies to trade with.{W1}"
                nextText $0,128         ; "You've also made a lot of{N}new friends!{W2}"
                nextSingleText $0,128   ; "Great job!{W1}"
                nextText $0,139         ; "I heard about everything{N}from Bedoe.{W2}"
                nextText $0,139         ; "I never imagined Zeon could{N}be revived!{W1}"
                nextSingleText $0,139   ; "I understand that Volcanon{N}is angry.{W1}"
                setFacing 128,LEFT
                nextSingleText $0,128   ; "So Princess Elis must be...{W1}"
                nextSingleText $0,ALLY_RUBURAN ; "She's alive.{W1}"
                customActscriptWait 129
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 139
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 128
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setFacing 128,DOWN
                stopEntity 129
                stopEntity 139
                stopEntity 128
                csWait 60
                playSound SFX_BATTLEFIELD_DEATH
                setActscript 129,eas_Jump
                setActscript 139,eas_Jump
                setActscriptWait 128,eas_Jump
                setActscript 129,eas_Jump
                setActscript 139,eas_Jump
                setActscriptWait 128,eas_Jump
                startEntity 129
                startEntity 139
                startEntity 128
                customActscriptWait 129
                 ac_setSpeed 56,56      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 129
                 moveDown 2
                 moveLeft 1
                 moveDown 1
                endActions
                setActscriptWait ALLY_RUBURAN,eas_Jump
                nextSingleText $C0,129  ; "What did you say?!{N}Is she alive?{W1}"
                nextSingleText $0,ALLY_RUBURAN ; "Y...yes!{W1}"
                nextSingleText $0,139   ; "Is it true?{N}Is it true?!{W1}"
                nextSingleText $0,ALLY_RUBURAN ; "Yes, it is.{W1}"
                customActscriptWait 129
                 ac_setSpeed 32,32      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 139
                 ac_setSpeed 32,32      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 128
                 ac_setSpeed 32,32      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 129
                 moveUp 1
                 moveRight 1
                 moveUp 2
                endActions
                setFacing 129,DOWN
                executeSubroutine csub_55EF4
                customActscriptWait ALLY_RUBURAN
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                nod ALLY_IAN
                setActscript ALLY_RUBURAN,eas_Jump
                nod 128
                setFacing ALLY_RUBURAN,RIGHT
                setActscript ALLY_IAN,eas_Jump
                nod 139
                entityActions ALLY_RUBURAN
                 moveUp 1
                endActions
                headshake ALLY_IAN
                setActscriptWait ALLY_RUBURAN,eas_Jump
                entityActionsWait ALLY_RUBURAN
                 moveRight 2
                endActions
                setFacing ALLY_RUBURAN,UP
                nod 128
                setActscriptWait 139,eas_Jump
                nod ALLY_IAN
                nextSingleText $FF,255  ; "{LEADER} and {NAME;7}{N}explain in detail.{W1}"
                entityActionsWait ALLY_RUBURAN
                 moveLeft 1
                 moveUp 1
                endActions
                nod ALLY_RUBURAN
                setFacing 139,RIGHT
                setFacing 128,LEFT
                setActscriptWait 129,eas_Jump
                nod 129
                entityActionsWait ALLY_IAN
                 moveLeft 1
                 moveUp 1
                endActions
                setFacing 139,DOWN
                nod ALLY_IAN
                entityActionsWait ALLY_IAN
                 moveDown 1
                 moveRight 1
                endActions
                setFacing ALLY_IAN,UP
                nextText $FF,255        ; "About the ancient ruins{N}and Creed....{W2}"
                nextText $FF,255        ; "And Zeon's message through{N}Evil Spilit.{W2}"
                nextSingleText $FF,255  ; "They explain everything.{W1}"
                entityActions ALLY_RUBURAN
                 moveDown 1
                 moveLeft 1
                 moveDown 1
                endActions
                setFacing 128,DOWN
                waitIdle ALLY_RUBURAN
                setFacing ALLY_RUBURAN,UP
                executeSubroutine sub_55F82
                csWait 10
                nextSingleText $0,128   ; "Amazing!{N}{LEADER}!  And {NAME;7}...{W1}"
                setFacing 128,LEFT
                nextSingleText $0,128   ; "you've experienced a great{N}deal.{W1}"
                nextSingleText $0,139   ; "Hmmm...mmmm....{W1}"
                nextSingleText $0,128   ; "Sir Astral?{W1}"
                setFacing 139,RIGHT
                nextSingleText $0,139   ; "What should we do now?{W1}"
                nextSingleText $C0,129  ; "Easy, we have to defeat{N}Zeon and save Elis!{W1}"
                customActscriptWait 128
                 ac_setSpeed 40,40      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 128
                 moveLeft 1
                endActions
                setFacing 128,UP
                nextSingleText $0,128   ; "Impossible!{W1}"
                csWait 50
                setFacing 139,UP
                nextSingleText $0,139   ; "The King is right.{W1}"
                setActscriptWait 128,eas_Jump
                setFacing 128,LEFT
                nextSingleText $0,128   ; "What?{W1}"
                nextText $C0,129        ; "Astral, thank you.{W2}"
                nextSingleText $C0,129  ; "What do we have to do first?{W1}"
                entityActionsWait 128
                 moveRight 1
                endActions
                setFacing 128,LEFT
                nextText $0,139         ; "We have to go to North{N}Parmecia.{W2}"
                nextSingleText $0,139   ; "We'd better go and see the{N}storytellers in Tristan.{W1}"
                shiver 128
                nextSingleText $0,128   ; "Sir!{W1}"
                setFacing 139,RIGHT
                nextSingleText $FF,255  ; "Astral winks at the Minister{N}and smiles.{W1}"
                setFacing 139,UP
                nextSingleText $0,139   ; "It's an important job. Will{N}you allow me to go with{N}{LEADER}?{W1}"
                nextSingleText $C0,129  ; "Sure, sure!  Just bring{N}Elis back to me!{W1}"
                nextText $0,128         ; "Be careful, Astral.{W2}"
                nextSingleText $0,128   ; "It's dangerous out there.{W1}"
                setFacing 139,RIGHT
                nod 139
                nextSingleText $0,139   ; "I will!{W1}"
                setFacing 139,DOWN
                nextText $0,139         ; "{LEADER}.{W2}"
                nextSingleText $0,139   ; "I'm going with you as an{N}adviser.{W1}"
                playSound MUSIC_JOIN
                nextText $FF,255        ; "Adviser Astral has joined the{N}force."
                executeSubroutine j_FadeOut_WaitForP1Input
                hideText
                nextSingleText $0,139   ; "We have to remove the rocks{N}blocking the passageway{N}leading to North Parmecia.{W2}{N}KIDDObe we can use an{N}explosive!{W1}"
                nod ALLY_IAN
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                addNewFollower 139
                setF $46                ; Astral is a follower
                csc_end

; =============== S U B R O U T I N E =======================================

csub_55EF4:
                
                lea     (PALETTE_1_CURRENT).l,a0
                lea     (PALETTE_1_BASE).l,a1
                lea     plt_55F6A(pc), a2
                moveq   #$3F,d0 
loc_55F06:
                
                moveq   #0,d1
                move.w  (a0),d1
                andi.w  #$E00,d1
                lsr.w   #8,d1
                lsr.w   #1,d1
                move.w  (a0),d2
                andi.w  #$E,d2
                add.w   d2,d1
                move.w  (a0)+,d2
                andi.w  #$E0,d2 
                lsr.w   #3,d2
                add.w   d2,d1
                divu.w  #7,d1
                move.l  d1,d2
                swap    d2
                cmpi.w  #4,d2
                bcs.s   loc_55F34
                addq.w  #1,d1
loc_55F34:
                
                moveq   #7,d2
                sub.w   d1,d2
                move.b  (a2,d2.w),d3
                ext.w   d3
                move.b  8(a2,d2.w),d2
                ext.w   d2
                move.b  $10(a2,d1.w),d1
                ext.w   d1
                clr.w   d4
                lsl.w   #8,d1
                lsl.w   #4,d3
                or.w    d1,d4
                or.w    d2,d4
                or.w    d3,d4
                move.w  d4,(a1)+
                dbf     d0,loc_55F06
                clr.b   ((byte_FFDFAB-$1000000)).w
                lea     (PALETTE_1_BASE).l,a0
                jmp     (sub_19C8).w    

	; End of function csub_55EF4

plt_55F6A:      dc.w $E0C
                dc.w $A08
                dc.w $806
                dc.w $402
                dc.w $E0C
                dc.w $C0A
                dc.w $806
                dc.w $402
                dc.w 2
                dc.w $204
                dc.w $608
                dc.w $A0A

; =============== S U B R O U T I N E =======================================

sub_55F82:
                
                clr.b   ((byte_FFDFAB-$1000000)).w
                lea     ((PALETTE_1_BACKUP-$1000000)).w,a0
                jmp     (sub_19C8).w    

	; End of function sub_55F82

