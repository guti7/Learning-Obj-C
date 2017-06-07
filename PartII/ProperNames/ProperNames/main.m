//
//  main.m
//  ProperNames
//
//  Created by Guti on 6/7/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>

// Finds common proper names that contain two adjacent A's reading from a file.
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Read in a file as one string (no error checking for simplicity)
        NSString *nameString = [NSString stringWithContentsOfFile: @"/usr/share/dict/propernames" encoding: NSUTF8StringEncoding error: NULL];
        
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString: @"\n"];
        
        // Iterate over `names` array
        for (NSString *name in names) {
            
            // Look for the string "aa" in a case-insensitive manner
            NSRange matchRange = [name rangeOfString:@"AA" options: NSCaseInsensitiveSearch];
            
            // Was it found? (the return value is not NSNotFound for the location property)
            if (matchRange.location != NSNotFound) {
                NSLog(@"%@", name);
            }
        }
    }
    return 0;
}
