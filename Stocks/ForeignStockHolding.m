//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Jamal Kharrat on 4/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "ForeignStockHolding.h"


@implementation ForeignStockHolding
@synthesize conversionRate;

-(float) costInDollars
{
    return numberOfShares*purshaseSharePrice*conversionRate;
}

-(float) ValueInDollars
{
    return numberOfShares*currentSharePrice*conversionRate;
}

@end
