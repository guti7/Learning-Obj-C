//
//  main.m
//  Appliances
//
//  Created by Guti on 6/25/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"
#import "OwnedAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Use defined basic init
        Appliance *fridge = [[Appliance alloc] initWithProductName:@"Refrigerator"];
        NSLog(@"appliance: %@", fridge);
        
        // Using overriden `init`
        Appliance *defaultAppliance = [[Appliance alloc] init];
        // Without an implemention of `init`, the class uses the inherited `init` from `NSObject`, which 'zeroes' all instance variables specific to the subclass.
        NSLog(@"default appliance: %@", defaultAppliance);
        [defaultAppliance setProductName:@"Stove"];
        [defaultAppliance setVoltage:150];
        NSLog(@"Instance properties set for default appliance: %@", defaultAppliance);
        
        // Create an owned appliance
        OwnedAppliance *firstOwnedAppliance = [[OwnedAppliance alloc] initWithProductName:@"Dishwasher" firstOwnerName:@"Guti"];
        NSLog(@"new owned applianace: %@", firstOwnedAppliance);
        
    }
    return 0;
}
