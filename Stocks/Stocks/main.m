//
//  main.m
//  Stocks
//
//  Created by Max Marze on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        //Create Stock Objects
        StockHolding *stockOne = [[StockHolding alloc] init];
        [stockOne setPurchaseSharePrice:2.30];
        [stockOne setCurrentSharePrice:4.50];
        [stockOne setNumberOfShares:40];
        
        StockHolding *stockTwo = [[StockHolding alloc] init];
        [stockTwo setPurchaseSharePrice:12.19];
        [stockTwo setCurrentSharePrice:10.56];
        [stockTwo setNumberOfShares:90];
        
        StockHolding *stockThree = [[StockHolding alloc] init];
        [stockThree setPurchaseSharePrice:45.10];
        [stockThree setCurrentSharePrice:49.51];
        [stockThree setNumberOfShares:210];
        
        //Create array
        NSMutableArray *stockList = [NSMutableArray array];
        [stockList addObject:stockOne];
        [stockList addObject:stockTwo];
        [stockList addObject:stockThree];
        
        //list array holdings
        for (StockHolding *d in stockList)
        {
            NSLog(@"Here is the Stock Holdings: %@", d);
        }
        
    }
    return 0;
}

