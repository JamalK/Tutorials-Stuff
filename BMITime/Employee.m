//
//  Employee.m
//  BMITime
//
//  Created by Jamal Kharrat on 4/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"


@implementation Employee
@synthesize employeeID;

-(float)bodyMassIndex
{
    float normalBmi = [super bodyMassIndex];
    return 0.9*normalBmi;
}
-(void)addAssetObject:(Asset *)a
{
    //is assets NIK
    if(!assets)
    {
        assets=[[NSMutableSet alloc]init];
    }
    [assets addObject:a];
    [a setHolder:self];
}
-(unsigned int)valueOfAssets
{
    unsigned int sum=0;
    for(Asset *a in assets)
    {
        sum+=[a resaleValue];
    }
    return sum;
}
-(NSString*) description
{
    return [NSString stringWithFormat:@"<Employee %d $%d in assets>",[self employeeID], [self valueOfAssets]];
}
    -(void) dealloc
            {
                NSLog(@"Deallocating %@",self);
            }

@end
