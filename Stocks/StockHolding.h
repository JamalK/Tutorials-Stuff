//
//  StockHolding.h
//  Stocks
//
//  Created by Jamal Kharrat on 4/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject


{
    float purshaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}
@property float purshaseSharePrice,CurrentSharePrice;
@property int numberOfShares;

-(float)costInDollars;
-(float)ValueInDollars;




@end
