int GCD(int a, int b)
{
    if (a == b)
    {
        return -1;
    }
    while (b != 0)
    {
        int temp = b;
        b = a % b;
        a = temp;
    }

    return a;
}
