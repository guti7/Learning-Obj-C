//
//  Logger.h
//  Callbacks
//
//  Created by Guti on 6/21/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)timer; // Action methods always take one argument - the object(target) that is sending the message(action).

@end
