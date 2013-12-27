//
//  Appliance.m
//  Applianeces
//
//  Created by Jamal Kharrat on 5/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance
@synthesize productName, voltage ;

-(id) init
{
    return [self initWithProductName:@"Default Name"];
    
}

-(id) initWithProductName:(NSString*)name
{
    self =[super init];
    
    if (self)
    {
        [self setProductName:name];
        [self setVoltage:120];
    }
    return self;
}

-(NSString*)description
{
    return [NSString stringWithFormat:@"<%@: %d voltes>",productName,voltage];
}


@end
