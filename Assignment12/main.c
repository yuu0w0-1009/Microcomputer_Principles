#include <8051.h>
#define DATA_AV P1_4

// seg7 0~F
unsigned char SEG_TABLE[16] = {
    0xC0, 0xF9, 0xA4, 0xB0,
    0x99, 0x92, 0x82, 0xF8,
    0x80, 0x90, 0x88, 0x83,
    0xC6, 0xA1, 0x86, 0x8E
};

// keypad map
unsigned char KEY_MAP[16] = {
    0x01, 0x02, 0x03, 0x0A, // 1, 2, 3, A
    0x04, 0x05, 0x06, 0x0B, // 4, 5, 6, B
    0x07, 0x08, 0x09, 0x0C, // 7, 8, 9, C
    0x0F, 0x00, 0x0E, 0x0D  // F, 0, E, D
};

void main(void) {
    unsigned char raw_code;
    unsigned char disp_num;

    P1 = 0xFF;
    P2 = 0xFF;

    while (1) {
        if (DATA_AV == 1) {
            raw_code = P1 & 0x0F;          // 讀取 P1.0 ~ P1.3 
            disp_num = KEY_MAP[raw_code];  // 查表
            P2 = SEG_TABLE[disp_num];      // 輸出
            
            while (DATA_AV == 1);          // 等待按鍵放開
        }
    }
}