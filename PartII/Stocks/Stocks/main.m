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
        aapl.numberOfShares = 10;
        aapl.purchaseSharePrice = 155.13;
        aapl.currentSharePrice = 148.35;
        aapl.symbol = @"aapl";
        
        BNRStockHolding *tsla = [[BNRStockHolding alloc] init];
        tsla.numberOfShares = 6;
        tsla.purchaseSharePrice = 373.09;
        tsla.currentSharePrice = 355.56;
        tsla.symbol = @"tsla";
        
        BNRStockHolding *ba = [[BNRStockHolding alloc] init];
        ba.numberOfShares = 500; // 88;
        ba.purchaseSharePrice = 2.30; // 190.07;
        ba.currentSharePrice = 4.50; // 189.94;
        ba.symbol = @"ba";
        
        ForeignStockHolding *foreign = [[ForeignStockHolding alloc] init];
        foreign.numberOfShares = 500;
        foreign.purchaseSharePrice = 2.30;
        foreign.currentSharePrice = 4.50;
        foreign.conversionRate = 0.94;
        foreign.symbol = @"foreign";
        
        
        // add stocks to array
        [stocks addObject:aapl];
        //stocks.addObject:aapl; // error
        [stocks addObject:tsla];
        [stocks addObject:ba];
        [stocks addObject:foreign];
        
        
        // Create Stock Holding porfolio
        Portfolio *masterPortfolio = [[Portfolio alloc] init];
        
        masterPortfolio.holdings = stocks;
        
        NSLog(@"Portfolio: %@", masterPortfolio);
        
        // log to console
//        NSLog(@"Stocks in dollars:\n");
//        for (BNRStockHolding *stock in stocks) {
//            NSLog(@"%-8@ $ %7.2f\n", [stock symbol], [stock valueInDollars]);
//        }
        NSLog(@"Holdings in dollars: %@", stocks);
        
        // Test holdings in descending total value.
        NSArray *descendingHoldings = [masterPortfolio descendingValueHoldings];
        NSLog(@"Holdings in decreasing value: %@", descendingHoldings);
        
        // Top three holdings
        NSArray *topThreeHoldings = [masterPortfolio topThreeHoldings];
        NSLog(@"Top three holdings: %@", topThreeHoldings);
        
    }
    return 0;
}
