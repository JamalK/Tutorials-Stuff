//
//  XYZViewController.m
//  CrystalBall
//
//  Created by Jamal Kharrat on 1/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController
@synthesize predectionArray;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.predectionArray= [[NSArray alloc] initWithObjects:@"Fuck you",@"ya 2bn l kalb",@"5ras", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPressed:(id)sender {
    NSUInteger index = arc4random_uniform(self.predectionArray.count);
 
    
    self.outPut.text =[self.predectionArray objectAtIndex:index];
    
   

}




@end
