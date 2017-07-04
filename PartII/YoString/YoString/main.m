//
//  main.m
//  YoString
//
//  Created by Guti on 7/1/17.
//  Copyright © 2017 Guti. All rights reserved.
//

// C library headers
#include <stdio.h> // for printf
#include <stdlib.h> // for malloc/free
#include <string.h> // for strlen

int main(int argc, const char * argv[]) {
    char x = 0x21; // use ASCII as literals wrapped in single quotes - '!'
    while (x <= 0x7e) { // '~'
        printf("%d = 0x%x is %c\n", x, x, x);
        x++;
    }
    
    // Get a pointer to 5 bytes of memory on the heap
    char *start = malloc(5);
    
    // Put characters in the allocation
    *start = 'L';
    *(start + 1) = 'o'; // pointer arithmetic: next byte
    *(start + 2) = 'v'; // shorthand is start[2], start[3], start[0], and so on.
    *(start + 3) = 'e';
    *(start + 4) = '\0';
    
    // Print it out
    printf("%s has %zu characters\n", start, strlen(start));
    
    // Print out the third letter
    printf("The third letter is %c\n", *(start + 2)); // dereference the second byte from start.
    
    // Free the memory so that it can be reused
    free(start);
    start = NULL;
    
    // Floating point numbers - Array??
    float *favorites = malloc(3 * sizeof(float));
    
    favorites[0] = 3.14158;
    favorites[1] = 2.71828;
    favorites[2] = 1.41421;
    
    for (int i = 0; i < 3; i++) {
        printf("%.4f is favorite %d\n", favorites[i], i);
    }
    
    free(favorites);
    favorites = NULL;
    
    // String literals
    const char *love = "Love"; // `const` enables the compiler to give you a warning before running program.
    printf("%s has %zu characters at address %p\n", love, strlen(love), love);
    printf("The third letter is %c\n", love[2]);
    
    // For a string literal you don't need to `malloc` and `free` memory. It is considered a constant and its contents cannot be modified.
    //love[0] = 'z';
    
    return 0;
}
