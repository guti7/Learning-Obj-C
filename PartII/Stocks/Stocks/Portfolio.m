//
//  Portfolio.m
//  Stocks
//
//  Created by Guti on 6/13/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Portfolio.h"


@implementation Portfolio

// Accessors for stock holdings
- (void)setHoldings:(NSArray *)holdings {
    _holdings = [holdings mutableCopy];
}

- (NSArray *)holdings {
    return [_holdings copy];
}

- (void)addStockHolding:(BNRStockHolding *)holding {
    if (!_holdings) {
        // Create the array
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:holding];
}

- (float)totalValue {
    float sum = 0.0;
    for (BNRStockHolding *holding in _holdings) {
        sum += [holding valueInDollars];
    }
    return sum;
}

// Override description
- (NSString *)description {
    return [NSString stringWithFormat:@"<Portfolio's value: $%.2f>", self.totalValue];
}
@end
