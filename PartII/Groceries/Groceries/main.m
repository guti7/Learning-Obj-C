//
//  main.m
//  Groceries
//
//  Created by Guti on 6/7/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>

// Create a list for your groceries and share them to the console(and world).
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create mutable array
        NSMutableArray *groceryList = [NSMutableArray array];
        [groceryList addObject:@"1 Watermelon"];
        [groceryList addObject:@"2 Peaches"];
        [groceryList addObject:@"5 Bananas"];
        [groceryList addObject:@"1 Pineapple"];
        [groceryList addObject:@"10 Clementines"];
        
        NSLog(@"The fruits only grocery list:");
        for (NSString *item in groceryList) {
            NSLog(@"%@", item);
        }
    }
    return 0;
}
