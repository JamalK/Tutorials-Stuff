//
//  DeviceDetailViewControllerUIViewController.m
//  MyStore
//
//  Created by Jamal Kharrat on 6/2/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "DeviceDetailViewControllerUIViewController.h"

@interface DeviceDetailViewControllerUIViewController ()

@end

@implementation DeviceDetailViewControllerUIViewController

@synthesize devices;

@synthesize nameTextField;
@synthesize versionTextField;
@synthesize companyTextField;

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
    
    if (self.devices) {
        [self.nameTextField setText:[self.devices valueForKey:@"name"]];
        [self.versionTextField setText:[self.devices valueForKey:@"version"]];
        [self.companyTextField setText:[self.devices valueForKey:@"company"]];
}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
    
}

- (IBAction)save:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    NSManagedObjectContext *device = [NSEntityDescription insertNewObjectForEntityForName:@"Device" inManagedObjectContext:context];
    
    [device setValue:self.nameTextField.text forKey:@"name"];
    [device setValue:self.companyTextField.text forKey:@"company"];
    [device setValue:versionTextField.text forKey:@"version"];
    
    NSError *error = nil;
    
    if ([context save:&error])
    {
        NSLog(@"Error %@",[error localizedDescription]);
    
    }
    [self dismissViewControllerAnimated:YES completion:Nil];
    
    
}

-(NSManagedObjectContext*)managedObjectContext
{
    NSManagedObjectContext *context=nil;
    id delegate = [[UIApplication sharedApplication]delegate];
    if ([delegate performSelector:@selector(managedObjectContext)])
    {
        context=[delegate managedObjectContext];
        
    }
    return context;
    
}

@end
