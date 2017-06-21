//
//  main.m
//  ImageFetch
//
//  Created by Guti on 6/21/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString: @"http://www.google.com/images/logos/ps_logo2.png"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        //NSError *error = nil;
        
        //NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        
        NSURLSession *session = [NSURLSession sharedSession];
        
        NSRunLoop * runLoop = [NSRunLoop currentRunLoop];
        
        //__block BOOL completed = NO;
        
        NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data,NSURLResponse *response, NSError *error) {
            //NSLog (@"In completionHandler: %@ error: %@", response, error);
            if (!data) {
                NSLog(@"fetch failed: %@", [error localizedDescription]);
            }
            
            NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
            
            BOOL written = [data writeToFile:@"/tmp/google.png" options:NSDataWritingAtomic error:&error];
            
            if (!written) {
                NSLog(@"Write to file failed: %@", [error localizedDescription]);
            }
            
            //completed = true;
            NSLog(@"Success!");
            
            NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
            NSLog(@"The file read from the disk has %lu bytes.", (unsigned long)[readData length]);
            
            // Get the user's desktop directories
            NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
            
            NSLog(@"Desktops: %@", desktops);
            
            // There is only one desktop
            NSString *desktopPath = desktops[0];
            NSLog(@"User's desktop path: %@", desktopPath);
        }];
        [dataTask resume];
        [runLoop run];
        // TODO: STOP loop
        
        // Get the user's desktop directories
        NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        
        NSLog(@"Desktops: %@", desktops);
    }
    
    return 0;
}
