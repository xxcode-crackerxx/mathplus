#include "mathplus.h"
int nPr (float n, float r )
{
    if (r > n || n < 0 || r < 0) return 0;
    return factorial(n)/factorial(n-r);
}
