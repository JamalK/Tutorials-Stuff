//
//  AddCourse.m
//  CDCourses
//
//  Created by Jamal Kharrat on 7/20/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "AddCourse.h"

@implementation AddCourse

@synthesize titleField,authorField,dateField;

-(void)viewDidLoad
{
    [super viewDidLoad];
    titleField.text=[self.currentCourse title];
    authorField.text=[self.currentCourse author];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-DD"];
    dateField.text=[dateFormat stringFromDate: [self.currentCourse releaseDate]];
    
}

-(void)viewDidUnload
{
    [self setTitleField:nil];
    [self setAuthorField:nil];
    [self setDateField:nil];
    [super viewDidUnload];
}

- (IBAction)cancel:(id)sender {
    [self.delegate addCourseViewControllerDidCancel:self.currentCourse];
    
}

- (IBAction)save:(id)sender {
    //dismiss and save the context
    [self.currentCourse setTitle:titleField.text];
    [self.currentCourse setAuthor:authorField.text];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-DD"];
    
    [self.currentCourse setReleaseDate:[dateFormat dateFromString:dateField.text]];
    [self.delegate addCourseViewControllerDidSave];
}
@end
