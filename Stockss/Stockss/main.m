//
//  main.m
//  Stockss
//
//  Created by Jamal Kharrat on 5/24/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *stocks = [[NSMutableArray alloc]init];
        
        NSMutableDictionary *stock ;
        BOOL isOld =NO;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"MSFT" forKey:@"Stocks"];
        [stock setObject:[NSNumber numberWithInt:600] forKey:@"Value"];
        [stock setObject:[NSDate dateWithString:@"2001-03-24 10:45:32 +0600"] forKey:@"Date"];
        [stock setObject:[NSNumber numberWithBool:isOld] forKey:@"Old"];
        [stock setObject:[NSNumber numberWithFloat:43498309440] forKey:@"Random"];
        [stock setObject:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://finance.yahoo.com/q/h?s=msft"]] forKey:@"News"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocksss.plist" atomically:YES];
        
        
        
        
    }
    return 0;
}

