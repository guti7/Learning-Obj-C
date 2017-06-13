//
//  main.m
//  BMITime
//
//  Created by Guti on 6/9/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an instance of BNRPerson
        BNRPerson *julioCesarChavez = [[BNRPerson alloc] init];
        
        int lightWelterWeight = 63;  // kilograms
        
        // Set the height and weigth
        [julioCesarChavez setWeightInKilos:lightWelterWeight];
        [julioCesarChavez setHeightInMeters:1.71];
        
        // Log the instance variables
        float height = [julioCesarChavez heightInMeters];
        int weight = [julioCesarChavez weightInKilos];
        NSLog(@"Julio is %.2f meters tall and weighs %d kilograms.", height, weight);
        
        // Calculate BMI
        float bmi = [julioCesarChavez bodyMassIndex];
        NSLog(@"Julio has a BMI of %f", bmi);
        
    }
    return 0;
}
