#include <stdio.h>
#include "mathplus.h"
int main(void)
{
    int x = 662;
    int y = 441;
    int gcd = GCD(x, y);
    if (gcd == -1)
    {
        printf("the values has to be unequal positive integers");
    }
    else
    {
        printf("the GCD of %i and %i is %i", x, y, gcd);
    }
}
