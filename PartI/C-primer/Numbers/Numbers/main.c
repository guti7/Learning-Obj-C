//
//  main.c
//  Numbers
//
//  Created by Guti on 6/2/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void printNumInSystems(int number) {
    printf("number is %d.\n", number);
    printf("In octal, number is %o\n", number);
    printf("In hexadecimal, number is %x.\n", number);
}

void printLongIntInSystems(long number) {
    printf("number is %ld.\n", number);
    printf("In octal, number is %lo\n", number);
    printf("In hexadecimal, number is %lx.\n", number);
}




int main(int argc, const char * argv[]) {
    int x = 255;
    printNumInSystems(x);
    printf("\n");
    
    long y = 34;
    printLongIntInSystems(y);
    
    // Integer division in C:
    printf("3 * 3 + 5 * 2 = %d\n", 3 * 3 + 5 * 2);
    printf("11 / 3 = %d remainder of %d\n", 11 / 3, 11 % 3); // rounds off towards zero (floor)
    printf("11.0 / 3 = %f\n", (float)11 / 3);
    
    // NSInteger vs. NSUInteger are part of Objective-C
    // Both tranfer automatically to 32-bit or 64-bit systems depending on the computer's chip architecture
    //NSInteger m = -5;
    //NSUInteger p = 6;
    
    // they are `long` and `unsigned long`, respectively behind the scenes.
    
    // Operatior shorthand: ++, --, *=, /=, +=, -=
    
    // absolute values: `abs()` and `labs()` for `long` types
    // import `stdlib.h` to use them. Part of the standard library
    printf("The absolute value of -5 is %d\n", abs(-5));
    
    //NOTE: unlike integers, floating point numbers are ALWAYS signed.
    // float       -  32 bits
    // double      -  64 bits
    // long double - 128 bits
    
    double d = 12345.6789;
    printf("d is %f\n", d);
    printf("d is %e\n", d);
    printf("d is %.2f\n", d);
    printf("d is %.2e\n", d);
    
    // Explore the math library and its functions
    // #include <math.h> in your program files.
    // NOTE: Trigonometry is done in radians.
    
    
    // Display the sine of 1 radian. Show the number rounded to three decimal points. Ans = 0.841
    printf("The sine of 1rad = %.3f\n", sin(1));
    
    return 0;  // #include <stdlib.h> and use EXIT_SUCCESS
    
}


// Tokens for each type:
// `l` - long : ld, lo, lx
// `ll` - long long : lld, llo, llx
// `u` - unsigned : lu, octal and hexa assume number is unsigned.
