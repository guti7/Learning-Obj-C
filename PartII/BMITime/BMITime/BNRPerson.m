//
//  BNRPerson.m
//  BMITime
//
//  Created by Guti on 6/9/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (int)weightInKilos {
    return _weigthInKilos;
}

- (float)heightInMeters {
    return _heightInMeters;
}

- (void)setWeightInKilos:(int)weight {
    _weigthInKilos = weight;
}

- (void)setHeightInMeters:(float)height {
    _heightInMeters = height;
}

- (float)bodyMassIndex {
    //return _weigthInKilos / (_heightInMeters * _heightInMeters);
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

- (void)addYourselfToArray:(NSMutableArray *)array {
    [array addObject:self];
}

@end
