10  'SpaceSnake @2.3 / http://ichigojam.P1X.in
20  VIDEO2:WAIT 30:CLS:CLK
40  X=15:Y=19:D=0:E=5:Z=0
50  PLAY"E4C8CD4D+8D8"
51  LC 8,11:?"┏━━━━━━P1X━━━━━━┓"
52  LC 8,12:?"┃SpaceSnake @2.3┃"
53  LC 8,13:?"┗━━━━━━━━━━━━━━━┛"
54  WAIT 120:CLS
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
190 LC X,Y:?"█";:H=0
210 IF SCR(X,Y-1)=#2E H=1
220 IF SCR(X,Y-1)=#ED H=3
230 IF SCR(X,Y-1)=#F5 PLAY"E8C4G4":Z=Z+1
240 IF H>0 E=E-H:BEEP 400
242 IF E<0 GOTO 410
250 SCROLL 2:LC 0,23:?"┏";
300 FOR I=0TO4
310     IF I<E ?"♥"; ELSE ?".";
320 NEXT
330 ?"┓┏💰x";:?Z;:?"┓";:GOTO 70
410 PLAY "CFEDCFEDPFEF<C>C"
420 LC 9,12:?"┏━━━━━━━━━━━┓"
430 LC 9,13:?"┃ GAME OVER ┃"
440 LC 9,14:?"┗━SCORE ━━━━┛"
450 LC 17,14:?Z;
460 WAIT240:GOTO 10