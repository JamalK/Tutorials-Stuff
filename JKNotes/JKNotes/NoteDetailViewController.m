//
//  NoteDetailViewController.m
//  JKNotes
//
//  Created by Jamal Kharrat on 7/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "NoteDetailViewController.h"

@interface NoteDetailViewController ()

@end

@implementation NoteDetailViewController


-(NSManagedObjectContext*)managedObjectContext
{
    NSManagedObjectContext *context =nil;
    id delegate =[[UIApplication sharedApplication]delegate];
    if ([delegate performSelector:@selector(managedObjectContext)])
    {
        context=[delegate managedObjectContext];
    }
    return context;
}

//Buttons methods
-(IBAction)cancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
-(IBAction)save:(id)sender
{
    NSManagedObjectContext *context = [self managedObjectContext];
    //Creating a new object
    NSManagedObject *newNote = [NSEntityDescription insertNewObjectForEntityForName:@"Note" inManagedObjectContext:context];
    [newNote setValue:[NSDate date] forKey:@"dateCreated"];
 
    
    [newNote setValue:self.noteField.text forKey:@"noteStr"];
    
    
    NSError *error = nil;
    //save the object to presist
    if (![context save:&error])
    {
        NSLog(@"An error occured %@",[error localizedDescription] );
        
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSDateFormatter *formatter =[[NSDateFormatter alloc]init];
    NSString *date = [formatter stringFromDate:[NSDate date]];
    self.dateCreatedLabel.text=date;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
