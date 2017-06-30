//
//  NSDate+DateConvenience.m
//  DateMonger
//
//  Created by Guti on 6/30/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "NSDate+DateConvenience.h"

@implementation NSDate (DateConvenience)

+ (NSDate *)createDateWithYear:(int)year month:(int)month day:(int)day {
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.year = year;
    components.month = month;
    components.day = day;
    
    NSCalendar *gregorian = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    
    NSDate *date = [gregorian dateFromComponents:components];
    return date;
}
@end
