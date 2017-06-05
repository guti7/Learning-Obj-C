//
//  main.m
//  TimeAlive
//
//  Created by Guti on 6/5/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>

// How many seconds have you been alive?
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Initialize a now date
        
        // Initialize a earlier date(birth date)
        
        // Find the time difference in seconds
        
        // double secondsSinceDate = [laterDate timeIntevalSinceDate:earlierDate];
        
        // Create a date object with NSDateComponents and NSCalendar
        // Documentation example
        NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
        dateComponents.day = 5;
        dateComponents.month = 6;
        dateComponents.year = 2017;
        
        // Get an NSDate from NSDateComponents using NSCalendar
        NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
        NSDate *date = [gregorianCalendar dateFromComponents: dateComponents];
        
        NSInteger weekday = [gregorianCalendar component: NSCalendarUnitWeekday fromDate: date];
        NSLog(@"The weekday for June 5th, 2017 is %ld.", weekday);  // 2, which corresponds to Monday
    }
    return 0;
}
