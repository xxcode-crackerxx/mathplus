int GCD(int a, int b)
{
    int big; //for the bigger value
    int sma; //for the smallest value
    if (a == b){ return -1;}
    if ( a > b)
    {
        big = a;
        sma = b;
    }
    else if (b > a)
    {
        big = b;
        sma = a;
    }
    while (big != 0)
    {
        int temp = big;
        big = big % sma;
        sma = temp;
    }
    return a;
}
