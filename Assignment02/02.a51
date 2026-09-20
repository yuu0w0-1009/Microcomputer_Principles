ORG 0000H
        JMP MAIN

        ORG 0030H
MAIN:
        MOV P1, #0FFH       ; 將 P1 設為輸入模式 (填入 1)
        MOV P2, #0FFH       ; 預設將 P2 所有腳位設為高電位 (所有 LED 都不亮)

LOOP:
        MOV A, P1           ; 讀取 P1 埠 (指撥開關狀態)
        CPL A               ; 將 A 暫存器反相 (讓開關 ON 讀取為 1，OFF 讀取為 0)
        ANL A, #07H         ; 遮罩高位元，只保留 P1.0~P1.2 的 3 位元數值 (範圍 0~7)
        
        MOV DPTR, #LED_TAB  ; 將資料指標指向 LED 對應表
        MOVC A, @A+DPTR     ; 從表格中取出對應的 P2 輸出控制碼
        MOV P2, A           ; 將控制碼輸出到 P2，點亮對應的 LED
        
        SJMP LOOP           ; 無窮迴圈，持續偵測

; --- LED 狀態對應表 ---
; 0 代表輸出低電位 (LED亮)，1 代表輸出高電位 (LED暗)
LED_TAB:
        DB 11111111B        ; 數值 0：全暗 (FFH)
        DB 11111110B        ; 數值 1：亮 P2.1 燈 (FDH)
        DB 11111101B        ; 數值 2：亮 P2.2 燈 (FBH)
        DB 11111011B        ; 數值 3：亮 P2.3 燈 (F7H)
        DB 11110111B        ; 數值 4：亮 P2.4 燈 (EFH)
        DB 11101111B        ; 數值 5：亮 P2.5 燈 (DFH)
        DB 11011111B        ; 數值 6：亮 P2.6 燈 (BFH)
        DB 10111111B        ; 數值 7：亮 P2.7 燈 (7FH)

        END