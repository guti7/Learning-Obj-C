//
//  main.m
//  Constants
//
//  Created by Guti on 6/19/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h> // includes `<CoreFoundation/CoreFoundation.h>` which includes `math.h`

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10, 12));
        
        // `NSLocale`
        NSLocale *here = [NSLocale currentLocale];
        //NSString *currency = [here objectForKey:@"currency"];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSString *currencySymbol = [here objectForKey:NSLocaleCurrencySymbol];
        NSLog(@"Locale: %@, Money is %@, symbol: %@", here, currency, currencySymbol);
    }
    return 0;
    
    /// Preprocessor directives:
    /// Compiling a file in C, C++, or Objective-C code is done in two passes. First, the *preprocessor* runs through the file. The output from the *preprocessor* then goes into the real compiler. Preprocessor directives start with '#'.
    
    /// `#include` vs. `#import`: They do essentially the same thing, the preprocessor reads a file and adds it to its output. You include a header (declarations) file and the compiler uses this to understand the code it is compiling. `#import` signifies the preprocessor to include the file once. `#include` will allow you to include the same file many times.
    
    /// `#define` is a preprocessor directive that tells the compiler to replace 'A' with 'B'. When it's used to do function-like stuff instead of simply substituting a value, you are creating a 'macro'.
    
    /// `enum` helps you define a set of constants. Use  `NS_ENUM()`.
    
    /// `#define` vs. global variables: In some cases, there are performance advantages to using global variables and global variables are easier to work with when you are in the debugger. In general, use global variables and `enum` for constants, instead of `#define`
    
}
