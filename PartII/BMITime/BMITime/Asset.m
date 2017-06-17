//
//  Asset.m
//  BMITime
//
//  Created by Guti on 6/13/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Asset.h"
//#import "Employee.h"

@implementation Asset

// Override `dealloc`
- (void)dealloc {
    NSLog(@"deallocating %@", self); // will send message [self description]
}

// Override `description`
- (NSString *)description {
    
    // Extend to display holder info
    if (self.holder) {
        return [NSString stringWithFormat: @"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%u unassigned>", self.label, self.resaleValue];
    }
}

@end
