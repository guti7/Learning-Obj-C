//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Guti on 6/12/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

- (float)costInDollars {
    return super.costInDollars * self.conversionRate;
}

- (float)valueInDollars {
    return super.valueInDollars * self.conversionRate;
}

@end
