//
//  main.m
//  VowelMovement
//
//  Created by Guti on 6/22/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * Iterates through an array of strings, remove the vowels from each string, and store the "devowelized" strings in a new array.
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // original strings
        NSArray *originalStrings = @[@"Men in Black", @"The Matrix", @"O Brother, Where Art Thou?", @"Godzilla", @"The Guardians of the Galaxy"];
        NSLog(@"Original strings: %@", originalStrings);
        
        // devowelized strings
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        // list of vowels
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
    }
    return 0;
}
