//
//  main.c
//  TwoFloats
//
//  Created by Guti on 6/1/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    float pi = 3.14;
    
    float theAnswerToEverything = 42.0;
    
    double sum = pi + theAnswerToEverything;
    
    printf("the sum of pi and the 'Answer' is: %f\n", sum);
    
    printf("\n");
    
    
    // Challenge pg 28  if and else
    int i = 20;
    int j = 25;
    int k = (i > j) ? 10 : 5;  // false so k = 5
    printf("k = %d\n", k);
    
    if (5 < j - k) { // First expression
        printf("The first expression is true.");  // this gets executed first (true)
    } else if (j < i) {
        printf("The second expression is true.");
    } else {
        printf("Neither expresssion is true.");
    }
    
    printf("\n");
    return 0; // success execution
}
