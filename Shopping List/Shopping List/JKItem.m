//
//  JKItem.m
//  Shopping List
//
//  Created by Jamal Kharrat on 5/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKItem.h"

@implementation JKItem
@synthesize uuid,name,inShoppingList,price;
-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.uuid forKey:@"uuid"];
    [aCoder encodeFloat:self.price forKey:@"price"];
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeBool:self.inShoppingList forKey:@"inShoppingList"];
    
    
}
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self)
    {
        [self setUuid:[aDecoder decodeObjectForKey:@"uuid"]];
        [self setPrice:[aDecoder decodeFloatForKey:@"price"]];
        [self setInShoppingList:[aDecoder decodeBoolForKey:@"isShoppingList"]];
        [self setName:[aDecoder decodeObjectForKey:@"name"]];
        
    }
    return self;
    
}

+(JKItem*)createItemWithName:(NSString *)name andPrice:(float)price
{
    //initalize item
    JKItem *item = [[JKItem alloc]init];
    //configure item
    [item setName:name];
    [item setPrice:price];
    [item setInShoppingList:NO];
    [item setUuid:[[NSUUID UUID]UUIDString ]];
    return item;
}

@end
