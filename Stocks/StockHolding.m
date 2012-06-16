//
//  StockHolding.m
//  Stocks
//
//  Created by Max Marze on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;
- (float)costInDollars
{
    purchaseSharePrice * numberOfShares;
}
- (float)valueInDollars
{
    currentSharePrice * numberOfShares;
}

@end
