//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Guti on 6/25/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance

@property (readonly) NSSet *ownerNames;

- (instancetype)initWithProductName:(NSString *)productName firstOwnerName:(NSString *)ownerName;
- (void)addOwnerName:(NSString *)name;
- (void)removeOwnerName:(NSString *)name;

@end
