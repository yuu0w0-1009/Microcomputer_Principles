#include <8051.h>
#include "uart.c"

void main(void)
{
    char c;
    unsigned int val;

    uart_initialize();

    P2 = 0xFF;

    while(1){
        c = uart_get_char_echo();

        if(c >= '0' && c <= '9'){
            val = c - '0';
            P2 = ~val;
        }
        else if(c >= 'A' && c <= 'F'){
            val = c - 'A' + 10;
            P2 = ~val;
        }
        else if(c >= 'a' && c <= 'f'){
            val = c - 'a' + 10;
            P2 = ~val;
        }
        else
            P2 = 0xFF;
    }
}
