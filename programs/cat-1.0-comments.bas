' CAT ON THE RUN / Version 1.0 // 1024 bytes
' Version with comments
' Krzysztof Krystian Jankowski / https://ichigojam.p1x.in

                                                                'INTRO
10 VIDEO3:CLS:SRND 7:WAIT20:PLAY"E4C8CD4D+8D8"                  'Low res, white on black, set random seed, play tune
20 LC 5,3:?"~P1X~";:WAIT100:DRAW 2,12,29,12:DRAW 2,17,29,17     'Logo on center, wait and draw lines
30 LC 1,7:?"CAT ON THE RUN  V1.0";:WAIT120:VIDEO4               'Draw game name and version, wait
                                                                'Reverese colors to black on white

                                                                'VARIABLES, SETTINGS
100 M=15:N=11:U=7:V=7:C=0:S=0:E=3000                            'M,N - Max X, Max Y
                                                                'U,V - Player position (X,Y)
                                                                'C - Game counter
                                                                'S - Score counter
                                                                'E - End game time

                                                                'LEVEL GENERATION
110 FOR Y=0TO N:LC 0,0                                          'Loop Y, reset cursor position each time
120 FOR X=0TO M:?CHR$(RND(4));:NEXT                             'Loop X, put random character, no enemies (chars 0-3) 
130 IF Y<N-1 SCROLL2:NEXT                                       'If not last line then scroll screen down
140 LC 4,9:?"PUSH ←,→";:CLT                                     'Draw tutorial info and clear clock timer

                                                                'MAIN GAME LOOP
200 LC U,V:?"・";                                               'Clear player location by drawing a dot
210 IF BTN(LEFT)GOTO400                                         'Go to move left subrutine
220 IF BTN(RIGHT)GOTO500                                        'Go to move right subritine
230 IF BTN(UP) OR C>8GOTO300                                    'Go to move up subrutine, also if game counter goes pass 8 ticks
240 IF TICK()>E GOTO700                                         'Go to game over subrutine when tick timer exedes end game time 
250 LC U,V:?"🐱";:C=C+1                                         'Draw player character, increase game counter, subrutines returns here
260 LC 0,11:?"💰";:?S;:?" 🌀";:?E-TICK();:?" ";                'Draw status bar at bottom, last empty char helps with clearing last digits
270 GOTO200                                                     'Repeat loop

                                                                'MOVE UP SUBRUTINE
300 IF SCR(U,V-1)=5 GOTO700                                     'Check element over player position, if enemy go to game over
310 IF SCR(U,V-1)=1 BEEP200,4:GOTO250:ELSE:                     'If wall beep and return
320 SCROLL2:LC 0,0:FOR X=0TO M-1:?CHR$(RND(6));:NEXT            'Scroll screen down, generate new random line with enemies (chars 0-5)
330 S=S+1:C=0:BEEP40,2:GOTO250                                  'Increase score, reset game counter, beep and return

                                                                'MOVE LEFT SUBRUTINE
400 IF SCR(U-1,V)=5 GOTO700                                     'Check element on the left of player pos, game over
410 IF SCR(U-1,V)=1 BEEP200,4:GOTO250:ELSE:                     'If wall beep and return
420 SCROLL1:FOR Y=0TO N-1:LC 0,Y:?CHR$(RND(6));:NEXT            'Scroll right, fill line of chars
430 GOTO250                                                     'Return

                                                                'MOVE RIGHT SUBRUTINE
500 IF SCR(U+1,V)=5 GOTO700                                     'Check element on the right of player pos, game over
510 IF SCR(U+1,V)=1 BEEP200,4:GOTO250:ELSE:                     'If wall beep and return
520 SCROLL3:FOR Y=0TO N-1:LC M,Y:?CHR$(RND(6));:NEXT            'Scroll left, fill line of chars
530 GOTO250                                                     'Return

                                                                'GAMEOVER SUBRUTINE
700 VIDEO3:CLS:PLAY"CFEDCCC"                                    'Reverse colors, clear screen and play tune
710 LC 3,V:?"GAME OVER";                                        'Draw end text
720 LC 3,V+2:?"SCORE:";:?S                                      'Draw score
730 WAIT300:GOTO10                                              'Wait and restart game