//
//  main.c
//  Heap
//
//  Created by Guti on 6/3/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

//Create a `Person` struct on the heap.

// `Person` struct defined
typedef struct {
    float heightInmeters;
    int weightInKilos;
} Person;

// Calculate and return the body mass index of the given `Person`
float bodyMassIndex(Person *person) {  // `Person` passed by reference
    return person->weightInKilos / (person->heightInmeters * person->heightInmeters);
}

//
int main(int argc, const char * argv[]) {
    
    // Allocate memory for `Person` struct
    Person *mj1990s = (Person *)malloc(sizeof(Person));
    
    // Update values on `Person`
    mj1990s->heightInmeters = 1.98; // Operator -> means "dereference the pointer `mj1990s` to the struct and get the member variable."
    mj1990s->weightInKilos = 88;
    
    // Print out the BMI
    float mjBMI = bodyMassIndex(mj1990s);
    printf("M.J. had a BMI of %f\n", mjBMI);
    
    // Let the memory be recycled
    free(mj1990s);
    
    // Forget the location
    mj1990s = NULL;
    
    return 0;
}
