//
//  JKAppDelegate.h
//  CDCourses
//
//  Created by Jamal Kharrat on 7/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoursesTableViewController.h"

@interface JKAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
