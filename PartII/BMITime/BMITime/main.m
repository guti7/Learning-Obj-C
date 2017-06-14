//
//  main.m
//  BMITime
//
//  Created by Guti on 6/9/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /// New program to use `Asset`
        // Create an array of `Employee` objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // Create an instance of `Employee`
            Employee *employee = [[Employee alloc] init];
            
            // give the instace variables some values
            employee.weightInKilos = 90 + i;
            employee.heightInMeters = 1.8 - i / 10.0;
            employee.employeeID = i;
            
            // Put the employee in the employees array
            [employees addObject:employee];
        }
        
        // Create 10 assets
        for (int i = 0; i < 10; i++) {
            // Create an asset
            Asset *asset = [[Asset alloc] init];
            
            // Label asset
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            // Get a random number between 0 - 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // Find random employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAsset:asset];
        }
        
        // Test `removeAsset:`
        NSLog(@"Employees: %@", employees);
        
        Employee *employee =  employees[1];
        NSLog(@"%@\n Assets: %@", employee, employee.assets);
        Asset *currentAsset = employee.assets[0];
        
        BOOL removedAsset = [employee removeAsset:currentAsset];
        
        NSString *removedSuccess = removedAsset ? @"True" : @"False";
        
        NSLog(@"Remove Asset: %@ -> %@", currentAsset.label, removedSuccess);
        
        NSLog(@"Employees: %@", employees);
        
        
        
//        NSLog(@"Giving up ownership of one employee:");
//        [employees removeObjectAtIndex:5];
        
        
//        NSLog(@"Giving up ownership of array.");
//        employees = nil;
        
        /// As objects become unnecessary, they are being deallocated. When unnecessary objects do not get deallocated, you are said to have a 'memory leak'. A memory leak causes more and more objects to linger unnecessarily, which will cause your application to run low on memory.
        
        
        // Create an instance of BNRPerson
//        BNRPerson *julioCesarChavez = [[BNRPerson alloc] init];
//
//        int lightWelterWeight = 63;  // kilograms
//
//        // Set the height and weigth
//        [julioCesarChavez setWeightInKilos:lightWelterWeight];
//        [julioCesarChavez setHeightInMeters:1.71];
//
//        // Log the instance variables
//        float height = [julioCesarChavez heightInMeters];
//        int weight = [julioCesarChavez weightInKilos];
//        NSLog(@"Julio is %.2f meters tall and weighs %d kilograms.", height, weight);
//
//        // Calculate BMI
//        float bmi = [julioCesarChavez bodyMassIndex];
//        NSLog(@"Julio has a BMI of %f", bmi);
        
        /// Modify to create an `Employee`
//        Employee *silo = [[Employee alloc] init];
//
//        silo.weightInKilos = 80;
//        silo.heightInMeters = 1.74;
//        silo.employeeID = 777;
//        silo.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 13th, 2016"];
//
//        // Log some properties
//        NSLog(@"silo weights %d kg., and is %.2f meters tall.", silo.weightInKilos, silo.heightInMeters);
//        //NSLog(@"Employee %u hired on %@", silo.employeeID, silo.hireDate);
//        NSLog(@"%@ hired on %@", silo, silo.hireDate);
//
//        float bmi = silo.bodyMassIndex;
//        double years = silo.yearsOfEmployment;
//        NSLog(@"BMI of %.2f, has worked with us for %.2f years.", bmi, years);
    }
    return 0;
}
