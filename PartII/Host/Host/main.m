//
//  main.m
//  Host
//
//  Created by Guti on 6/4/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>

///: Write a tool that prints out the name of your computer, using two classes from the Foundation framework: `NSHost` and `NString`.
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Get an instance of `NSHost` - send the `currentHost` message to the `NSHost` class
        NSHost *host = [NSHost currentHost];
        
        // Send the instance of `NSHost` the `localizedName` message.
        // `localizedName` method returns a pointer to an instance of `NString`.
        NSString *hostName = [host localizedName];
        
        // Print it in the console with `NSLog`
        NSLog(@"The coolest host: %@", hostName);
        
    }
    return 0;
}
