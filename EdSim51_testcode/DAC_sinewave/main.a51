ORG 0000H
JMP MAIN

ORG 000BH           ; Timer 0 中斷向量
JMP T0_ISR

ORG 0030H
MAIN:
    SETB P0.7       ; 初始化 DAC WR (P0.7) 為高電位
    MOV TMOD, #01H  ; 設定 Timer 0 為模式 1 (16位元計時器)
    
    ; 載入初始值 (產生約 278us 延遲)
    MOV TH0, #0FEH  
    MOV TL0, #0EAH
    
    MOV DPTR, #SINE_TABLE
    MOV R0, #0      ; 查表索引初始化
    
    SETB EA         ; 啟用全域中斷
    SETB ET0        ; 啟用 Timer 0 中斷
    SETB TR0        ; 啟動 Timer 0

WAIT:
    SJMP WAIT       ; 進入無窮迴圈，等待計時器中斷

T0_ISR:
    CLR TR0         ; 暫停計時器
    MOV TH0, #0FEH  ; 重新載入計時值 (FEEAH)
    MOV TL0, #0EAH
    SETB TR0        ; 重啟計時器

    MOV A, R0
    MOVC A, @A+DPTR ; 從表格中取出正弦波數值
    MOV P1, A       ; 將資料輸出至 P1 (DAC 資料埠)[cite: 2]
    
    CLR P0.7        ; 將 P0.7 拉低 (觸發 DAC WR)[cite: 2]
    SETB P0.7       ; 將 P0.7 拉高 (完成 DAC 寫入)[cite: 2]

    INC R0          ; 索引加 1
    CJNE R0, #36, ISR_END ; 判斷是否完成一個週期 (36個取樣點)
    MOV R0, #0      ; 若達 36，將索引歸零開始下一個週期

ISR_END:
    RETI

; 36 個取樣點的正弦波查表 (0~255)
SINE_TABLE:
    DB 128, 150, 171, 192, 210, 225, 238, 247, 253, 255
    DB 253, 247, 238, 225, 210, 192, 171, 150, 128, 106
    DB 85, 64, 46, 31, 18, 9, 3, 0, 3, 9
    DB 18, 31, 46, 64, 85, 106
END