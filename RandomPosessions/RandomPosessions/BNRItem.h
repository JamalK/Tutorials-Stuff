//
//  BNRItem.h
//  RandomPosessions
//
//  Created by Jamal Kharrat on 4/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}
@property NSString *itemName, *seiralNumber;
@property int valueInDollars;
@property NSDate *dateCreated;
-(NSString *) description;

-(void) doSomethingWeird;

+(id) randomItem;

-(id)initWithItemName:(NSString *) name
            valueInDollars:(int)value
            serialNumber:(NSString*)sNumber;

-(id) initWithNameSeiral:(NSString*) name serialNumber:(NSString*)sNumber;


@end
