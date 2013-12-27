//
//  Asset.m
//  BMITime
//
//  Created by Jamal Kharrat on 4/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset
@synthesize label,resaleValue,holder;



-(NSString*) description
{
    if ([self holder]) {
    return [NSString stringWithFormat:@"<%@: $%d assigned to %@>",[self label],[self resaleValue],[self holder]];
    }
    else
    {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",[self label],[self resaleValue]];
    }
}
-(void) dealloc
{
    NSLog(@"Deallocation %@",self);
}


@end
