//
//  main.c
//  BMICalc
//
//  Created by Guti on 6/2/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>
#include <time.h>

//: Sometimes you need a variable to hold several related chunks of data.
// This is called a structure(`struct`). Each chunk of data is known as a 'member' of the `struct`.

// Declare a `struct` named `Person` that has two members: a float named `heightInMeters` and an `int` named `weigthInKilos.

//struct Person {
//    float heightInMeters;
//    int weightInKilos;
//}; // semicolon??

//: Most of the time you use a struct declaration over and over again. So it is common to create a `typedef` for the struct type.
//: `typedef` defines an alias for a type declaration and allows you to use it more like the usual data types.
// Struct update:
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

//: You can pass a `Person` to another function
float bodyMassIndex(Person person) {
    return person.weightInKilos / (person.heightInMeters * person.weightInKilos);
}

int main(int argc, const char * argv[]) {
    
    // create two `Person` structs
    //struct Person george;
    Person george;
    george.heightInMeters = 1.90;
    george.weightInKilos = 96;
    
    //struct Person guti;
    Person guti;
    guti.heightInMeters = 1.77;
    guti.weightInKilos = 75;
    
    //printf("George is %.2f meters tall\n", george.heightInMeters);
    //printf("Guti is %.2f meters tall\n", guti.heightInMeters);
    //printf("Guti weighs %d kilograms\n", guti.weightInKilos);
    
    // calculate the BMI
    float bmi;
    bmi = bodyMassIndex(george);
    printf("George has a BMI of %.2f\n", bmi);
    
    bmi = bodyMassIndex(guti);
    printf("Guti has a BMI of %.2f\n", bmi);
    
    
    // Another common struct
    long secondsSince1970 = time(NULL);
    printf("\nIt has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    return 0;
}
