//
//  main.m
//  TimeAfterTime
//
//  Created by Guti on 6/3/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //NSLog(@"Hello, World!");
        NSDate *now = [NSDate date]; // `now` is a pointer to the location of the newly initialized NSDate instance.
        
        // [NSDate date] is a 'message send' and returns the address to the instance
        
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        
        /// In Objective-C, to execute the code in a method, you send a 'message' to the object or class that has that method.
        /// A message send is surrounded by square brackets and has two parts: The receiver and the selector.
        
        double seconds = [now timeIntervalSince1970];
        NSLog (@"It has been %f seconds since the start of 1970.", seconds);
        
        ///: Class methods vs Instance methods
        /// Typically, class methods create an instance of the class and initialize its intance variables.
        /// Instance methods give you information about or perform an operation on an instance's instance variables.
        
        ///: Sending bad messages
        //double testSeconds = [NSDate timeIntervalSince1970];
        /// The selector should be a name of a NSDate class method.
        //NSDate *testNow = [now date];
        /// NSDate has no instance method whose name matches the date selector
        /// "No visible @interface for `NSDate` declares the selector `date`"
        
        ///: Message with one argument
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        ///: Message with multiple arguments
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [calendar calendarIdentifier]);
        
        //: Get the day of the month - returns a value so use type variables.
        NSUInteger currentDay = [calendar ordinalityOfUnit:NSCalendarUnitDay
                                                    inUnit:NSCalendarUnitMonth
                                                   forDate:now];
        
        NSLog(@"This is day %lu of the month.", currentDay);
        
        ///: Nesting Message Sends
        /// Message sens can be 'nested'.
        // Find the number of seconds since the start of 1970
        double secs = [[NSDate date] timeIntervalSince1970];
        NSLog(@"It has been %f secs since 1970", secs);
        
        
    }
    return 0;
}
