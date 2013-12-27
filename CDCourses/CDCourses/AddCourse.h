//
//  AddCourse.h
//  CDCourses
//
//  Created by Jamal Kharrat on 7/20/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@protocol AddCourseViewControllerDelegate;




@interface AddCourse : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;

@property (nonatomic,weak) id<AddCourseViewControllerDelegate>delegate;


@property (nonatomic,strong) Course *currentCourse;
- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;


@end

@protocol AddCourseViewControllerDelegate

-(void)addCourseViewControllerDidSave;
-(void)addCourseViewControllerDidCancel:(Course*)CourseToDelete;
@end