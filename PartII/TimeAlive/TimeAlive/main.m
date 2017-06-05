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
        
        // MARK: Documentation Example 1
        NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
        dateComponents.day = 5;
        dateComponents.month = 6;
        dateComponents.year = 2017;
        
        // Get an NSDate from NSDateComponents using NSCalendar
        NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
        NSDate *date = [gregorianCalendar dateFromComponents: dateComponents];
        
        NSInteger weekday = [gregorianCalendar component: NSCalendarUnitWeekday fromDate: date];
        NSLog(@"The weekday for June 5th, 2017 is %ld.", weekday);  // 2, which corresponds to Monday
        
        // MARK: Example 2
        NSDateComponents *bestDateComps = [[NSDateComponents alloc] init];
        [bestDateComps setYear: 2017];
        [bestDateComps setMonth: 6];
        [bestDateComps setDay: 5];
        [bestDateComps setHour: 10];
        [bestDateComps setMinute: 0];
        [bestDateComps setSecond:0];
        
        NSCalendar *gregorianCal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDate *bestDateWWDC2017 = [gregorianCal dateFromComponents: bestDateComps];
        NSLog(@"The best date of the year is %@", bestDateWWDC2017);
        
        
        // MARK: Final example
        
        // Create a date object with NSDateComponents and NSCalendar
        NSDateComponents *dateOfBirthComponents = [[NSDateComponents alloc] init];
        [dateOfBirthComponents setYear: 1960];
        [dateOfBirthComponents setMonth: 11];
        [dateOfBirthComponents setDay: 1];
        
        // Initialize a earlier date(birth date)
        NSDate *birthdate = [gregorianCal dateFromComponents:dateOfBirthComponents];
        
        // Initialize a now date
        NSDate *now = [[NSDate alloc] init];
        
        // Find the time difference in seconds
        double secondsSinceBirth = [now timeIntervalSinceDate: birthdate];
        
        NSLog(@"birth day: %@, today: %@, seconds since then: %f", birthdate, now, secondsSinceBirth);
        
    }
    return 0;
}
