//
//  Appliance.m
//  Appliances
//
//  Created by Guti on 6/25/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

#pragma mark - Initializers

-(instancetype)initWithProductName:(NSString *)productName {
    // Call the `NSObject` init method
    self = [super init];
    
    // Check for non-nil
    if (self) {
        
        // Set the product name
        //_productName = [productName copy];
        [self setProductName:[productName copy]];
        
        // Default starting voltage value
        //_voltage = 120;
        [self setVoltage:120]; // setter method for property
    }
    
    // Return a pointer to the new object
    return self;
}

// override super init to use subclass init, with default values.
- (instancetype)init {
    return [self initWithProductName:@"Unknown"];
}


# pragma mark - Override methods

-(NSString *)description {
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}
@end
