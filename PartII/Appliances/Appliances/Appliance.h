//
//  Appliance.h
//  Appliances
//
//  Created by Guti on 6/25/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject

@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;

-(instancetype)initWithProductName:(NSString *)productName;

@end
