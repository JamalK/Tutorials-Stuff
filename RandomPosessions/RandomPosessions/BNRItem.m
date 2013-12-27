//
//  BNRItem.m
//  RandomPosessions
//
//  Created by Jamal Kharrat on 4/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
@synthesize valueInDollars,dateCreated,itemName,seiralNumber;

-(NSString*) description
{
    NSString *descriptionString=[[NSString alloc]initWithFormat:@" %@ (%@) :Worth of $%d recorded on %@ ",itemName,seiralNumber,valueInDollars,dateCreated];
    return descriptionString;
}

+(id)randomItem
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",@"Rusty",@"Shiny",nil];
    NSArray *randomNounsList = [NSArray arrayWithObjects:@"Bear",@"Spork",@"Mac", nil];
    NSUInteger adjectiveIndex =rand()% [randomAdjectiveList count];
    NSUInteger nounsIndex = rand()%[randomNounsList count];
    
    NSString *randomName = [NSString stringWithFormat:@" %@ %@",[randomAdjectiveList objectAtIndex:adjectiveIndex],[randomNounsList objectAtIndex:nounsIndex]];
    
    int randomValue =rand()%100;
    
    NSString *randomSerialNumber =[NSString stringWithFormat:@" %c %c %c %c %c",
                                                            '0'+rand()%10,
                                                            'A'+rand()%26,
                                                            '0'+ rand()%10,
                                                            'A'+rand()%26,
                                                            '0'+ rand()%10];
    
    BNRItem *newItem =[[self alloc]initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
    
    
}

-(id)initWithItemName:(NSString *) name
       valueInDollars:(int)value
         serialNumber:(NSString*)sNumber;
{
    self = [super init];
    [self setItemName:name];
    [self setSeiralNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc]init];
    
    return self;
    
}
- (id) initWithNameSeiral:(NSString *)name serialNumber:(NSString *)sNumber
{
    self=[super init];
    [self setItemName:name];
    [self setSeiralNumber:sNumber];
    
    return self;
}

@end
