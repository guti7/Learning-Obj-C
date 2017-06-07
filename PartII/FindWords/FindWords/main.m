//
//  main.m
//  FindWords
//
//  Created by Guti on 6/7/17.
//  Copyright © 2017 Piel De Jaguar. All rights reserved.
//

#import <Foundation/Foundation.h>

// First Iteration:

// Finds common proper names that are also regular words; words present in the proper names list that are also present(lowercase) in the regular words list using the built-in dictionary system files 'propernames' and 'words'.

NSArray *getWordsArrayFromFilepath(NSString *path) {
    
    // Get one string from file
    //NSString *fileString = getStringFromFilePath(path);
    NSString *fileString = [NSString stringWithContentsOfFile: path encoding: NSUTF8StringEncoding error: NULL];
    
    // Create array of words
    NSArray *words = [fileString componentsSeparatedByString: @"\n"];
    
    // return
    return words;
}

NSString *getStringFromFilePath(NSString *path) {
    NSString *fileString = [NSString stringWithContentsOfFile: path encoding: NSUTF8StringEncoding error: NULL];
    return fileString;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *properNames = getWordsArrayFromFilepath(@"/usr/share/dict/propernames");
        
        NSArray *words = getWordsArrayFromFilepath(@"/usr/share/dict/words");
        
        NSLog(@"list count: names = %lu, words = %lu\n", [properNames count], [words count]); //properNames);
    }
    return 0;
}
