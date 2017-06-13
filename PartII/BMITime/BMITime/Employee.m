//
//  Employee.m
//  BMITime
//
//  Created by Guti on 6/11/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Employee.h"
#import "Asset.h" // Compiler needs to know a lot more about this class, use #import instead of @class.

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
- (void)dealloc {
    NSLog(@"deallocating %@", self);
}
@end
