//
//  Course.h
//  CDCourses
//
//  Created by Jamal Kharrat on 7/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Course : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSDate * releaseDate;

@end
