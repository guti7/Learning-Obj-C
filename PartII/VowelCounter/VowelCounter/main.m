//
//  main.m
//  VowelCounter
//
//  Created by Guti on 6/30/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowelCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *hello = [NSString stringWithFormat:@"Hello World!"];
        NSLog(@"%@ has %d vowels.", hello, [hello vowelCount]);
    }
    return 0;
}
