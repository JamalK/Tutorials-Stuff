//
//  NSString+VowlCounting.m
//  VowlCounting
//
//  Created by Jamal Kharrat on 5/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "NSString+VowlCounting.h"

@implementation NSString (VowlCounting)
-(int)vowlCount
{
    NSCharacterSet *charSet =[NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    
    NSUInteger count = [self length];
    
    int sum=0;
    
    for (int i=0; i<count; i++)
    {
        unichar c= [self characterAtIndex:i];
        if ([charSet characterIsMember:c])
            sum++;
    }
    return sum;
}


@end
