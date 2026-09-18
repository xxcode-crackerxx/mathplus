#include <stdio.h>
#include <assert.h>
#include "../include/mathplus.h"

int main(void)
{
    // Test standard inputs
    printf("5P2 = %d (Expected: 20)\n", nPr(5, 2));

    // Test guard clauses / edge cases
    assert(nPr(5, 2) == 20);
    assert(nPr(3, 5) == 0);  // r > n
    assert(nPr(-1, 2) == 0); // negative input

    printf("All local tests passed successfully!\n");
    return 0;
}
