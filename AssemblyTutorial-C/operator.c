#include "operator.h"

int g_a = 1;
int g_b = 1;

void dataTypeSample() {
    char c = 'a';
    printf("separator");
    int i = 99;
    printf("separator");
    float f = 9.99;
    printf("separator");
    double d = 99.99;
    printf("separator");
}

void integer() {   
    int i = 999;
    printf("integer");
}

void greet() {
    printf("Hi I`am BeyondChao \n");
}

int incrementLater() {
    return g_a++;
}

int incrementBefore() {
    return ++g_b;
}

