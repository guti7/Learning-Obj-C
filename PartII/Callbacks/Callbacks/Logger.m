//
//  Logger.m
//  Callbacks
//
//  Created by Guti on 6/21/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (NSString *)lastTimeString {
    static NSDateFormatter *dateFormatter = nil;
    
    if (!dateFormatter) { // If it hasn't been initialized
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"Created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)timer {
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

// Called each time a chunk of data arrives
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"received %lu bytes", [data length]);
    
    // Create a mutable data if it does not already exist - lazy instantiation
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    [_incomingData appendData:data];
}

// Called when the last chunk of data has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    
    _incomingData = nil;
    NSLog(@"String has %lu characters", [string length]);
    
    // See the fetched data file in string format
    //NSLog(@"The whole string is %@", string);
}

// Called if the fetch fails
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"Connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}
@end
