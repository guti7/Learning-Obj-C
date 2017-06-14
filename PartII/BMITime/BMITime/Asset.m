//
//  Asset.m
//  BMITime
//
//  Created by Guti on 6/13/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Asset.h"

@implementation Asset

// Override `dealloc`
//- (void)dealloc {
//    NSLog(@"deallocating %@", self); // will send message [self description]
//}

// Override `description`
- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

@end
