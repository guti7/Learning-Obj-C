//
//  main.c
//  Squarer
//
//  Created by Guti on 6/2/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>

// Returns the computed square of the integer given
int intSquared(int n) {
    return n * n;
}

int main(int argc, const char * argv[]) {
    int number = 5;
    int numberSquared = intSquared(number);
    printf("\"%d\" squared is equal to: \"%d\"\n", number, numberSquared);
    
    return 0;
}
