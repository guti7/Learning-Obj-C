//
//  main.m
//  Strings
//
//  Created by Guti on 6/6/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>

/// `NSString` holds character strings. Useful to for text manipulation in programs.
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an instance of `NString`
        NSString *lament = @"Why me!?";
        
        // Using unicode, in addition to ASCII. Makes it easier to deal with text from many languages.
        NSString *slogan = @"I \u2661 Seattle!";
        
        // Log to console
        NSLog(@"%@", slogan);
        
        /// Creating strings dynamically is a common task. You will need to create a string whose contents will not be known until the program is running.
        
        // Use the `stringWithFormat` method of `NSString`
        NSDate *now = [NSDate date];
        NSString *dateString = [NSString stringWithFormat: @"The date is %@", now];
        NSLog(@"%@", dateString);
        
        // Finding a substring match in a string
        NSString *namesString = @"Spiderman and Venom";
        NSString *name = @"Spider";
        NSRange match = [namesString rangeOfString: name];
        
        if (match.location == NSNotFound) {
            NSLog(@"\"Spidey hates it when I get the drop on him!\"");
            // perform other operations...
        } else {
            NSLog(@"\"My spidey sense is tingling!\"");
            // perform other operations...
        }
        
        // Finding a substring case-insensitive
        NSString *venom = @"venom";
        NSRange foundVenom = [namesString rangeOfString: venom options: NSCaseInsensitiveSearch];
        
        if (foundVenom.location == NSNotFound) {
            NSLog(@"No crimes commited today.");
        } else {
            NSLog(@"\"Let the gamessss begin\"");
        }
        
        // Get the substring with a range
        NSString *substring = [namesString substringWithRange: foundVenom];
        NSLog(@"The substring is: %@", substring);
        
    }
    return 0;
}
