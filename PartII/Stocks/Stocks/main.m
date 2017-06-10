//
//  main.m
//  Stocks
//
//  Created by Guti on 6/10/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // list of stocks
        NSMutableArray *stocks = [NSMutableArray array]; // [[NSMutableArray alloc] init];
        
        // stocks to add
        BNRStockHolding *aapl = [[BNRStockHolding alloc] init];
        [aapl setNumberOfShares:100];
        [aapl setPurchaseSharePrice:155.13];
        [aapl setCurrentSharePrice:148.35];
        
        BNRStockHolding *tsla = [[BNRStockHolding alloc] init];
        [tsla setNumberOfShares:250];
        [tsla setPurchaseSharePrice:373.09];
        [tsla setCurrentSharePrice:355.56];
        
        BNRStockHolding *ba = [[BNRStockHolding alloc] init];
        [ba setNumberOfShares:88];
        [ba setPurchaseSharePrice:190.07];
        [ba setCurrentSharePrice:189.94];
        
        // add to array
        [stocks addObject:aapl];
        [stocks addObject:tsla];
        [stocks addObject:ba];
        
        // log to console
        NSLog(@"Your current stocks' values in dollars:\n");
        for (BNRStockHolding *stock in stocks) {
            NSLog(@"%.2f\n", [stock valueInDollars]);
        }
    }
    return 0;
}
