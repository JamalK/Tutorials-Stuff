//
//  main.m
//  RandomPosessions
//
//  Created by Jamal Kharrat on 4/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"




int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *itemsList = [[NSMutableArray alloc]init];
        
        for (int i=0; i<10; i++)
        {
            BNRItem *p = [BNRItem randomItem];
            [itemsList addObject:p];
        }
//        for (int i=0; i<[itemsList count]; i++)
//        {
//            NSLog(@"%@",[itemsList objectAtIndex:i]);
//        }
      
        
        for (BNRItem *item in itemsList)
            NSLog(@" %@",item);
       
//        NSLog(@"The Factorial of 3 is %d",factorial(4));
        itemsList=nil;
    }
    return 0;
}

