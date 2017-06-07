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
        NSDate *tomorrow = [now dateByAddingTimeInterval: oneDayInterval];
        NSDate *yesterday = [now dateByAddingTimeInterval: -oneDayInterval];
        
        // Create an array containing all three NSDate
        NSArray *dateList = @[yesterday, now, tomorrow];  // creating instance with literal syntax(No explicit message send needed).
        /// Instances of `NSArray` are **immutable**.
        
        
        /// Accessing arrays:
        // Access and print two items in the array
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The third date is %@", dateList[2]);
        
        // Item count
        NSLog(@"There are %lu dates.", [dateList count]); // count returns a NSUInteger type
        
        /// If you ask for indeces beyond the array range you will get a **out-of-range error** that will crash the program.
        //NSLog(@"The fourth date is %@", dateList[3]); // crash
        
        
        ///: Iterating over arrays
        // Iterate over the array with traditional `for` loop
        NSLog(@"Iterate over array:\n");
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *date = dateList[i];
            NSLog(@"Here is a date: %@", date);
        }
        
        // Itereation using fast enumeration
        for (NSDate *date in dateList) {
            NSLog(@"Once more, a date: %@", date);
        }
        
        
        /// : Using `NSMutableArray` - same as `NSArray`, except you can add, remove, and reorder pointers.
        
        // create an empty mutable array
        NSMutableArray *specialDates = [NSMutableArray array];
        //NSMutableArray *specialDates = [[NSMutableArray alloc] init]; // same result
        
        // Add some dates to the `specialDates` array
        [specialDates addObject: now]; // adds object to the end of list (append)
        [specialDates addObject: tomorrow];
        
        // Add `yesterday` to the beginning of `specialDates`
        [specialDates insertObject: yesterday atIndex: 0]; // insert object at specified index(shifting remaining items)
        
        // Iterate over `specialDates` mutable array
        for (NSDate *date in specialDates) {
            NSLog(@"Dates in mutable array: %@", date); // Cannot modify array when using fast enumeration
        }
        
        // Remove `now` from existance in `specialDates`
        [specialDates removeObjectAtIndex: 1];
        NSLog(@"`specialDates` is: %@", specialDates);
        NSLog(@"The first date is: %@", specialDates[0]);
        
        
        ///: Old-style array methods
        // Using `arrayWithObjects:` to create instances of `NSArray`
        NSArray *additionalDates = [NSArray arrayWithObjects: tomorrow, now, yesterday, nil];
        // notice the `nil` terminating list, the program might crash if you leave it out (at least giving you some warnings).
        
        // before subscripting method to access items, `objectAtIndex:` was used
        NSLog(@"Which date? This date: %@", [additionalDates objectAtIndex:2]);
        
        ///: Which methods you use to create and access items in an array is up to your coding style, but some benefits over subscripting is readability.
        
    }
    return 0;
}
