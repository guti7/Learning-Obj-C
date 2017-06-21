//
//  main.m
//  Callbacks
//
//  Created by Guti on 6/21/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create instance of `Logger`
        Logger *logger = [[Logger alloc] init];
        
        /// Timers use a target-action mechanism. A timer is created with a a time interval, a target, and an action. After the interval has elapsed, the timer sends the action message to its target.
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval: 2.0 target: logger selector: @selector(updateLastTime:) userInfo: nil repeats: YES]; // flag variable as purpusefully unused
        
        /// The run loop
        /// In an event-driven program, there needs to be an object that does the sitting and waiting for events. In macOS and iOS, this object is an instance of `NSRunLoop`. When an event happens, the run lop causes a 'callback' to occur.
        
        [[NSRunLoop currentRunLoop] run];
        // Never returns. The run loop is waiting for something to happen.
        
    }
    return 0;
}
