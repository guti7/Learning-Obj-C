//
//  main.m
//  Appliances
//
//  Created by Guti on 6/25/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Use defined basic init
        Appliance *fridge = [[Appliance alloc] initWithProductName:@"Refrigerator"];
        NSLog(@"appliance: %@", fridge);
        
        // Using super init inherited from `NSObject`
        Appliance *appliance = [[Appliance alloc] init];
        // Without an implemention of `init`, the class uses the inherited `init` from `NSObject`, which 'zeroes' all instance variables specific to the subclass.
        //NSLog(@"another appliance: %@", appliance);
        
//        appliance.productName = @"Stove";
        [appliance setProductName:@"Stove"];
//        appliance.voltage = 150;
        [appliance setVoltage:150];
        NSLog(@"another appliance: %@", appliance);
    }
    return 0;
}
