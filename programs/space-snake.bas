10  'SpaceSnake @2.2
13  'ichigojam.P1X.in
20  VIDEO2:WAIT 30
30  CLS:CLK
40  X=15:Y=19:D=0:E=5:Z=0
50  GSB @INT
70  CLT
80  LC RND(32),0:R=RND(5)
90  IF R<2 ?".";
100 IF R>2 ?"👾";
110 IF RND(10)<1 LC RND(32),0:?"💰";
120 D=0
130 IF BTN(LEFT) D=-1
140 IF BTN(RIGHT) D=1
150 IF BTN(0) LRUN100
160 X=X+D
170 IF X<0 X=31
180 IF X>31 X=0
190 LC X,Y:?"█";
200 H=0
210 IF SCR(X,Y-1)=#2E H=1
220 IF SCR(X,Y-1)=#ED H=3
230 IF SCR(X,Y-1)=#F5 GSB @UP
240 IF H>0 GSB @HIT
250 SCROLL 2
260 GSB @HUD
270 GOTO 70
280 @HUD
290 LC 0,23:?"┏";
300 FOR I=0TO4
310     IF I<E ?"♥"; ELSE ?".";
320 NEXT
330 ?"┓┏💰x";:?Z;:?"┓";
340 RTN
350 @HIT
360 E=E-H
370 BEEP 400
380 IF E<0 GOTO @END
390 RTN
400 @END
410 PLAY "CFEDCFEDPFEF<C>C"
420 LC 9,12:?"┏━━━━━━━━━━━┓"
430 LC 9,13:?"┃ GAME OVER ┃"
440 LC 9,14:?"┗━━━━━━━━━━━┛"
450 LC 11,14:?"SCORE ";:?Z;
460 WAIT240:GOTO 10
470 @INT
480 PLAY"E4C8CD4D+8D8"
490 LC 8,11:?"┏━━━━━━P1X━━━━━━┓"
500 LC 8,12:?"┃SpaceSnake @2.2┃"
510 LC 8,13:?"┗━━━━━━━━━━━━━━━┛"
520 WAIT 120:CLS
530 RTN
540 @UP:PLAY"E8C4G4":Z=Z+1
550 RTN
RUN
