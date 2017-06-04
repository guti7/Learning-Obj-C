//
//  main.c
//  Addresses
//
//  Created by Jose Gutierrez on 6/2/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    
    int n = 7;
    // the memory address of variable n
    printf("n stores its values at %p\n", &n);
    
    // get the address of a function
    printf("This function start at %p\n", main);
    printf("This function is located at %p\n", printf);
    
    // Storing addresses in pointer variables
    
    // variable named `ptr` that holds the address where a float can be found
    float *ptr;
    // ptr is a variable that is a pointer to a `float`. It holds the address where a `float` can be found.
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    printf("which is also %p\n", &i);
    
    // The significance of passing addresses comes when you are working with large and more complex data. It is not always possible to pass a copy of data you want to work with, but you can always pass the address of where the data begins.
    
    // Getting the data at an address
    printf("The in stored at addressOfI is %d\n", *addressOfI);
    
    // 'Pointers' are also known as references. Using the pointer to read data at its address is called 'dereferencing'.
    
    // Use the '*' operator to store data at a particular address:
    // operator goes on the left hand side of an assignment.
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    printf("Address of I: %p\n", addressOfI);
    // `addressOfI` remains the same but the contents of what `addressOfI` points to have been modified.
    
    // Number of bytes per data type
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    
    // the %zu token matches to the type returned by `sizeof`, which is `size_t`
    
    // NULL - the pointer to nothing
    // You have a variable that holds an address, and you want to store something in it hat makes it explicit that the variable is not set to anything.
    
    // reuse `ptr` from above:
    // Set `ptr` to NULL for now
    ptr = NULL; // NULL is equivalent to zero(0). (address 0)
    
    // has the pointer been set?
    if (ptr) {
        printf("ptr is not NULL\n"); // true
    } else {
        printf("ptr is NULL\n"); // (0) false - it has not been set.
    }
    
    // NULL can also indicate that there is no value.
    
    // Pointer declaration styles: putting '*' directly next to the variable name makes it clear of what you want to do.
    
    
    // size of float
    printf("The size of float is %zu\n", sizeof(float));
    printf("The size of a pointer to a float is %zu\n", sizeof(float *));
    
    // How much range?
    // short
    size_t sizeOfShort = sizeof(short);
    int maxRangeOfShortType = pow(2, ( ((int)sizeOfShort) * 8) - 1) - 1;
    printf("size of short: %zu, max positive: %d\n", sizeOfShort, maxRangeOfShortType);
    
    short k = 32767;
    short m = 32768; // overflow, circle back to min negative
    short l = -32769; // overflow back to max positive
    
    printf("short k: %hi, short m: %hi, short l: %hi\n", k, m, l);
    
    return 0;
}
