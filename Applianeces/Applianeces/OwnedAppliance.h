//
//  OwnedAppliance.h
//  Applianeces
//
//  Created by Jamal Kharrat on 5/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "Appliance.h"


@interface OwnedAppliance : Appliance
{
    NSMutableSet *ownerNames;
}
//the designated initializer
-(id)initWithProductName:(NSString *)name firstOwnerName:(NSString*)n;
-(void)addOwnerNameObject:(NSString *)name;
-(void)removeOwnerNameObject:(NSString*)name;



@end
