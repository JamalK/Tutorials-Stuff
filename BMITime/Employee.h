//
//  Employee.h
//  BMITime
//
//  Created by Jamal Kharrat on 4/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@class Asset;


@interface Employee : Person
{
    int employeeID;
    NSMutableSet *assets;
}
@property int employeeID;
-(void)addAssetObject:(Asset*)a;
-(unsigned int)valueOfAssets;
@end
