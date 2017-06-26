//
//  OwnedAppliance.m
//  Appliances
//
//  Created by Guti on 6/25/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "OwnedAppliance.h"

// Private
@interface OwnedAppliance () {
    NSMutableSet *_ownerNames;
}
@end

@implementation OwnedAppliance

- (instancetype)initWithProductName:(NSString *)productName firstOwnerName:(NSString *)ownerName {
    // Call the superclass initializer
    if (self = [super initWithProductName:productName]) {
        // Create a set to hold owners names
        _ownerNames = [[NSMutableSet alloc] init];
        
        // Is the first owner name non-nil?
        if (ownerName) {
            [_ownerNames addObject:ownerName];
        }
    }
    // Return a pointer to the new object
    return self;
}

@end
