//
//  main.m
//  DateList
//
//  Created by Guti on 6/7/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>

///: `NSArray` Introduction - `NSArray` holds a list of pointers to other objects.

// Create an array that holds a list of pointers to `NSDate` objects.
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Dates setup
        NSTimeInterval oneDayInterval = 24.0 * 60.0 * 60.0;
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:oneDayInterval];
        NSDate *yesterday = [now dateByAddingTimeInterval: -oneDayInterval];
        
        // Create an array containing all three NSDate
        NSArray *dateList = @[now, tomorrow, yesterday];  // creating instance with literal syntax(No explicit message send needed).
        
        /// Instances of `NSArray` are *immutable*.
        
        
    }
    return 0;
}
