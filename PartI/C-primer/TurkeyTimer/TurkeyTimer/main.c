//
//  main.c
//  TurkeyTimer
//
//  Created by Guti on 6/1/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>

// A function can have many local variables, and all of them are stored in the `frame` for that function. The frame is only present while the function is being executed.
// Frames are stored in memory at a place called a `stack`. When a function is called its frame gets `pushed` on top of the `stack` and when the function terminates execution its frame gets `popped` off the stack.

// Computes how long to cook a turkey
void showCookTimeForTurkey(int pounds) {
    int necessaryMinutes = 15 + 15 * pounds;
    printf("Cook for %d minutes.\n", necessaryMinutes);
    if (necessaryMinutes > 120) {
        int halfway = necessaryMinutes / 2;
        printf("Rotate after %d of the %d minutes.\n", halfway, necessaryMinutes);
    }
}

int main(int argc, const char * argv[]) {
    
    int totalWeight = 10;
    int gibletsWeight = 1;
    int turkeyWeight = totalWeight - gibletsWeight;
    showCookTimeForTurkey(turkeyWeight);
    
    return 0;
}
