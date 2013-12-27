//
//  ElementData.h
//  Simply Periodic
//
//  Created by Jamal Kharrat on 5/5/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ElementData : NSObject
@property (strong) NSString *name;
@property (assign) NSUInteger *aNumber;

- (id)initWithTitle:(NSString*)name number:(NSUInteger)aNumber;

@end
