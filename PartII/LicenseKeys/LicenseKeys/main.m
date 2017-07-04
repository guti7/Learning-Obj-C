//
//  main.m
//  LicenseKeys
//
//  Created by Guti on 7/4/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * Takes a buffer of bytes and returns a string that represents those bytes.
 * Takes a string and returns the buffer of bytes it represents.
 * Objectives:
 * 1) Add the methods to NSData as a category
 * 2) import the category
 
 Expected output:
 “In Data = <53ec306f 955c6668>
 Got string "4 Puma 9 Jeep 3 Sony 5 Fuji 6 Tivo 4 Vogue 5 Nike 5 Honda"
 Out data: <53ec306f 955c6668>
 Expected error: Unable to parse
 Program ended with exit code: 0"
 
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Test the methods
        // Generate 8 bytes of random data
        srandom((unsigned int)time(NULL));
        int64_t randomBytes = (random() << 32) | random();
        
        // Pack it in an `NSData`
        NSData *inData = [NSData dataWithBytes:&randomBytes length:sizeof(int64_t)];
        NSLog(@"In data = %@", inData);
        
        // Convert to a speakable string
//        NSString *speakable = [inData encodeAsSpeakableString];
//        NSLog(@"Got string \"%@\"", speakable);
        
        // Convert back to `NSData`
//        NSError *error;
//        NSData *outData = [NSData dataWithSpeakableString:speakable error:&error];
//        if (!outData) {
//            NSLog(@"Unexpected error: %@", [error localizedDescription]);
//            return -1;
//        }
//        NSLog(@"Out data: %@", outData);
        
        // `outData` better be the dame as `inData`
//        if (![outData isEqual:inData]) {
//            NSLog(@"Data coming out is not the same as what went in.");
//            return -1;
//        }
        
        // Test a misspelling ("Teevo" not "Tivo")
//        speakable = @"2 Jeep 3 Halo 7 Teevo 2 Pepsi 2 Volvo";
//        outData = [NSData dataWithSpeakableString:speakable error:&error];
//        if (!outData) {
//            NSLog(@"Expected Error: %@", [error localizedDescription]);
//        } else {
//            NSLog(@"Missed bad string.");
//            return -1;
        }
    
    return 0;
}
