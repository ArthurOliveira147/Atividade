#include <stdio.h>

int main() {

//está grande mais for a unica maneira que pensei para fazer isso
    int M = 0;
    int N = 0;
    int meio = 0;
    int meio1 = 0;
    int meio2 = 0;
    int menor = 0;
    int maior = 0;
    int soma = 0;

    scanf ("%d %d", &M ,&N);

    if (M < N)
    {
        menor = M;
        maior = N;
    }
    else if (M > N)
    {
        menor = N;
        maior = M;
    }

    meio = menor+2;
    meio1 = menor+1;
    meio2 = maior-1;

    soma = menor+meio1+meio2+maior;

    if (meio1 == meio2 && meio == meio2 || meio == maior)
    {
        soma = menor+meio1+maior;
        printf ("%d %d %d Soma=%d", menor, meio1, maior, soma);
    }
    else if (meio1 != meio2 && meio == meio2 || meio == maior)
    {
        soma = menor+meio1+meio2+maior;
        printf ("%d %d %d %d Soma=%d", menor, meio1, meio2, maior, soma);
    }
    else if (meio1 != meio2 && meio != meio2 || meio != maior)
    {
        soma = menor+meio1+meio+meio2+maior;
        printf ("%d %d %d %d %d Soma=%d", menor, meio1, meio, meio2, maior, soma);
    }

    return 0;
}
