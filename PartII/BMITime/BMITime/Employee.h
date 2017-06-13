//
//  Employee.h
//  BMITime
//
//  Created by Guti on 6/11/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@interface Employee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officialAlarmCode;
@property (nonatomic) NSDate *hireDate;

-(double)yearsOfEmployment;
@end
