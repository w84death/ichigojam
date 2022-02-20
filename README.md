# ![IchigoJam](ichigojam_header.jpg)

All the things for IchigoJam

## Resources

- About the computer: https://ichigojam.net/
- Web emulation: https://fukuno.jig.jp/app/IchigoJam/
- BASIC Reference: https://ichigojam.net/IchigoJam-en.html

## This repo content

### Basic Code

#### Cat On The Run 1.0 (1024 bytes)
![Cat On The Run Code](programs/cat-1.0.png)
[Get the code](programs/cat-1.0.bas) ([Commented](programs/cat-1.0-comments.bas))
[Play online](https://fukuno.jig.jp/app/IchigoJam/#10%20VIDEO3%3ACLS%3ASRND%207%3AWAIT20%3APLAY"E4C8CD4D%2B8D8"%0A20%20LC%205%2C3%3A%3F"~P1X~"%3B%3AWAIT100%3ADRAW%202%2C12%2C29%2C12%3ADRAW%202%2C17%2C29%2C17%0A30%20LC%201%2C7%3A%3F"CAT%20ON%20THE%20RUN%20%20V1.0"%3B%3AWAIT120%3AVIDEO4%0A100%20M%3D15%3AN%3D11%3AU%3D7%3AV%3D7%3AC%3D0%3AS%3D0%3AE%3D3000%0A110%20FOR%20Y%3D0TO%20N%3ALC%200%2C0%0A120%20FOR%20X%3D0TO%20M%3A%3FCHR%24(RND(4))%3B%3ANEXT%0A130%20IF%20Y<N-1%20SCROLL2%3ANEXT%0A140%20LC%204%2C9%3A%3F"PUSH%20←%2C→"%3B%3ACLT%0A200%20LC%20U%2CV%3A%3F"・"%3B%0A210%20IF%20BTN(LEFT)GOTO400%0A220%20IF%20BTN(RIGHT)GOTO500%0A230%20IF%20BTN(UP)%20OR%20C>8GOTO300%0A240%20IF%20TICK()>E%20GOTO700%0A250%20LC%20U%2CV%3A%3F"🐱"%3B%3AC%3DC%2B1%0A260%20LC%200%2C11%3A%3F"💰"%3B%3A%3FS%3B%3A%3F"%20🌀"%3B%3A%3FE-TICK()%3B%3A%3F"%20"%3B%0A270%20GOTO200%0A300%20IF%20SCR(U%2CV-1)%3D5%20GOTO700%0A310%20IF%20SCR(U%2CV-1)%3D1%20BEEP200%2C4%3AGOTO250%3AELSE%3A%0A320%20SCROLL2%3ALC%200%2C0%3AFOR%20X%3D0TO%20M-1%3A%3FCHR%24(RND(6))%3B%3ANEXT%0A330%20S%3DS%2B1%3AC%3D0%3ABEEP40%2C2%3AGOTO250%0A400%20IF%20SCR(U-1%2CV)%3D5%20GOTO700%0A410%20IF%20SCR(U-1%2CV)%3D1%20BEEP200%2C4%3AGOTO250%3AELSE%3A%0A420%20SCROLL1%3AFOR%20Y%3D0TO%20N-1%3ALC%200%2CY%3A%3FCHR%24(RND(6))%3B%3ANEXT%0A430%20GOTO250%0A500%20IF%20SCR(U%2B1%2CV)%3D5%20GOTO700%0A510%20IF%20SCR(U%2B1%2CV)%3D1%20BEEP200%2C4%3AGOTO250%3AELSE%3A%0A520%20SCROLL3%3AFOR%20Y%3D0TO%20N-1%3ALC%20M%2CY%3A%3FCHR%24(RND(6))%3B%3ANEXT%0A530%20GOTO250%0A700%20VIDEO3%3ACLS%3APLAY"CFEDCCC"%0A710%20LC%203%2CV%3A%3F"GAME%20OVER"%3B%0A720%20LC%203%2CV%2B2%3A%3F"SCORE%3A"%3B%3A%3FS%0A730%20WAIT300%3AGOTO10%0ARUN%0A)

#### SpaceSnake @2.3 (882 bytes)
![SpaceSnake Code](programs/space-snake-2.3.png)
[Get the code](programs/space-snake-2.3.bas)
[Play online](https://fukuno.jig.jp/app/IchigoJam/#10%20%20'SpaceSnake%20%402.3%20%2F%20http%3A%2F%2Fichigojam.P1X.in%0A20%20%20VIDEO2%3AWAIT%2030%3ACLS%3ACLK%0A40%20%20X%3D15%3AY%3D19%3AD%3D0%3AE%3D5%3AZ%3D0%0A50%20%20PLAY%22E4C8CD4D%2B8D8%22%0A51%20%20LC%208%2C11%3A%3F%22%E2%94%8F%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81P1X%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%93%22%0A52%20%20LC%208%2C12%3A%3F%22%E2%94%83SpaceSnake%20%402.3%E2%94%83%22%0A53%20%20LC%208%2C13%3A%3F%22%E2%94%97%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%9B%22%0A54%20%20WAIT%20120%3ACLS%0A70%20%20CLT%0A80%20%20LC%20RND(32)%2C0%3AR%3DRND(5)%0A90%20%20IF%20R%3C2%20%3F%22.%22%3B%0A100%20IF%20R%3E2%20%3F%22%F0%9F%91%BE%22%3B%0A110%20IF%20RND(10)%3C1%20LC%20RND(32)%2C0%3A%3F%22%F0%9F%92%B0%22%3B%0A120%20D%3D0%0A130%20IF%20BTN(LEFT)%20D%3D-1%0A140%20IF%20BTN(RIGHT)%20D%3D1%0A150%20IF%20BTN(0)%20LRUN100%0A160%20X%3DX%2BD%0A170%20IF%20X%3C0%20X%3D31%0A180%20IF%20X%3E31%20X%3D0%0A190%20LC%20X%2CY%3A%3F%22%E2%96%88%22%3B%3AH%3D0%0A210%20IF%20SCR(X%2CY-1)%3D%232E%20H%3D1%0A220%20IF%20SCR(X%2CY-1)%3D%23ED%20H%3D3%0A230%20IF%20SCR(X%2CY-1)%3D%23F5%20PLAY%22E8C4G4%22%3AZ%3DZ%2B1%0A240%20IF%20H%3E0%20E%3DE-H%3ABEEP%20400%0A242%20IF%20E%3C0%20GOTO%20410%0A250%20SCROLL%202%3ALC%200%2C23%3A%3F%22%E2%94%8F%22%3B%0A300%20FOR%20I%3D0TO4%0A310%20%20%20%20%20IF%20I%3CE%20%3F%22%E2%99%A5%22%3B%20ELSE%20%3F%22.%22%3B%0A320%20NEXT%0A330%20%3F%22%E2%94%93%E2%94%8F%F0%9F%92%B0x%22%3B%3A%3FZ%3B%3A%3F%22%E2%94%93%22%3B%3AGOTO%2070%0A410%20PLAY%20%22CFEDCFEDPFEF%3CC%3EC%22%0A420%20LC%209%2C12%3A%3F%22%E2%94%8F%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%93%22%0A430%20LC%209%2C13%3A%3F%22%E2%94%83%20GAME%20OVER%20%E2%94%83%22%0A440%20LC%209%2C14%3A%3F%22%E2%94%97%E2%94%81SCORE%20%E2%94%81%E2%94%81%E2%94%81%E2%94%81%E2%94%9B%22%0A450%20LC%2017%2C14%3A%3FZ%3B%0A460%20WAIT240%3AGOTO%2010%0A%3RUN%0A)

### 3D Case (STL)
![3D Case Render](3d_printed_case/ichigojam_case2.jpg)

