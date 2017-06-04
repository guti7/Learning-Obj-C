//
//  main.c
//  PBR
//
//  Created by Guti on 6/2/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    // Pass the address of `integerPart` as an argument
    fractionPart = modf(pi, &integerPart); // pass by reference
    
    // Find the value stored in `integerPart`
    printf("integerPart = %.0f, fracationPart = %.2f\n", integerPart, fractionPart);
    
    return 0;
}
