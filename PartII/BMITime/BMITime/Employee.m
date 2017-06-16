//
//  Employee.m
//  BMITime
//
//  Created by Guti on 6/11/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Employee.h"
#import "Asset.h" // Compiler needs to know a lot more about this class, use #import instead of @class.

/// The class header is where a class advertises its properties and methods so that other objects will know how to interact with it.
/// In contrast, a class 'extension' is a set of declarations that is private. Ony the class or instances of the class are able to use the properties, instance varibles, or methods declared in a class extension.

// A Class Extension
@interface Employee ()

// Instance variables
{
    NSMutableArray *_assets; // behind the scenes implementation for assets, ability to add or remove `Asset` objects
}

@property (nonatomic) unsigned int officeAlarmCode;

/* Effects:
 1) Objets that are not instances of `Employee` can no longer see properties declared in a class extension.
 2) Makes the header declaration more simple for other developers trying to use it. The less uncessary information to read the better.
*/
@end

@implementation Employee

const double secondsPerYear = 31557600.0;

// Accessors for `_assets` properties
- (void)setAssets:(NSArray *)assets {
    _assets = [assets mutableCopy];
}

-(NSArray *)assets {
    return [_assets copy];
}

// Methods
- (void)addAsset:(Asset *)asset {
    // check for nil - lazyly initialize the assets array
    if (!_assets) {
        // Create the array
        _assets = [[NSMutableArray alloc] init];
    }
    
    [_assets addObject:asset];
    asset.holder = self;
}

- (BOOL)removeAsset:(Asset *)asset {
    if (!_assets) { // asset array is empty
        return false;
    }
    
    // look for Asset in list if found return true else false
    for (Asset *currentAsset in _assets) {
        if (currentAsset.label == asset.label) {
            [_assets removeObject:currentAsset]; // is removing by index better? how?
            return true;
        }
    }
    return false; // not found
}

- (unsigned int)valueOfAssets {
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (Asset *asset in _assets) {
        sum += [asset resaleValue];
    }
    return sum;
}

- (double)yearsOfEmployment {
    if (self.hireDate) { // `hireDate` is non-nil
        // NSTimeInterval
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / secondsPerYear;
    } else {
        return 0;
    }
}

// Override a method from superclass
- (float)bodyMassIndex {
    // accessing the superclass
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

// Override `description` for `Employee`(`NSObject`)
- (NSString *)description {
    //return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
    return [NSString stringWithFormat:@"<Employee %u: %u in assets>", self.employeeID, self.valueOfAssets];
}

// Override `dealloc`
//- (void)dealloc {
//    //NSLog(@"deallocating %@", self);
//}
@end
