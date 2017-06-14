//
//  Employee.h
//  BMITime
//
//  Created by Guti on 6/11/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class Asset; // similar to #import but makes processing of this file faster.

@interface Employee : BNRPerson

// Instance properties
@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officialAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets; // LImit the access to implementer

// Methods
- (double)yearsOfEmployment;

// Asset manipulation
- (void)addAsset:(Asset *)asset;
- (BOOL)removeAsset:(Asset *)asset;
- (unsigned int)valueOfAssets;

@end
