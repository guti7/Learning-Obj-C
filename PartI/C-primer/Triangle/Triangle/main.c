//
//  main.c
//  Triangle
//
//  Created by Guti on 6/2/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// Returns the third angle from the first two given angles that form a triangle.

float remainingAngle(float angleA, float angleB) {
    return 180.0 - angleA - angleB;
}

int main(int argc, const char * argv[]) {
    
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC); // format string with output modified to 2 significant figures
    
    // literal string as a value of type char *
    char* myString = "Here is my string";
    
    return EXIT_SUCCESS;
}
