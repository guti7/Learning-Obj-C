//
//  main.m
//  VowelMovement
//
//  Created by Guti on 6/22/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

// Block syntax can be made clearer by using a `typedef`.
typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *); // defining a new type

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
        
        // Pass in an anonymous block as the argument
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop) {
            NSRange yRange = [string rangeOfString:@"Y" options:NSCaseInsensitiveSearch];
            
            // Locate a 'y'
            if (yRange.location != NSNotFound) {
                *stop = YES; // stop further iterations
                return; // exit current iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurrances of each with an empty string
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        }];
        
        NSLog(@"Strings with no vowels: %@", devowelizedStrings);
        
 /********************************************************************************/
        // Using blocks
        // Declare a block variable
        //void (^devowelizer)(id, NSUInteger, BOOL *);
        // just like a function declaration - the type is 'a block that takes an object, an integer, and a BOOL pointer, and returns nothing.'
        //ArrayEnumerationBlock devowelizer;
        
        
        // Compose block of the declared type and assign it to the new variable
        //        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
        //
        //            NSRange yRange = [string rangeOfString:@"Y" options:NSCaseInsensitiveSearch];
        //
        //            // Locate a 'y'
        //            if (yRange.location != NSNotFound) {
        //                *stop = YES; // stop further iterations
        //                return; // exit current iteration
        //            }
        //
        //            NSMutableString *newString = [NSMutableString stringWithString:string];
        //
        //            // Iterate over the array of vowels, replacing occurrances of each with an empty string
        //            for (NSString *s in vowels) {
        //                NSRange fullRange = NSMakeRange(0, [newString length]);
        //                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
        //            }
        //
        //            [devowelizedStrings addObject:newString];
        //        }; // End of block assignment
        
        // Send `enumerateObjectUsingBlock:` message to `orirginalStrings` to iterate over the array with the `devowelizer` block
        //        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        
    }
    return 0;
}
