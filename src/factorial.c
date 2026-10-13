#include "mathplus.h"
int factorial(int n)
{
    int product = 1;
    for (int i = 2; i < n+1; i++)
    {
        product = product * i;
    }
    return product;
}
