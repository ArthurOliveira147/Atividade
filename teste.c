#include <stdio.h>

double Soma (double A, double B);
double Subtracao (double A, double B);
double Multiplicacao (double A, double B);
double Divisao (double A, double B);
double Potenciasao (double A);

int main(){

double A = 0.00000, B = 0.00000;
int input = 0;

        //menu

    printf("Escolha a operacao:\n");
    printf("0. Sair\n");
    printf("1. Soma\n");
    printf("2. Subtracao\n");
    printf("3. Multiplicacao\n");
    printf("4. Divisao\n");
    printf("5. Potenciacao\n");
    printf("6. Raiz Quadrada\n");
    printf("7. Fatorial\n");
    printf("8. MDC\n");
    printf("9. MMC\n");
    printf("10. Equacao de Segundo Grau\n");
    printf("Escolha uma operacao\n");
    scanf("%d", &input);

    switch(input){
      case 1:

    }


    //calculos

        double Soma (double A, double B){

        scanf ("%lf\n%lf", &A, &B);
        resultado = A+B;
        printf ("resultado = %.5lf\n", Soma);

        return (resultado);
    }

    return 0;
}