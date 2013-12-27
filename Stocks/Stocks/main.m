//
//  main.m
//  Stocks
//
//  Created by Jamal Kharrat on 4/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        StockHolding *AAPL = [[StockHolding alloc]init];
        [AAPL setPurshaseSharePrice:400];
        [AAPL setNumberOfShares:2];
        [AAPL setCurrentSharePrice:300];
        
        StockHolding *GOOG= [[StockHolding alloc]init];
        [GOOG setCurrentSharePrice:800];
        [GOOG setNumberOfShares:3];
        [GOOG setPurshaseSharePrice:600];
        
        StockHolding *MSFT = [[StockHolding alloc]init];
        [MSFT setNumberOfShares:2];
        [MSFT setCurrentSharePrice:600];
        [MSFT setPurshaseSharePrice:400];
        
        ForeignStockHolding *JJJJ = [[ForeignStockHolding alloc]init];
        [JJJJ setConversionRate:5];
        [JJJJ setNumberOfShares:3];
        [JJJJ setCurrentSharePrice:600];
        [JJJJ setPurshaseSharePrice:200];
        
        
        NSMutableArray *stockArray = [[NSMutableArray alloc]init];
        
        [stockArray addObject:MSFT];
        [stockArray addObject:GOOG];
        [stockArray addObject:AAPL];
        [stockArray addObject:JJJJ];
                for(StockHolding *k in stockArray)
        {
            NSLog(@"This stock has the Value of %f in Dollars  and has the costs of %f ",[k ValueInDollars],[k costInDollars]);
        }
        
        
    }
    return 0;
}

