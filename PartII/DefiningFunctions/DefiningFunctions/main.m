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

NSString *returnString(NSString *string) {
    return [NSString stringWithString:string];
}

NSMutableArray *returnArray(NSString *string) {
    NSMutableArray *array = [NSMutableArray array];
    [array addObject: @"first string"];
    
    // test `returnString`
    NSString *oneString = returnString(string);
    [array addObject: oneString];
    return array;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = returnArray(@"the passed String");
        NSLog(@"%@", array);
    }
    return 0;
}
