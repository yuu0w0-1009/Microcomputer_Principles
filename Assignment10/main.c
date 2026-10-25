#include <8051.h>

#define LED       P2_0

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++) {
        for (j = 0; j < 123; j++) {
            // deplete cycle count to delay 1ms
        }
    }
}

void main(void) {
    while (1) {
        LED = 0;
        delay_ms(500);   
        LED = 1;
        delay_ms(500);
    }
}
