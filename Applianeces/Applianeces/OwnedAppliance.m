//
//  OwnedAppliance.m
//  Applianeces
//
//  Created by Jamal Kharrat on 5/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "OwnedAppliance.h"



@implementation OwnedAppliance

    


-(id)initWithProductName:(NSString *)name firstOwnerName:(NSString *)n
{
    self=[super initWithProductName:name];
    
    if(self)
        ownerNames=[[NSMutableSet alloc]init];
    if(n)
    {
        [ownerNames addObject:n];
        
    }
    return self;
}
-(void)addOwnerNameObject:(NSString *)name
{
    [ownerNames addObject:name];
}
-(void)removeOwnerNameObject:(NSString *)name
{
    [ownerNames removeObject:name];
}
-(id)initWithProductName:(NSString *)name
{
    return [self initWithProductName:name firstOwnerName:nil];
}

@end
