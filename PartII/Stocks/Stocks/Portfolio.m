//
//  Portfolio.m
//  Stocks
//
//  Created by Guti on 6/13/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "Portfolio.h"

// Class extension
@interface Portfolio ()

{
    NSMutableArray *_holdings;
}

@end


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

- (BOOL)removeStockHolding:(BNRStockHolding *)holding {
    if (!_holdings) {
        return false;
    }
    
    // look for stock in holdings
    for (BNRStockHolding *currentStock in _holdings) {
        if (currentStock.symbol == holding.symbol) {
            [_holdings removeObject:currentStock];
            return true;
        }
    }
    return false;
    
}

- (float)totalValue {
    float sum = 0.0;
    for (BNRStockHolding *holding in _holdings) {
        sum += [holding valueInDollars];
    }
    return sum;
}

- (NSArray *)descendingValueHoldings {
    // Sort the holdings into a new array
    NSSortDescriptor *currentValueDesc = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    NSArray *sortedByCurrentValue = [_holdings sortedArrayUsingDescriptors:@[currentValueDesc]];
    
    // Get top three from array
    return sortedByCurrentValue;
}

// Override description
- (NSString *)description {
    return [NSString stringWithFormat:@"<Total value: $%.2f>", self.totalValue];
}

@end
