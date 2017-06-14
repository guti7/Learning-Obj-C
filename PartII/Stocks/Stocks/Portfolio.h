//
//  Portfolio.h
//  Stocks
//
//  Created by Guti on 6/13/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
//@class BNRStockHolding;

@interface Portfolio : NSObject

@property (nonatomic, copy) NSArray *holdings;

- (float)totalValue;
- (void)addStockHolding:(BNRStockHolding *)holding;
- (BOOL)removeStockHolding:(BNRStockHolding *)holding;

@end
