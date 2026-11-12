#include <8051.h>

__data  unsigned char var_d = 0x11;
__idata unsigned char var_i = 0x22;
__xdata unsigned char var_x = 0x33;
__code  unsigned char var_c = 0x44;

void main(void) {
    unsigned char temp;

    temp = var_c;
    var_d = temp + 1;
    var_i = var_d + 1;
    var_x = var_i + 1;
}