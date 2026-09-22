; 定義 LCD 控制腳位
RS EQU P1.3
EN EQU P1.2

ORG 0000H
JMP MAIN

MAIN:
    ;初始化 LCD
    CALL LCD_INIT

    ;顯示字元 'L'
    MOV A, #'L'
    CALL LCD_DATA

    ;顯示字元 'C'
    MOV A, #'C'
    CALL LCD_DATA

    ;顯示字元 'D'
    MOV A, #'D'
    CALL LCD_DATA

STOP:
    SJMP STOP       ; 程式停留在此

; ==========================================
; LCD 初始化副程式 (4-bit mode)
; ==========================================
LCD_INIT:
    ; 必須先送出 0x20 將 LCD 切換到 4 位元模式
    MOV A, #20H
    CALL LCD_CMD_NIBBLE 
    CALL DELAY

    ; 設定為 4-bit 模式, 2 行顯示 (N=1), 5x8 字型 (F=0) -> 指令 28H
    MOV A, #28H
    CALL LCD_CMD

    ; 顯示開啟, 游標開啟, 游標閃爍關閉 -> 指令 0EH
    MOV A, #0EH
    CALL LCD_CMD

    ; 清除顯示 -> 指令 01H
    MOV A, #01H
    CALL LCD_CMD

    ; 設定進入模式 (自動遞增) -> 指令 06H
    MOV A, #06H
    CALL LCD_CMD
    RET

; ==========================================
; 送出單一 Nibble (用於初次設定 4-bit 模式)
; ==========================================
LCD_CMD_NIBBLE:
    ANL A, #0F0H    ; 只保留高四位元，同時將 RS (Bit 3) 設為 0
    MOV P1, A       ; 將資料輸出至 P1
    CALL PULSE_EN
    RET

; ==========================================
; 送出指令到 LCD (RS=0)
; ==========================================
LCD_CMD:
    PUSH ACC
    ; 送出高四位元
    ANL A, #0F0H    ; 保留高四位元，清除低四位元 (RS=0)
    MOV P1, A
    CALL PULSE_EN
    
    ; 送出低四位元
    POP ACC
    SWAP A          ; 上下四位元互換
    ANL A, #0F0H    ; 保留原本的低四位元，清除低四位元 (RS=0)
    MOV P1, A
    CALL PULSE_EN
    
    CALL DELAY      ; 等待 LCD 處理指令
    RET

; ==========================================
; 送出資料到 LCD (RS=1)
; ==========================================
LCD_DATA:
    PUSH ACC
    ; 送出高四位元
    ANL A, #0F0H    ; 保留高四位元
    ORL A, #00001000B ; 將 RS (P1.3) 設為 1 (表示傳送資料)
    MOV P1, A
    CALL PULSE_EN
    
    ; 送出低四位元
    POP ACC
    SWAP A          ; 上下四位元互換
    ANL A, #0F0H    
    ORL A, #00001000B ; 將 RS (P1.3) 設為 1
    MOV P1, A
    CALL PULSE_EN
    
    CALL DELAY      ; 等待 LCD 處理
    RET

; ==========================================
; 產生 Enable 脈衝信號 (High -> Low)
; ==========================================
PULSE_EN:
    SETB EN         ; EN = 1
    NOP
    NOP
    CLR EN          ; EN = 0
    RET

; ==========================================
; 延遲副程式
; ==========================================
DELAY:
    MOV R2, #50
D1: MOV R3, #255
D2: DJNZ R3, D2
    DJNZ R2, D1
    RET

END