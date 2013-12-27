//
//  XYZViewController.m
//  SayNice
//
//  Created by Jamal Kharrat on 1/29/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController
@synthesize wordlist;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   wordlist =[[NSArray alloc] initWithObjects:@"You are beautiful",
                        @"Have a great day"
                        @"Be Strong"
                        @"Things will be fine"
                        @"Everything will be great", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSUInteger index = arc4random_uniform(wordlist.count);
   
    self.resultDisplay.text=[self.wordlist objectAtIndex:index];
}
- (IBAction)Button:(UIButton *)sender {
    NSUInteger zero =0;
}
@end
