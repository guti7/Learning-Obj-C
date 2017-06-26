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

-(instancetype)initWithProductName:(NSString *)productName {
    // Call the `NSObject` init method
    self = [super init];
    
    NSLog(@"init with product name super: %@", self);
    
    // Check for non-nil
    if (self) {
        
        // Set the product name
        //_productName = [productName copy];
        [self setProductName:[productName copy]];
        
        // Default starting voltage value
        //_voltage = 120;
        [self setVoltage:120]; // setter method for property
    }
    
    NSLog(@"init with product name set: %@", self);
    
    // Return a pointer to the new object
    return self;
}



-(NSString *)description {
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}
@end
