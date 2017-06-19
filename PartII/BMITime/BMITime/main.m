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
        
        // Create a dictionary of executives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        
        for (int i = 0; i < 10; i++) {
            // Create an instance of `Employee`
            Employee *employee = [[Employee alloc] init];
            
            // give the instace variables some values
            employee.weightInKilos = 90 + i;
            employee.heightInMeters = 1.8 - i / 10.0;
            employee.employeeID = i;
            
            // Put the employee in the employees array
            [employees addObject:employee];
            
            // Is this the first Employee?
            if (i == 0) {
                [executives setObject:employee forKey:@"CEO"];
            } else if (i == 1) { // second Employee
                [executives setObject: employee forKey: @"CTO"];
            }
        }
        
        // All Assets available
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
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
            //NSLog(@"random index: %lu", randomIndex);
            
            // Find random employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAsset:asset];
            
            // Catalog assets
            [allAssets addObject:asset];
        }
        
        // Sort employees by value of assets, and then by employee id
        // Create descriptors
        NSSortDescriptor *valueOfAssets = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *employeeID = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        // Sort employees array using descriptors
        [employees sortUsingDescriptors: @[valueOfAssets, employeeID]];
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee:");
        [employees removeObjectAtIndex:5];  // override `description` and `dealloc`
        
        NSLog(@"allAssets: %@", allAssets);
        
        // Print out the entire dictionary
        NSLog(@"executives: %@", executives);
        
        // Print out the CEO's information
        NSLog(@"CEO: %@", executives[@"CEO"]); // [executives objectForKey:@"CEO"];
        //executives = nil;
        
        // Reclaim all assets given to employees who currently hold assets worth more than $600 total.
        // Use a predicate to filter the array of assets from employee's that have a total worth of $600 or more in assets.
        
        // Create the predicate - logical statament that is either true or false - for the filter.
        NSPredicate *predicate600Plus = [NSPredicate predicateWithFormat: @"holder.valueOfAssets > 600"];
        
        // Filter the asset collection using the predicate
        [allAssets filterUsingPredicate:predicate600Plus];
        NSLog(@"Filtered Assets: %@", allAssets);
        
//        // Need a new array to hold the filtered asset collection
//        NSArray *filteredAssets = [allAssets]
        
        NSLog(@"\n");
        NSLog(@"Giving up ownership of arrays.");
        
        
//        allAssets = nil;
//        employees = nil;
        
        /// When an object that a weak reference points to is deallocated, the pointer is 'zeroed', or set to `nil`. So the assets that were previously assigned to Employee 5's will not be deallocated, and their `holder` variables will be *automatically* set to nil.
        
        /// A strong reference will keep the object it points to from being deallocated. A weak reference will not. Instance variables and properties that are marked as weak are pointing at objects that might go away.
        
        /// The keys in a dictionary are unique. If you try to add a second object under an existing key, the first key-value pair gets replaced.
        
        /// Immutability:
        /// Using an immutable collection conserves memory and improves performance because that collection never needs to be copied. It is unnecessary. Ex: `NSDate` and `NSNumber` are immutable but do not have mutable subclasses. You create a new object each time.
        
        // Test `removeAsset:`
//        Employee *employee =  employees[1];
//        NSLog(@"%@\n Assets: %@", employee, employee.assets);
//        Asset *currentAsset = employee.assets[0];
//
//        BOOL removedAsset = [employee removeAsset:currentAsset];
//
//        NSString *removedSuccess = removedAsset ? @"True" : @"False";
//
//        NSLog(@"Remove Asset: %@ -> %@", currentAsset.label, removedSuccess);
//
//        NSLog(@"Employees: %@", employees);
        
/******************************************************************************/
        
        
        /// As objects become unnecessary, they are being deallocated. When unnecessary objects do not get deallocated, you are said to have a 'memory leak'. A memory leak causes more and more objects to linger unnecessarily, which will cause your application to run low on memory.
        
    }
    sleep(100);
    return 0;
}
