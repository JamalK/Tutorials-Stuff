//
//  CoursesTableViewController.h
//  CDCourses
//
//  Created by Jamal Kharrat on 7/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCourse.h"
@interface CoursesTableViewController : UITableViewController <AddCourseViewControllerDelegate,NSFetchedResultsControllerDelegate>

@property (nonatomic,strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic,strong) NSFetchedResultsController *fetchedResultController;
@end
