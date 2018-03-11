#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

#define n 3


double f1(double x2, double x3){
    return (x2+1)/2;
}

double f2(double x1, double x3){
    return (x1+x3+8)/3;
}

double f3(double x1, double x2){
    return (x2-5)/2;
}
double absolutiano(double x){
    if(x>0) return x;
    return -x;
}
double maximiliano (double x, double y){
    if(x>y) return x;
    return y;
}
double errorH(double x1,double x2,double x3,double aux1, double aux2, double aux3){
    return maximiliano(maximiliano(absolutiano(x1-aux1), absolutiano(x2-aux2)), absolutiano(x3-aux3));
}

int main(){
    double a[n][n]={{2,-1,0},{-1,3,-1},{0,-1,2}};
    double error=1;
    double b[]={1,8,-5};
    int i=0;

    double x1=0,x2=0,x3=0, aux1, aux2, aux3;

    //aki va jakovi:
    while(error>0.0001){
        aux1=x1;
        x1 = f1(x2,x3);
        aux2=x2;
        x2 = f2(x1,x3);
        aux3=x3;
        x3 = f3(x1,x2);

        error=errorH(x1,x2,x3, aux1,aux2,aux3);
        printf("%i\t%.5lf\t%.5lf\t%.5lf\t%.5lf", i, x1,x2,x3,error);
        printf("\n");
        i++;

    }

    return 0;
}
