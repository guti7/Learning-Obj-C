//
//  BNRPerson.h
//  BMITime
//
//  Created by Guti on 6/9/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject  {
    // BNRPerson has two instance variables using the convention of underscoe(_)
    float _heightInMeters;
    int _weigthInKilos;
}

// BNRPerson has methods to read an set its instance variables
- (float)heightInMeters;
- (void)setHeightInMeters:(float)height;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)weight;

// BNRPerson has a method that calculates the Body Mass Index
-(float)bodyMassIndex;

@end
