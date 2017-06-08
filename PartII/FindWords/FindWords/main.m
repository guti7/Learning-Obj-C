//
//  main.m
//  FindWords
//
//  Created by Guti on 6/7/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>

// First Iteration
// 2nd Iteration: add helper functions

// Finds common proper names that are also regular words; words present in the proper names list that are also present(lowercase) in the regular words list using the built-in dictionary system files 'propernames' and 'words'.

NSString *stringFromFilePath(NSString *path) {
    NSString *fileString = [NSString stringWithContentsOfFile: path encoding: NSUTF8StringEncoding error: NULL];
    return fileString;
    //return [NSString stringWithContentsOfFile: path encoding: NSUTF8StringEncoding error: NULL];
}

NSArray *wordsArrayFromFilepath(NSString *path) {
    
    // Get one string from file
    NSString *fileString = stringFromFilePath(path);
    
    // Create array of words
    NSArray *words = [fileString componentsSeparatedByString: @"\n"];
    
    // return
    return words;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // file path variables
        NSString *properNamesPath = @"/usr/share/dict/propernames";
        NSString *wordsFilePath = @"/usr/share/dict/words";
        
        // proper names list
        NSArray *properNames = wordsArrayFromFilepath(properNamesPath);
        
        // words list
        NSArray *words = wordsArrayFromFilepath(wordsFilePath);
        
        // Display count for `properNames` and `words`
        NSLog(@"list count: names = %lu, words = %lu\n", [properNames count], [words count]);
    }
    return 0;
}
