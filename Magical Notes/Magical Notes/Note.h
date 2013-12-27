//
//  Note.h
//  Magical Notes
//
//  Created by Jamal Kharrat on 8/14/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Note : NSManagedObject

@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSString * keywords;
@property (nonatomic, retain) NSString * title;

@end
