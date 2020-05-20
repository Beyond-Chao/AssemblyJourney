//
//  main.c
//  AssemblyTutorial-C
//
//  Created by BeyondChao on 2020/2/8.
//  Copyright © 2020 BeyondChao. All rights reserved.
//

#include <stdio.h>
// #include "operator.h"

void addOperator() 
{
    int a = 10;
    a = a + 1;
    a = a * 8;

    printf("sum = %d", a);
}

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    addOperator();
    // greet();
    return 0;
}


