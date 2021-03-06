//
//  main.m
//  Stringz
//
//  Created by Guti on 6/20/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Guti is ready!\n"];
        }
        
        // Write a string to a file
        
        // Declare a pointer to an `NSError` object, but do no instantiate it.
        // The `NSError` instance will only be created if there is, in fact, an error.
        NSError *error;
        
        // Pass the `NSError` pointer by reference
        BOOL success = [str writeToFile:@"/tmpcool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error]; // Passing the address(&error) of pointer(error) - passing the address of another address(which may become the address of a pointer variable
        // Test the returned `BOOL`, and query the `NSError` if the write failed
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
            // Other methods for `NSError`
            NSLog(@"failure: %@, %@, %@, %@, %@, %@", [error localizedFailureReason], [error domain], [error localizedRecoverySuggestion], [error superclass], [error localizedRecoveryOptions], [error userInfo]);
        }
        NSLog(@"%p: %@, %p", &error, error, error);
        
        
        // Read a file with `NSString`
        NSString *stringFromFile = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf" encoding:NSASCIIStringEncoding error:&error];
        
        if(!stringFromFile) { // if string is not initilized (`stringFromFile` is `nil`)
            NSLog(@"Read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this: %@", stringFromFile);
        }
        
    }
    return 0;
}
