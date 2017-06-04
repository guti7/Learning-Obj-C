//
//  main.c
//  LengthConversion
//
//  Created by Guti on 6/2/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

// Writing pass-by-reference functions

#include <stdio.h>
#include <math.h>

// Convert meters to feet and inches with pass by reference parameters, assumes positive lengths
void metersToFeetAndInches(double meters, unsigned int *feetPtr, double *inchesPtr) {
    
    // Convert the number of meters into a floating-point number of feet
    double rawFeet = meters * 3.281; // 1 meter = 3.281 feet
    
    // How many complete feet as an unsigned int?
    //unsigned int feet = (unsigned int)floor(rawFeet);
    unsigned int feet = (unsigned int) rawFeet;
    
    // Store the number of feet at the supplied address
    if (feetPtr) { // address could be NULL
        printf("Storing %u to the address %p\n", feet, feetPtr);
        *feetPtr = feet;
    }
    
    // Calculate inches
    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    
    // Store the number of inches at the supplied address
    if (inchesPtr) { // address could be NULL
        printf("Storing %.2f to the address %p\n", inches, inchesPtr);
        *inchesPtr = inches;
    }
    
}

void metersToFeetAndInchesMod(double meters, unsigned int *feetPtr, double *inchesPtr) {
    
    double feet;
    double rawInches = modf(meters * 3.281, &feet);
    
    if(feetPtr) {
        *feetPtr = feet;
    }
    if (inchesPtr){
        *inchesPtr = rawInches * 12.0;
    }
    
}

int main(int argc, const char * argv[]) {
    
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    //metersToFeetAndInches(meters, &feet, &inches);
    metersToFeetAndInchesMod(meters, &feet, &inches);
    printf("%.2f meters is qual to %d feet and %.2f inches\n", meters, feet, inches);
    
    //: Avoid dereferencing NULL
    // Sometimes a function can supply many values by reference, but may only care about some of them. You pass NULL to tell the function "I do not need this particular value."
    
    // Always check pointers are non-NULL before you dereference them.
    
    return 0;
}
