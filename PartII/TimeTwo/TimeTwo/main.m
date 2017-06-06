//
//  main.m
//  TimeTwo
//
//  Created by Guti on 6/6/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <unistd.h>

///: Objects and Memory: Learn about the life of objects on the heap and how heap memory is managed.
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Declare an variable that points to an instance of NSDate
        NSDate *currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime); // value is 0x0
        // No objects yet created on the heap.
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        // NSDate object now exists on the heap.
        
        sleep(2);
        
        // Declare a second pointer to store the original date's address
        NSDate *startTime = currentTime;
        
        // A new NSDate object
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %p", currentTime);
        NSLog(@"The address of the original object is %p", startTime);
        
        /// If you lose your only pointer to an object, then you can no longer access it - even if it continues to exist on the heap.
        
        /// It is essential that any objects that are no longer necessary are destroyed so that their memory ca be reclaimed and reused.
        
        // When you are done with an object, you can opt to set it to `nil`
        currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
        
        /// ARC (Automatic Reference Counting) takes care of memory for objects.
        
        /// How to decrease the reference count: point to another address, point reference to nil, or when the reference pointer itself is destroyed.
        
        
    }
    return 0;
}
