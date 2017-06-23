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
        
        /// Compose a block that makes a copy of a given string, removes the vowels from the copied string, and then adds this string to `devowelizedStrings`
        // Declare a block variable
        void (^devowelizer)(id, NSUInteger, BOOL *); // just like a function declaration - the type is 'a block that takes an object, an integer, and a BOOL pointer, and returns nothing.'
        
        // Compose block of the declared type and assign it to the new variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurrances of each with an empty string
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        }; // End of block assignment
        
        // Send `enumerateObjectUsingBlock:` message to `orirginalStrings` to iterate over the array with the `devowelizer` block
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"Strings with no vowels: %@", devowelizedStrings);
    }
    return 0;
}
