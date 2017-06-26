//
//  Appliance.m
//  Appliances
//
//  Created by Guti on 6/25/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

#pragma mark - Override from Superclass

-(instancetype)init {
    // Call the `NSObject` init method
    self = [super init];
    
    NSLog(@"self within init: %@", self);
    
    // Check for non-nil
    if (self) {
        // Default starting voltage value
        //_voltage = 120;
        [self setVoltage:120]; // setter method for property
    }
    
    NSLog(@"self within init: %@", self);
    
    // Return a pointer to the new object
    return self;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}
@end
