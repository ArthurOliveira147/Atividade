#include <stdio.h>

double Soma (double A, double B);
double Subtracao (double A, double B);
double Multiplicacao (double A, double B);
double Divisao (double A, double B);
//double Potenciasao ();
//double Raiz Quadrada ();
//double Fatorial ();
//int MDC ();
//int MMC ();
//double Equacao de Segundo Grau ();

double A = 0.00000, B = 0.00000;
int entrada = 0;

int main(){

    //menu

    printf ("Operacoes:\n");
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
    printf ("Escolha uma operacao:\n");
    scanf ("%d", &entrada);

    switch (entrada){
      case 1:
        printf ("Digite o primeiro numero:\n");
		scanf ("%lf", &A);
		printf ("Digite o segundo numero:\n");
		scanf ("%lf", &B);
		printf ("resultado = %.5lf\n", Soma(A,B));
	  case 2:
	    printf ("Digite o primeiro numero:\n");
	    scanf ("%lf", &A);
	    printf ("Digite o segundo numero:\n");
	    scanf ("%lf", &B);
	    printf ("resultado = %.5lf\n", Subtracao(A,B));
	break;
	  case 3:
	    printf ("Digite o primeiro numero:\n");
	    scanf ("%lf", &A);
	    printf ("Digite o segundo numero:\n");
	    scanf ("%lf", &B);
	    printf ("resultado = %.5lf\n", Multiplicacao(A,B));
	break;
	  case 4:
	    printf ("Digite o primeiro numero:\n");
	    scanf ("%lf", &A);
	    printf ("Digite o segundo numero:\n");
	    scanf ("%lf", &B);
	    printf ("resultado = %.5lf\n", Divisao(A,B));
	break;
    }
    
     return 0;
}   
    //calculos
    
double Soma (double A, double B){
    double resultado = 0.00000;
    resultado = A+B;
    return (resultado);
}    

double Subtracao (double A, double B){
    double resultado = 0.00000;
    resultado = A-B;
    return (resultado);
}
    
double Multiplicacao (double A, double B){
    double resultado = 0.00000;
    resultado = A*B;
    return (resultado);
}
    
double Divisao (double A, double B){
    double resultado = 0.00000;
    resultado = A/B;
    return (resultado);    
}
