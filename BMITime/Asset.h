//
//  Asset.h
//  BMITime
//
//  Created by Jamal Kharrat on 4/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
    __weak Employee *holder;
}
@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;

-(NSString*) description;
-(void) dealloc;

@end
