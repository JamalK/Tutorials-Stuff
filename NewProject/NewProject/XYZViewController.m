//
//  XYZViewController.m
//  NewProject
//
//  Created by Jamal Kharrat on 1/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
    
- (IBAction)buttonPressed:(UIButton *)sender {
    //NSString *myString = @"have a great day";
    self.predectionResult.text=@"Have a great day";
}
@end
