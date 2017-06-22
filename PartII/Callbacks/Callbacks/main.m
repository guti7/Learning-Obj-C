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
        
        // Create a Connection
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
        
        /// Timers use a target-action mechanism. A timer is created with a a time interval, a target, and an action. After the interval has elapsed, the timer sends the action message to its target.
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval: 2.0 target: logger selector: @selector(updateLastTime:) userInfo: nil repeats: YES]; // flag variable as purpusefully unused
        
        /// The run loop
        /// In an event-driven program, there needs to be an object that does the sitting and waiting for events. In macOS and iOS, this object is an instance of `NSRunLoop`. When an event happens, the run lop causes a 'callback' to occur.
        
        [[NSRunLoop currentRunLoop] run];
        // Never returns. The run loop is waiting for something to happen.
        
        /// When sending one callback to one object, Apple uses target-action. When sending an assortment of callbacks to one object, Apple uses a helper object(e.g. delegates and data sources) with a protocol. Then you have the need to send a callback to multiple different objects (Notifications).
        
    }
    return 0;
}
