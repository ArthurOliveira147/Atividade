#include <stdio.h>

int main ()
{

int a = 0;
int b = 0;
int c = 0;
int d = 0;
int x = 0;

    scanf("%d %d %d", &a, &b, &c);

d = (b*b)-(4*(a+c));
x = (a+d*2)+(b+d)+c;

    if (d > 0)
    {
        printf("%d\n", x);
        printf("%d\n", x);
    }
    else if (d = 0)
    {
        printf ("%d\n", x);
    }
    else if (d < 0)
    {
        printf ("raizes complexas\n");
    }

return (0);
}
