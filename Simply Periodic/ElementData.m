//
//  ElementData.m
//  Simply Periodic
//
//  Created by Jamal Kharrat on 5/5/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "ElementData.h"

@implementation ElementData
@synthesize name=_name;
@synthesize aNumber=_aNumber;

- (id)initWithTitle:(NSString*)name number:(NSUInteger)aNumber {
    if ((self = [super init])) {
        self.name=name;
        self.aNumber=&(aNumber);
    }
    return self;
}


@end
