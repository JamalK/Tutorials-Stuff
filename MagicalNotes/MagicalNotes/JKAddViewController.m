//
//  JKAddViewController.m
//  MagicalNotes
//
//  Created by Jamal Kharrat on 8/20/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKAddViewController.h"
#import "Note.h"

@interface JKAddViewController ()

@end

@implementation JKAddViewController

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
    self.title= @"New Note";
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)savePressed:(id)sender
{
    if (_noteInputField.text.length>0)
    {
        Note *newNote = [Note createEntity];
        newNote.dateCreated=[NSDate date];
        newNote.noteString =_noteInputField.text;
        
        //Save to pressistant store
        [[NSManagedObjectContext defaultContext] saveToPersistentStoreAndWait];
        
        //Inform app
        [[NSNotificationCenter defaultCenter]postNotificationName:@"newPersonAdded" object:nil];
        
        //dismiss view
        [self.navigationController popToRootViewControllerAnimated:YES];
        
        
        
    }
}

@end
