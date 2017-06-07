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
        NSArray *dateList = @[yesterday, now, tomorrow];  // creating instance with literal syntax(No explicit message send needed).
        /// Instances of `NSArray` are *immutable*.
        
        /// Accessing arrays:
        // Access and print two items in the array
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The third date is %@", dateList[2]);
        
        // Item count
        NSLog(@"There are %lu dates.", [dateList count]); // count returns a NSUInteger type
        
        /// If you ask for indeces beyond the array range you will get a **out-of-range error** that will crash the program.
        //NSLog(@"The fourth date is %@", dateList[3]); // crash
    }
    return 0;
}
