//
//  main.m
//  DateMonger
//
//  Created by Guti on 6/30/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+DateConvenience.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *date = [NSDate createDateWithYear:2020 month:8 day:10];
        NSLog(@"current date: %@", date);
        
    }
    return 0;
}
