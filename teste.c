#include<stdio.h>

double Soma (double A, double B);
double Subtracao (double A, double B);
double Multiplicacao (double A, double B);
double Divisao (double A, double B);

double A = 0.00000, B = 0.00000;
int entrada = 0;

int main(){

    //menu

    printf ("Escolha a operacao:\n");
    printf ("0. Sair\n");
    printf ("1. Soma\n");
    printf ("2. Subtracao\n");
    printf ("3. Multiplicacao\n");
    printf ("4. Divisao\n");
    printf ("5. Potenciacao\n");
    printf ("6. Raiz Quadrada\n");
    printf ("7. Fatorial\n");
    printf ("8. MDC\n");
    printf ("9. MMC\n");
    printf ("10. Equacao de Segundo Grau\n");
    printf ("Escolha uma operacao\n");
    scanf ("%d", &entrada);
    

    switch (entrada){
      case 1:
        printf ("Digite o primeiro numero:\n");
		scanf ("%d", &entrada);
		printf ("Digite o segundo numero:\n");
		scanf ("%d", &entrada);
	break;
    
    //calculos

        double Soma (double A, double B){
            double resultado = 0.00000;
            scanf ("%lf\n%lf", &A, &B);
            resultado = A+B;
            printf ("resultado = %.5lf\n", resultado);
            
        return (resultado);
    }    
        double Subtracao (double A, double B){
            double resultado = 0.00000;
            scanf ("%lf\n%lf", &A, &B);
            resultado = A-B;
            printf ("resultado = %.5lf\n", resultado);
            
        return (resultado);
    }
        double Multiplicacao(double A, double B){
            double resultado = 0.00000;
            scanf ("%lf\n%lf", &A, &B);
            resultado = A*B;
            
        return (resultado);
    }    
        return 0;
}