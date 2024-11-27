#include <stdio.h>
{
 int m = 0;
 int n = 0;
 int soma = 0;
 int num[10];

 for(int i = 0; i<2; i++)
 {
    scanf ("%d %d", &m, &n);
 }

 if (m < n)
 {
    for(int i = m; i<n; i++)
    {
        i = num[i];
    }
 }

    return 0;
}
