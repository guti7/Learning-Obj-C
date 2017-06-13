//
//  main.m
//  Stocks
//
//  Created by Guti on 6/10/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRStockHolding.h"
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // list of stocks
        NSMutableArray *stocks = [NSMutableArray array]; // [[NSMutableArray alloc] init];
        
        // stocks to add
        BNRStockHolding *aapl = [[BNRStockHolding alloc] init];
        //[aapl setNumberOfShares:100];
        //[aapl setPurchaseSharePrice:155.13];
        //[aapl setCurrentSharePrice:148.35];
        
        // Shorthand 'dot' notation for calling accessors
        aapl.numberOfShares = 100;
        aapl.purchaseSharePrice = 155.13;
        aapl.currentSharePrice = 148.35;
        
        BNRStockHolding *tsla = [[BNRStockHolding alloc] init];
        tsla.numberOfShares = 250;
        tsla.purchaseSharePrice = 373.09;
        tsla.currentSharePrice = 355.56;
        
        BNRStockHolding *ba = [[BNRStockHolding alloc] init];
        ba.numberOfShares = 40; // 88;
        ba.purchaseSharePrice = 2.30; // 190.07;
        ba.currentSharePrice = 4.50; // 189.94;
        
        ForeignStockHolding *foreign = [[ForeignStockHolding alloc] init];
        foreign.numberOfShares = 40;
        foreign.purchaseSharePrice = 2.30;
        foreign.currentSharePrice = 4.50;
        foreign.conversionRate = 0.94;
        
        
        // add stocks to array
        [stocks addObject:aapl];
        //stocks.addObject:aapl; // error
        [stocks addObject:tsla];
        [stocks addObject:ba];
        [stocks addObject:foreign];
        
        // log to console
        NSLog(@"Your current stocks' values in dollars:\n");
        for (BNRStockHolding *stock in stocks) {
            NSLog(@"%.2f\n", [stock valueInDollars]);
        }
        
        // Create Stock Holding porfolio
        Portfolio *masterPortfolio = [[Portfolio alloc] init];
        
        masterPortfolio.holdings = stocks;
        
        NSLog(@"Portfolio: %@", masterPortfolio);
        
    }
    return 0;
}
