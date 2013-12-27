//
//  main.m
//  NSArray
//
//  Created by Jamal Kharrat on 4/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//    NSString *Item1 = @"shampoo";
//    NSString *Item2 = @"kkk";
//    NSString *Item3 = @"ffff";
        NSString *file = [NSString stringWithContentsOfFile:@"/Users/jamalkharrat/Desktop/periodic_table.csv" encoding:NSUTF8StringEncoding error:NULL];
        
        NSArray *elementList = [file componentsSeparatedByString:@"/n" ];
        for (NSString *d in elementList)
        {
            NSLog(@"  %@",d);
        }
        NSLog(@" the element you want is %@",[elementList objectAtIndex:0]);

//                          NSMutableArray *groceryList = [NSMutableArray array];
//        [groceryList addObject:Item1];
//        [groceryList addObject:Item2];
//        [groceryList addObject:Item3];
//        
//        for (NSString *d in groceryList)
//        {
//            NSLog(@"Shoing list has %@",d);
//        }
        
   
    }
    return 0;
}

