//
//  main.m
//  YoString
//
//  Created by Guti on 7/1/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char x = 0x21; // use ASCII as literals wrapped in single quotes - '!'
        while (x <= 0x7e) { // '~'
            printf("%d = 0x%x is %c\n", x, x, x);
            x++;
        }
    }
    return 0;
}
