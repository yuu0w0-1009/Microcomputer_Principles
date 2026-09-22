ORG 0000H       ; 程式起始位置
        JMP MAIN

        ORG 0003H       ; 外部中斷 0 (INT0) 向量位址
        JMP INT0_ISR

        ORG 0013H       ; 外部中斷 1 (INT1) 向量位址
        JMP INT1_ISR

        ORG 0030H       ; 主程式起始位置
MAIN:
        ; --- 中斷與優先權初始化設定 ---
        SETB IT0        ; 設定 INT0 為負緣觸發
        SETB IT1        ; 設定 INT1 為負緣觸發
        
        SETB PX1        ; 設定 INT1 的優先權高於 INT0
        
        SETB EX0        ; 啟用外部中斷 0
        SETB EX1        ; 啟用外部中斷 1
        SETB EA         ; 啟用總中斷

        ; --- 預設狀態 ---
        MOV P2, #00H    ; 預設燈全亮 (輸出 0 為亮)

WAIT:
        JMP WAIT        ; 進入無窮迴圈，等待中斷觸發

; =================================================================
; 外部中斷 0 服務常式 (INT0_ISR)
; =================================================================
INT0_ISR:
        PUSH PSW        ; 儲存狀態暫存器
        PUSH ACC        ; 儲存累加器
        MOV R2, #4      ; 設定閃爍迴圈次數為 4 次

FLASH_LOOP:
        MOV P2, #0FFH   ; LED 全滅
        CALL DELAY
        MOV P2, #00H    ; LED 全亮
        CALL DELAY
        DJNZ R2, FLASH_LOOP 

        CLR IE0         ; 【修正重點】手動清除 INT0 旗標，消滅按鍵彈跳造成的二次觸發
        POP ACC         
        POP PSW         
        RETI            

; =================================================================
; 外部中斷 1 服務常式 (INT1_ISR)
; =================================================================
INT1_ISR:
        PUSH PSW
        PUSH ACC
        
        MOV P2, #0FFH   ; 觸發後先讓 LED 全滅
        CALL DELAY

        MOV A, #0FFH    ; 累加器初始值 11111111 (全滅狀態)
        MOV R3, #8      ; 共有 8 顆 LED，需移位 8 次

SEQ_LOOP:
        CLR C           ; 清除進位旗標 (進位補 0 點亮)
        RRC A           ; 帶進位向右旋轉移位 (P2.7開始亮)
        MOV P2, A       
        CALL DELAY      
        DJNZ R3, SEQ_LOOP 

        MOV P2, #00H    ; 確保回到預設狀態 (全亮)
        CLR IE1         ; 【修正重點】手動清除 INT1 旗標，消滅二次執行與結尾異常閃爍
        POP ACC
        POP PSW
        RETI

; =================================================================
; 軟體延遲副程式 (DELAY) - 已保護暫存器，支援中斷巢狀呼叫
; =================================================================
DELAY:
        PUSH AR5        
        PUSH AR6
        PUSH AR7
        MOV R5, #4
D1:     MOV R6, #200
D2:     MOV R7, #250
D3:     DJNZ R7, D3     
        DJNZ R6, D2     
        DJNZ R5, D1     
        
        POP AR7         
        POP AR6
        POP AR5
        RET             

        END