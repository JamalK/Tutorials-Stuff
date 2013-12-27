//
//  StockHolding.m
//  Stocks
//
//  Created by Jamal Kharrat on 4/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "StockHolding.h"



@implementation StockHolding

@synthesize CurrentSharePrice,numberOfShares,purshaseSharePrice;

-(float) costInDollars
{
    return purshaseSharePrice* numberOfShares;
}

-(float) ValueInDollars
{
    return CurrentSharePrice*numberOfShares;
}





@end
