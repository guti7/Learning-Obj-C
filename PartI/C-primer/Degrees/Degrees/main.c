//
//  main.c
//  Degrees
//
//  Created by Guti on 6/2/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>  // Use type alias for EXIT_SUCCESS(0) or EXIT_FAILURE(1)

//: Declare a global variable(outermost scope/file scope) - Available to the code in every one of the project files.
float lastTemperature;

//: Static variable - (outermost scope/file scope/ outside any function)
// Only accessible from the code in the file where it was declare.
static float nextTemperature;
// Automatically initialized to zero equivalent if variables are not initilized at declaration.


float fahrenheitFromCelsius(float cel) {
    
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    
    float freezeInC = 0;
    float freezeinF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit.\n", freezeinF);
    printf("The last temperature converted was %f.\n", lastTemperature);
    
    return EXIT_SUCCESS;
}

// The execution of function stops when it returns:
float average(float a, float b) {
    return (a + b) / 2.0;
    //printf("The mean justifiese teh end.\n"); // statement never executes
}
