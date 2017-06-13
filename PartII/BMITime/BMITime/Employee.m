//
//  Employee.m
//  BMITime
//
//  Created by Guti on 6/11/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Employee.h"

@implementation Employee

const double secondsPerYear = 31557600.0;

-(double)yearsOfEmployment {
    if (self.hireDate) { // `hireDate` is non-nil
        // NSTimeInterval
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / secondsPerYear;
    } else {
        return 0;
    }
}

// override a method from superclass
-(float)bodyMassIndex {
    // accessing the superclass
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}
@end
