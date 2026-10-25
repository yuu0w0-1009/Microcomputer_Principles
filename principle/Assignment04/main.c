#include <8051.h>

// use volatile to force compiler to read from memory every time, and to avoid optimizing the variables
volatile unsigned char i;
volatile unsigned char count;

void main(void) {
    count = 0;

    for (i = 0; i < 5; i++) {
        P0 = i;
    }

    while (count < 3) {
        count++;
        P1 = count;
    }

    if (count == 3) {
        P2 = 0xAA;
    } else {
        P2 = 0x55;
    }

    while (1) {
    }
}
