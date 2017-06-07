//
//  main.m
//  DefiningFunctions
//
//  Created by Guti on 6/7/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>
int * myFunction() {
    static int var = 8;
    return &var;
}

NSMutableArray *returnArray() {
    NSMutableArray *array = [NSMutableArray array];
    [array addObject: @"first object"];
    return array;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = returnArray();
        NSLog(@"%@", array);
    }
    return 0;
}
