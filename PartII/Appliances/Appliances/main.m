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
        
        Appliance *appliance = [[Appliance alloc] init];
        // Without an implemention of `init`, the class uses the inherited `init` from `NSObject`, which 'zeroes' all instance variables specific to the subclass.
        NSLog(@"one appliance: %@", appliance);
        
        appliance.productName = @"Stove";
        appliance.voltage = 120;
        NSLog(@"one appliance: %@", appliance);
    }
    return 0;
}
