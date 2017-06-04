//
//  main.c
//  Coolness
//
//  Created by Guti on 6/2/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <objc/objc.h>

int main(int argc, const char * argv[]) {
    
    printf("¡Guti es chingón!\n");
    
    // While loop
    int i = 0;
    while (i < 12) {
        printf("¡Guti es chingón!\n");
        i++;
    }
    
    // For loop
    for (int i = 0; i < 12; i++) {
        printf("¡Más chingón, es Guti!");
    }
    
    // Do-while loop: Ensures the block of code is always executed at least once
    printf("\n");
    int k = 0;
    do {
        printf("Todavia sigue siendo chingón Guti\n");
        k++;
    } while (k < 3); // semicolon(;) The do-while loop is one big long statement.
    
    // Loops are used to 'iterate' through a collection of items.
    
    printf("\n");
    
    // C programmers have always used an `int` to hold a boolean value.
    // Objective-C programmers typically use the type BOOL for boolean variables. BOOL is an alias for an integer type. To use BOOL in a C program use #include <objc/objc.h>
    BOOL conditionFound = false;
    int j;
    for (j = 0; j < 12; j++) {
        printf("Checking j = %d\n", j);
        if (j % 3 == 0 ) {
            continue;
            // move past the rest of the code and start at the next iteration of (j++)
        }
        
        if (j + 90 == j * j) {
            conditionFound = true;
            break;
            // When `break` is called, execution skips directly to the end of the code block(outside the loop)
        }
    }
    
    if (conditionFound) {
        printf("The answer is %d.\n", j);
    } else {
        printf("Answer not found in 0 to 11.\n");
    }
    
    return EXIT_SUCCESS;
}
