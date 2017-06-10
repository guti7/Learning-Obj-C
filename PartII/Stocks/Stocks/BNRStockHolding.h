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

//{
//    // instance variables
//    float _purchaseSharePrice;
//    float _currentSharePrice;
//    int _numberOfShares;
//}

// Use `@property` directive
@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;

/// Property attributes:
/// Properties are either `atomic` or `nonatomic` and their difference is related to their behavior in a multithreading environment. Use `atomic` to help prevent corruption of data in a multithreading environment. It does not necessarily mean that the code will be safe.
/// Multi - use `atomic` - default bevahior
/// single - use `nonatomic`

/// 'Read-only' properties(as constants) - a property whose value can be read but not changed once it has been set. The compiler creates only a getter accessor method for this attribute. In contrast, there is `readwrite` properties, which is the default behavior.


//// getters - no longer needed to be declared explicitly
//-(float)purchaseSharePrice;
//-(float)currentSharePrice;
//-(int)numberOfShares;
//
//// setters - no longer needed to be declared explicitly
//-(void)setPurchaseSharePrice: (float) price;
//-(void)setCurrentSharePrice: (float) price;
//-(void)setNumberOfShares: (int) count;  //?

// Methods
-(float)costInDollars;
-(float)valueInDollars;

@end
