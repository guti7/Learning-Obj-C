//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Guti on 6/10/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

// getters
-(float)purchaseSharePrice {
    return _purchaseSharePrice;
}

-(float)currentSharePrice {
    return _currentSharePrice;
}

-(int)numberOfShares {
    return _numberOfShares;
}

// setters
-(void)setPurchaseSharePrice:(float)price {
    _purchaseSharePrice = price;
}

-(void)setCurrentSharePrice:(float)price {
    _currentSharePrice = price;
}

-(void)setNumberOfShares:(int)count {
    _numberOfShares = count;
}

// other methods
-(float)costInDollars {
    return [self purchaseSharePrice] * [self numberOfShares];
}

-(float)valueInDollars {
    return [self currentSharePrice] * [self numberOfShares];
}

@end
