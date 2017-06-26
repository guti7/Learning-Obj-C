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
        
        // What happens when we create an instance using the inherited `initWithProductName:` from `Appliance`?
        // The instance gets created with a name but it has a non-initialized set of owners, which is incorrect. To solve this you need to override the inherited method `initWithProductName:` from `Appliance`
        OwnedAppliance *unownedDryer = [[OwnedAppliance alloc] initWithProductName:@"Tumble Dryer"];
        NSLog(@"another owned appliance: %@", unownedDryer);
        
        // What happens to the `init` inherited from `Appliance`?
        OwnedAppliance *unnamedAndUnknownAppliance = [[OwnedAppliance alloc] init];
        NSLog(@"another owned appliance: %@", unnamedAndUnknownAppliance);
        // once you set up a proper chain of initializers the `init` will call the methods within it's appropriate class(`self`).
        
        /// The designated initializer acts as a funnel-point. A class has only one designated initializer method. If the class has other initializers, then the implementation of those initializers must call (directly or indirectly) the designated initializer.
        
    }
    return 0;
}
