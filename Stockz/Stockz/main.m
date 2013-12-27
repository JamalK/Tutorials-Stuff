//
//  main.m
//  Stockz
//
//  Created by Jamal Kharrat on 5/24/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc]init];
        
        NSMutableDictionary *stock;
        
        stock=[NSMutableDictionary dictionary];
        
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"Shares"];
        [stocks addObject:stock];
        
        
        stock=[NSMutableDictionary dictionary];
        
        
  
        
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:150] forKey:@"Shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        BOOL success = [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        if (success)
            NSLog(@"Succeded");
        else
            NSLog(@"!");
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        for(NSDictionary *d in stockList)
        {
            NSLog(@"I have %@ shares of %@",[d objectForKey:@"Shares"],[d objectForKey:@"symbol"]);
        }
        
        
    }
    return 0;
}

