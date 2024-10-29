#include <stdio.h>

int main ()
{

    int m = 0;
    int n = 0;
    int s[50];
    int i;
    int impar = 0;
    int par = 1;

    scanf ("%d %d", &m, &n);

    if (m > n)
    {
        printf ("impossivel");
    }

    for(i = m; i <= n; i++)
    {
        printf ("%d\n", i);

    }

return (0);
}
