//
//  JKItem.h
//  Shopping List
//
//  Created by Jamal Kharrat on 5/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKItem : NSObject <NSCoding>
@property NSString *uuid;
@property NSString *name;
@property float price;
@property BOOL inShoppingList;
-(void)encodeWithCoder:(NSCoder *)aCoder;
-(id)initWithCoder:(NSCoder *)aDecoder;


+(JKItem *)createItemWithName:(NSString*)name andPrice:(float)price;


@end
