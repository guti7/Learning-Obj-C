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
        
        [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        NSLog(@"done writing /tmp/cool.txt");
    }
    return 0;
}
