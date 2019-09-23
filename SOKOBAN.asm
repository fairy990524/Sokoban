TITLE Maze Game
main	EQU start@0
INCLUDE Irvine32.inc
;Wall = 35
;Exit = 88
;Player = 65
;Prize = 80
;Blank = 00
;Box = 79

.data
Bigtitle DWORD 	64,64,64,64,64,00,00,64,64,64,64,64,00,00,64,00,00,00,64,00,00,64,64,64,64,64,00,00,64,64,64,64,00,00,00,64,64,64,64,64,00,00,64,00,00,00,64
      DWORD 	64,00,00,00,00,00,00,64,00,00,00,64,00,00,64,00,00,64,00,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,64,00,00,64
      DWORD 	64,00,00,00,00,00,00,64,00,00,00,64,00,00,64,00,00,64,00,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,64,00,64
      DWORD 	64,00,00,00,00,00,00,64,00,00,00,64,00,00,64,00,64,00,00,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,64,00,64
      DWORD 	64,64,64,64,64,00,00,64,00,00,00,64,00,00,64,64,00,00,00,00,00,64,00,00,00,64,00,00,64,64,64,64,00,00,00,64,64,64,64,64,00,00,64,00,64,00,64
      DWORD 	00,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,64,00,00,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,64,00,64
      DWORD 	00,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,00,64,00,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,64,00,64
      DWORD 	00,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,00,64,00,00,00,64,00,64,00,64,00,00,64,00,00,00,64,00,00,64,00,00,00,64,00,00,64,00,00,64,64
      DWORD 	64,64,64,64,64,00,00,64,64,64,64,64,00,00,64,00,00,00,64,00,00,64,64,64,64,64,00,00,64,64,64,64,00,00,00,64,00,00,00,64,00,00,64,00,00,00,64
      DWORD     00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
      DWORD     00,00,00,00,00,00,00,00,00,00, 00,00,80,114,101,115,115,00,101,110,116,101, 114,00,116,111,00,115,116,97,114,116,46,46,46,00,00,00,00,00,00,00, 00,00,00,00,00

Maze DWORD  35,35,35,35,35,35,35,35,35
 DWORD      35,00,00,00,35,00,00,35,35
 DWORD      35,00,65,00,00,00,00,35,35
 DWORD      35,35,35,00,35,42,00,35,35
 DWORD      35,35,00,00,35,35,79,35,35
 DWORD      35,35,00,00,00,00,00,00,35
 DWORD      35,35,00,00,35,00,00,00,35
 DWORD      35,35,35,35,35,35,35,35,35
 DWORD      35,35,35,35,35,35,35,35,35

Maze1 DWORD  35,35,35,35,35,35,35,35,35
 DWORD      35,00,00,00,35,00,00,35,35
 DWORD      35,00,65,00,00,00,00,35,35
 DWORD      35,35,35,00,35,42,00,35,35
 DWORD      35,35,00,00,35,35,79,35,35
 DWORD      35,35,00,00,00,00,00,00,35
 DWORD      35,35,00,00,35,00,00,00,35
 DWORD      35,35,35,35,35,35,35,35,35
 DWORD      35,35,35,35,35,35,35,35,35

Maze2 DWORD 00,00,00,00,00,00,00,00,00
 DWORD      35,35,35,35,35,35,35,35,35
 DWORD      35,42,00,00,35,00,00,00,35
 DWORD      35,00,00,00,79,00,00,00,35
 DWORD      35,42,00,00,79,35,65,00,35
 DWORD      35,00,00,00,79,00,00,00,35
 DWORD      35,42,00,00,35,00,00,00,35
 DWORD      35,35,35,35,35,35,35,35,35
 DWORD      00,00,00,00,00,00,00,00,00  
  
Maze3 DWORD 00,00,00,00,00,00,00,00,00
 DWORD      00,00,35,35,35,00,00,00,00
 DWORD      00,00,35,42,35,00,00,00,00
 DWORD      00,00,35,00,35,35,35,35,00
 DWORD      35,35,35,79,00,79,42,35,00
 DWORD      35,42,00,79,65,35,35,35,00
 DWORD      35,35,35,35,79,35,00,00,00
 DWORD      00,00,00,35,42,35,00,00,00
 DWORD      00,00,00,35,35,35,00,00,00

Maze4 DWORD 35,35,35,35,35,35,35,35,35
 DWORD      35,35,35,35,35,35,35,35,35
 DWORD      35,00,00,00,00,00,00,00,35
 DWORD      35,00,00,00,00,00,00,42,35
 DWORD      35,65,00,79,79,79,00,42,35
 DWORD      35,00,00,00,00,00,00,42,35
 DWORD      35,00,00,00,00,00,00,00,35
 DWORD      35,35,35,35,35,35,35,35,35
 DWORD      35,35,35,35,35,35,35,35,35

Maze5 DWORD 35,35,35,35,35,35,35,35,35
 DWORD      35,00,00,00,00,00,00,00,35
 DWORD      35,00,00,79,65,00,00,00,35
 DWORD      35,00,79,35,00,35,00,00,35
 DWORD      35,00,00,35,00,42,00,00,35
 DWORD      35,00,35,35,42,00,00,35,35
 DWORD      35,00,00,00,00,00,00,35,35
 DWORD      35,00,00,00,00,35,35,35,35
 DWORD      35,35,35,35,35,35,35,35,35

 timer DWORD 100
 score DWORD 100
 playerPosition DWORD 80
 player DWORD 80
 level DWORD 1
 endPosition DWORD 128
 endPosition1 DWORD 76, 148, 220
 endPosition2 DWORD 84, 184, 268,168
 endPosition3 DWORD 136, 172, 208
 endPosition4 DWORD 164, 196
 UPDOWN DWORD 36
 LEFTRIGHT DWORD 4
 RuleMessage BYTE "          How to Play?", 0dh, 0ah,"Use direction arrow to control A", 0dh, 0ah,"Push O into *, then * become @", 0dh, 0ah,"Press ECS, then go back to menu", 0dh, 0ah,0
 MenuMessage BYTE "MENU", 0dh, 0ah,"1. LEVEL 1", 0dh, 0ah,"2. LEVEL 2", 0dh, 0ah,"3. LEVEL 3", 0dh, 0ah,"4. LEVEL 4", 0dh, 0ah,"5. LEVEL 5", 0dh, 0ah,"6. EXIT GAME", 0dh, 0ah,"Your choice?", 0dh, 0ah, 0
 messageDirections BYTE "Use the arrow keys to move", 0dh, 0ah, 0
 messageTime BYTE "Time Past", 0dh, 0ah, 0
 messageScore BYTE "Your Score is ", 0dh, 0ah, 0
 messageWin BYTE "YOU WIN!!!", 0dh, 0ah, 0

levelmessage1  BYTE "LEVEL 1", 0dh, 0ah, 0
levelmessage2  BYTE "LEVEL 2", 0dh, 0ah, 0
levelmessage3  BYTE "LEVEL 3", 0dh, 0ah, 0
levelmessage4  BYTE "LEVEL 4", 0dh, 0ah, 0
levelmessage5  BYTE "LEVEL 5", 0dh, 0ah, 0


 startTime DWORD ?
 divisor DWORD ?
 timeTaken DWORD ?
 difference DWORD ?
 scoreStart DWORD ?
 prizeScore DWORD 0
.code 
main PROC
Before:
    call Clrscr
    call DrawTitle
    mov eax,1500
    call Delay
    call ReadKey
    cmp ah, 1Ch
    jne Before
Rule:
    call Clrscr  
    mov edx, OFFSET RuleMessage
    call WriteString
    mov eax,1500
    call Delay
    call ReadKey
    cmp ah, 1Ch
    jne Rule
Menu:
    call Clrscr  
    mov edx, OFFSET MenuMessage
    call WriteString
    call ReadInt
    mov level, eax
    .IF level==1
    	cld 
    	mov ecx, 81
    	mov esi, OFFSET Maze1
    	mov edi, OFFSET Maze
    	rep movsd
        mov playerPosition, 80
    	mov eax, 1000
    	call Delay
    .ELSEIF level==2
    	cld 
    	mov ecx, 81
    	mov esi, OFFSET Maze2
    	mov edi, OFFSET Maze
    	rep movsd
        mov playerPosition, 168
    	mov eax, 1000
    	call Delay
    	
    .ELSEIF level==3
        cld 
    	mov ecx, 81
    	mov esi, OFFSET Maze3
    	mov edi, OFFSET Maze
    	rep movsd
        mov playerPosition, 196
    	mov eax, 1000
    	call Delay
    .ELSEIF level==4
        cld 
    	mov ecx, 81
    	mov esi, OFFSET Maze4
    	mov edi, OFFSET Maze
    	rep movsd
        mov playerPosition, 148
    	mov eax, 1000
    	call Delay
     .ELSEIF level==5
        cld 
    	mov ecx, 81
    	mov esi, OFFSET Maze5
    	mov edi, OFFSET Maze
    	rep movsd
        mov playerPosition, 88
    	mov eax, 1000
    	call Delay	
    .ELSEIF level==6
        exit
    .ENDIF
    call Clrscr
    
Start:
    mov edx, 0      ;Register to end game
    ;mov ebx, player
    ;mov playerPosition, ebx
    inc level
    INVOKE GetTickCount
    mov startTime, eax
    call draw
GameLoop:
    cmp edx, 99     ;End game value equals 99
    je EndGame
    call TimerScore
    mov eax,50
    call Delay
    call ReadKey
    jz GameLoop
    cmp ah, 72      ;Up arrow key
    je Up
    cmp ah, 80      ;Down arrow key
    je Down
    cmp ah, 75      ;Left arrow key
    je Left
    cmp ah, 77      ;Right arrow key
    je Right
    cmp ah, 01
    je Menu
Up:
    call UpMove
    call Judge
Down:
    call DownMove
    mov ebx, 0
    mov ecx, 0
    call Judge
Left:
    call LeftMove
    call Judge
Right:
    call RightMove
    call Judge

Judge:
    .IF level==2
      mov ecx, LENGTHOF endPosition
      mov edi, OFFSET endPosition
    .ENDIF
    .IF level==3
      mov ecx, LENGTHOF endPosition1
      mov edi, OFFSET endPosition1
    .ENDIF
    .IF level==4
      mov ecx, LENGTHOF endPosition2
      mov edi, OFFSET endPosition2
    .ENDIF
    .IF level==5
      mov ecx, LENGTHOF endPosition3
      mov edi, OFFSET endPosition3
    .ENDIF
    .IF level==6
      mov ecx, LENGTHOF endPosition4
      mov edi, OFFSET endPosition4
    .ENDIF
L1:
    mov esi, OFFSET Maze
    add esi, [edi]
    mov eax, [esi]
    add edi, 4
    cmp eax, 64
    jne Next
    Loop L1
    jmp EndGame

Next:
    call draw
    jmp GameLoop
EndGame:
    mov dl,0
    mov dh,20
    call gotoxy
    call TimerCount
    call Crlf
    call Draw
    call Clrscr
    mov edx, OFFSET messageWin
    call WriteString
    mov edx, OFFSET messageTime 
    call WriteString 
    mov eax,timeTaken 
    call WriteDec
    mov eax, 1000
    call Delay
    call Clrscr
Reset:
    .IF level==2
    	cld 
    	mov ecx, 81
    	mov esi, OFFSET Maze2
    	mov edi, OFFSET Maze
    	rep movsd
        mov playerPosition, 168
    	mov eax, 1000
    	call Delay
    	jmp Start
    .ELSEIF level==3
        cld 
    	mov ecx, 81
    	mov esi, OFFSET Maze3
    	mov edi, OFFSET Maze
    	rep movsd
        mov playerPosition, 196
    	mov eax, 1000
    	call Delay
    	jmp Start
    .ELSEIF level==4
        cld 
    	mov ecx, 81
    	mov esi, OFFSET Maze4
    	mov edi, OFFSET Maze
    	rep movsd
        mov playerPosition, 148
    	mov eax, 1000
    	call Delay
    	jmp Start
    .ELSEIF level==5
        cld 
    	mov ecx, 81
    	mov esi, OFFSET Maze5
    	mov edi, OFFSET Maze
    	rep movsd
        mov playerPosition, 88
    	mov eax, 1000
    	call Delay
    	jmp Start
    .ELSEIF level==6
        jmp EndAll
    .ENDIF

EndAll:
    call Crlf
    call WaitMsg
    exit   
main ENDP

TimerScore PROC
    mov dl,0
    mov dh,20
    call gotoxy

    call TimerCount
    mov scoreStart, 99
    mov score, eax
    mov ebx, ScoreStart
    mov ecx, timeTaken    ;get incrementing time
    sub ebx, ecx     
    mov edx, prizeScore
    add edx, score
    mov score, ebx
    add ebx, prizeScore
    mov score, ebx
    ;call Draw

    ;call Crlf
    ;mov edx,OFFSET MessageScore
    ;call WriteString        ;Call Write String procdure
    ;mov eax, score
    ;call WriteInt
    ;call Crlf
    ret
TimerScore ENDP

UpMove PROC
    mov esi, OFFSET Maze
    add esi, playerPosition
    sub esi, UPDOWN         ;Move up 
    mov eax, [esi]
    cmp eax, 00         ;Open Spot
    je ValidUp
    cmp eax, 35         ;Wall
    je Wall
    cmp eax, 64
    je Wall
    cmp eax, 80         ;Prize
    je PrizeJump
    cmp eax, 42
    je Wall
    cmp eax, 79
    je BoxUp		

BoxUp:
    mov esi, OFFSET Maze
    add esi, playerPosition
    sub esi, UPDOWN         ;Move up 
    sub esi, UPDOWN
    mov eax, [esi]
    cmp eax, 35         ;Wall
    je Wall
    cmp eax, 79
    je Wall
    cmp eax, 42         ;Exit 
    je Success
    mov eax, 79
    mov [esi], eax
    add esi, UPDOWN
    mov eax, 00
    mov [esi], eax 
ValidUp:
    mov eax, playerPosition       ;Move the indirect value of ebx postion 1 into eax
    mov eax, 65         ;move the player charater into eax
    mov [esi], eax         ;move the character into the 2D array
    add esi, UPDOWN         ;add the constant number 80 to the 2D array
    mov eax, 00         ;Move the charater into eax
    mov [esi], eax         ;move the character into the 2D array
    mov eax, playerPosition       ;Move the player position into eax
    sub eax, UPDOWN         ;subtract 80 from the player position
    mov playerPosition, eax       ;Save the new player position
    jmp MoveDone
PrizeJump:
    mov eax, playerPosition       ;Move the indirect value of ebx postion 1 into eax
    mov eax, 65         ;Move the player charater into eax
    mov [esi], eax         ;Move the character into the 2D array
    add esi, UPDOWN         ;Add the constant number 80 to the 2D array
    mov eax, 00         ;Move the charater into eax
    mov [esi], eax         ;Move the character into the 2D array
    mov eax, playerPosition       ;Move the player position into eax
    sub eax, UPDOWN         ;Subtract 80 from the player position
    mov playerPosition, eax       ;Save the new player position
    				;mov ebx, prizeScore
    add prizeScore, 25        ;Add 25 to the score
    jmp MoveDone         ;Move to done

Success:
    mov eax, 64
    mov [esi], eax
    add esi, UPDOWN
    mov eax, 00
    mov [esi], eax
    jmp ValidUp   
Wall:
    jmp MoveDone
ExitGame:
    mov edx, 99
    ;exit game
MoveDone:
    ret
UpMove ENDP

DownMove PROC
    mov esi, OFFSET Maze
    add esi, playerPosition
    add esi, UPDOWN         ;Move up 
    mov eax, [esi]
    cmp eax, 00         ;Open Spot
    je ValidDown
    cmp eax, 35         ;Wall
    je Wall
    cmp eax, 64
    je Wall
    cmp eax, 80         ;Prize
    je PrizeJump
    cmp eax, 42
    je Wall
    cmp eax, 79
    je BoxDown
    
BoxDown:
    mov esi, OFFSET Maze
    add esi, playerPosition
    add esi, UPDOWN         ;Move up 
    add esi, UPDOWN
    mov eax, [esi]
    cmp eax, 35         ;Wall
    je Wall
    cmp eax, 79
    je Wall
    cmp eax, 42         ;Exit 
    je Success
    mov eax, 79
    mov [esi], eax
    sub esi, UPDOWN
    mov eax, 00
    mov [esi], eax
 
ValidDown:
    mov eax, playerPosition       ;Move the indirect value of ebx postion 1 into eax
    mov eax, 65
    mov [esi], eax
    sub esi, UPDOWN         
    mov eax, 00
    mov [esi], eax
    mov eax, playerPosition
    add eax, UPDOWN
    mov PlayerPosition, eax
    jmp MoveDone
PrizeJump:
    mov eax, playerPosition       ;Move the indirect value of ebx postion 1 into eax
    mov eax, 65         ;Move the player charater into eax
    mov [esi], eax         ;Move the character into the 2D array
    sub esi, UPDOWN         ;Add the constant number 80 to the 2D array
    mov eax, 00         ;Move the charater into eax
    mov [esi], eax         ;Move the character into the 2D array
    mov eax, playerPosition       ;Move the player position into eax
    add eax, UPDOWN         ;Subtract 80 from the player position
    mov playerPosition, eax       ;Save the new player position
    mov ebx, prizeScore
    add prizeScore, 25         ;Add 25 to the score
    jmp MoveDone         ;Move to done
Success:
    mov eax, 64
    mov [esi], eax
    sub esi, UPDOWN
    mov eax, 00
    mov [esi], eax
    jmp ValidDown
Wall:
    jmp MoveDone
ExitGame:
    mov edx, 99
MoveDone:
    ret
DownMove ENDP

LeftMove PROC
    mov esi, OFFSET Maze
    add esi, playerPosition
    sub esi, LEFTRIGHT        ;Move Left
    mov eax, [esi]
    cmp eax, 00         ;Open Spot
    je ValidLeft
    cmp eax, 35         ;Wall
    je Wall
    cmp eax, 64
    je Wall
    cmp eax, 80         ;Prize
    je PrizeJump
    cmp eax, 79
    je BoxLeft
    cmp eax, 42
    je Wall
    cmp eax, 88         ;Exit
    je ExitGame

BoxLeft:
    mov esi, OFFSET Maze
    add esi, playerPosition
    sub esi, LEFTRIGHT        ;Move up 
    sub esi, LEFTRIGHT
    mov eax, [esi]
    cmp eax, 35         ;Wall
    je Wall
    cmp eax, 79
    je Wall
    cmp eax, 42         ;Exit 
    je Success
    mov eax, 79
    mov [esi], eax
    add esi, LEFTRIGHT
    mov eax, 00
    mov [esi], eax
 
ValidLeft:
    mov eax, playerPosition       ;Move the indirect value of ebx postion 1 into eax
    mov eax, 65
    mov [esi], eax
    add esi, LEFTRIGHT         
    mov eax, 00
    mov [esi], eax
    mov eax, playerPosition
    sub eax, LEFTRIGHT
    mov PlayerPosition, eax
    jmp MoveDone
PrizeJump:
    mov eax, playerPosition       ;Move the indirect value of ebx postion 1 into eax
    mov eax, 65         ;Move the player charater into eax
    mov [esi], eax         ;Move the character into the 2D array
    add esi, LEFTRIGHT        ;Add the constant number 80 to the 2D array
    mov eax, 00         ;Move the charater into eax
    mov [esi], eax         ;Move the character into the 2D array
    mov eax, playerPosition       ;Move the player position into eax
    sub eax, LEFTRIGHT        ;Subtract 80 from the player position
    mov playerPosition, eax       ;Save the new player position
    mov ebx, prizeScore
    add prizeScore, 25         ;Add 25 to the score
    jmp MoveDone         ;Move to done
Success:
    mov eax, 64
    mov [esi], eax
    add esi, LEFTRIGHT
    mov eax, 00
    mov [esi], eax
    jmp ValidLeft
Wall:
    jmp MoveDone
ExitGame:
    mov edx, 99
MoveDone:
    ret
LeftMove ENDP

RightMove PROC
    mov esi, OFFSET Maze
    add esi, playerPosition
    add esi, LEFTRIGHT        ;Move Left
    mov eax, [esi]
    cmp eax, 00         ;Open Spot
    je ValidRight
    cmp eax, 35         ;Wall
    je Wall
    cmp eax, 64
    je Wall
    cmp eax, 80         ;Prize
    je PrizeJump
    cmp eax,79
    je BoxRight
    cmp eax, 42
    je Wall
    cmp eax, 88         ;Exit
    je ExitGame

BoxRight:
    mov esi, OFFSET Maze
    add esi, playerPosition
    add esi, LEFTRIGHT         ;Move up 
    add esi, LEFTRIGHT
    mov eax, [esi]
    cmp eax, 35         ;Wall
    je Wall
    cmp eax, 79
    je Wall
    cmp eax, 42         ;Exit 
    je Success
    mov eax, 79
    mov [esi], eax
    sub esi, LEFTRIGHT
    mov eax, 00
    mov [esi], eax
 
ValidRight:
    mov eax, playerPosition       ;Move the indirect value of ebx postion 1 into eax
    mov eax, 65
    mov [esi], eax
    sub esi, LEFTRIGHT         
    mov eax, 00
    mov [esi], eax
    mov eax, playerPosition
    add eax, LEFTRIGHT
    mov playerPosition, eax
    jmp MoveDone
PrizeJump:
    mov eax, playerPosition       ;Move the indirect value of ebx postion 1 into eax
    mov eax, 65         ;Move the player charater into eax
    mov [esi], eax         ;Move the character into the 2D array
    sub esi, LEFTRIGHT        ;Add the constant number 80 to the 2D array
    mov eax, 00         ;Move the charater into eax
    mov [esi], eax         ;Move the character into the 2D array
    mov eax, playerPosition       ;Move the player position into eax
    add eax, LEFTRIGHT        ;Subtract 80 from the player position
    mov playerPosition, eax       ;Save the new player position
    mov ebx, prizeScore         ;Move the score to the register
    add prizeScore, 25         ;Add 25 to the score
    jmp MoveDone         ;Move to done
Success:
    mov eax, 64
    mov [esi], eax
    sub esi, LEFTRIGHT
    mov eax, 00
    mov [esi], eax
    jmp ValidRight
Wall:
    jmp MoveDone
ExitGame:
    mov edx, 99
MoveDone:
    ret
RightMove ENDP
;=========================================================================

;=========================================================================
Draw PROC
    mov dh, 0          ;Set maze position X
    mov dl, 0          ;Set maze position Y
    call Gotoxy         ;Call Go to X Y

    .IF level==2
      mov edx, OFFSET levelmessage1
    .ENDIF
    .IF level==3
      mov edx, OFFSET levelmessage2
    .ENDIF
    .IF level==4
      mov edx, OFFSET levelmessage3
    .ENDIF
    .IF level==5
      mov edx, OFFSET levelmessage4
    .ENDIF
   .IF level==6
      mov edx, OFFSET levelmessage5
    .ENDIF
    call WriteString
    call crlf

    mov ebx, OFFSET Maze        ;Move the maze 2D array into ebx
    mov ecx, 0          ;intialize the counter
PrintLoop:
    mov eax, [ebx]         ;Move the indirect value of ebx postion 1 into eax
    add ebx, 4          ;Move to the next offset position
    inc ecx          ;Increment the counter
    call WriteChar         ;Write Character
    cmp ecx, 9         ;Compare for end of row for each 20 positions
    je NextLine
    cmp ecx, 18
    je NextLine
    cmp ecx, 27
    je NextLine
    cmp ecx, 36
    je NextLine
    cmp ecx, 45
    je NextLine
    cmp ecx, 54
    je NextLine
    cmp ecx, 63
    je NextLine
    cmp ecx, 72
    je NextLine
    cmp ecx, 81
    jne PrintLoop
    jmp Print
NextLine:
    call Crlf
    jmp PrintLoop
Print:
    call Crlf
    ;mov edx,OFFSET MessageDirections
    ;call WriteString        ;Call Write String procdure

    ret
Draw ENDP
;=========================================================================

;=========================================================================
TimerCount PROC

INVOKE GetTickCount
sub eax, startTime
mov divisor, 1000      ;milisecs
div divisor
mov edx,OFFSET messageTime
call WriteString
mov timeTaken, eax
call WriteDec
        ;Call Write String procdure
    ret
TimerCount ENDP
;=========================================================================

;=========================================================================
DrawTitle PROC
    mov dh, 5          ;Set maze position X
    mov dl, 25          ;Set maze position Y
    call Gotoxy         ;Call Go to X Y
    mov ebx, OFFSET Bigtitle
    mov ecx, 0          ;intialize the counter
PrintLoop:
    mov eax, [ebx]         ;Move the indirect value of ebx postion 1 into eax
    add ebx, 4          ;Move to the next offset position
    inc ecx          ;Increment the counter
    call WriteChar         ;Write Character
    cmp ecx, 47         ;Compare for end of row for each 20 positions
    je NextLine
    cmp ecx, 94
    je NextLine
    cmp ecx, 141
    je NextLine
    cmp ecx, 188
    je NextLine
    cmp ecx, 235
    je NextLine
    cmp ecx, 282
    je NextLine
    cmp ecx, 329
    je NextLine
    cmp ecx, 376
    je NextLine
    cmp ecx, 423
    je NextLine
    cmp ecx, 470
    je NextLine
    cmp ecx, 517

    jne PrintLoop
    jmp Print
NextLine:
    ;call Crlf
    add dh, 1
    mov dl,25
    call Gotoxy
    jmp PrintLoop
Print:
    call Crlf
    ;mov edx,OFFSET MessageDirections
    ;call WriteString        ;Call Write String procdure

    ret
DrawTitle ENDP
END main