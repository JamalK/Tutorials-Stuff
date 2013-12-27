//
//  main.m
//  VowlCounting
//
//  Created by Jamal Kharrat on 5/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowlCounting.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
       NSString *string = @"HelloWorld";
        NSLog(@" %@ has %d vowels",string, [string vowlCount]);
        
    }
    return 0;
}

