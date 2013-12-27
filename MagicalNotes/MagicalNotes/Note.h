//
//  Note.h
//  MagicalNotes
//
//  Created by Jamal Kharrat on 8/20/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>



@interface Note : NSManagedObject

@property (nonatomic, retain) NSDate * dateCreated;
@property (nonatomic, retain) NSString * noteString;
@property (nonatomic, retain) NSData * image;

@end
