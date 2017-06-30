//
//  Observer.m
//  Callbacks
//
//  Created by Guti on 6/29/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Observer.h"

@implementation Observer

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    
    NSLog(@"Observed: %@ of %@ was changed from %@ to %@, dictionary: %@", keyPath, object, oldValue, newValue, change);
}

@end
