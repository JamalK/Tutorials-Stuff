//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Jamal Kharrat on 4/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding

{
float conversionRate;
}
@property float conversionRate;

@end
