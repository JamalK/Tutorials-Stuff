//
//  JKAddItemViewController.m
//  Shopping List
//
//  Created by Jamal Kharrat on 5/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKAddItemViewController.h"




@interface JKAddItemViewController ()


@end

@implementation JKAddItemViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)cancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
-(IBAction)save:(id)sender
{
    
    NSString *name = [self.nameTextField text];
    float price = [[self.priceTextField text]floatValue];
    //notify delegate
    [self.delegate controller:self didSaveItemWithName:name andPrice:price];
    //dismiss view controlloer
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
