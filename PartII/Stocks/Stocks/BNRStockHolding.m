//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Guti on 6/10/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

//// getters - provided by the compiler
//-(float)purchaseSharePrice {
//    return _purchaseSharePrice;
//}
//
//-(float)currentSharePrice {
//    return _currentSharePrice;
//}
//
//-(int)numberOfShares {
//    return _numberOfShares;
//}
//
//// setters - provider by the compiler
//-(void)setPurchaseSharePrice:(float)price {
//    _purchaseSharePrice = price;
//}
//
//-(void)setCurrentSharePrice:(float)price {
//    _currentSharePrice = price;
//}
//
//-(void)setNumberOfShares:(int)count {
//    _numberOfShares = count;
//}

// other methods
-(float)costInDollars {
    // Shorthand 'dot' notation for calling accessors
    return self.purchaseSharePrice * self.numberOfShares;
    //return [self purchaseSharePrice] * [self numberOfShares];
}

-(float)valueInDollars {
    // Shorthand 'dot' notation for calling accessors
    return self.currentSharePrice * self.numberOfShares;
    //return [self currentSharePrice] * [self numberOfShares];
}



@end
