//
//  main.c
//  TimeAndDate
//
//  Created by Guti on 6/3/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#include <stdio.h>
#include <time.h>

// Tells you what the date(format: 8-1-2042) will be in 10 million seconds.
int main(int argc, const char * argv[]) {
    
    long secondsSince1970 = time(NULL);
    struct tm futureTime;
    long additionalTime = 10000000; // 10 million sec
    long time = secondsSince1970 + additionalTime;
    
    localtime_r(&time, &futureTime);
    
    printf("The future date is: %d-%d-%d\n", futureTime.tm_mon + 1, futureTime.tm_mday, futureTime.tm_year + 1900);
    
    
    return 0;
}
