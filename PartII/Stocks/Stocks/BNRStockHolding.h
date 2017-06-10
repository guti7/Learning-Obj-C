//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Guti on 6/10/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

// Represents a purchased stock
@interface BNRStockHolding : NSObject

{
    // instance variables
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

// getters
-(float)purchaseSharePrice;
-(float)currentSharePrice;
-(int)numberOfShares;

// setters
-(void)setPurchaseSharePrice: (float) price;
-(void)setCurrentSharePrice: (float) price;
-(void)setNumberOfShares: (int) count;  //?

// other methods
-(float)costInDollars;
-(float)valueInDollars;

@end
