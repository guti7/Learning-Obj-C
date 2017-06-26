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
    
    // Check for non-nil from super init
    if (self = [super init]) {
        
        // Initialize instance variables
        _productName = [productName copy];
        _voltage = 120;
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
