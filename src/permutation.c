#include "mathplus.h"
int nPr (float n, float r )
{
    float nPr = factorial(n)/factorial(n-r);
    return nPr;
}