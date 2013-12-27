//
//  JKViewController.m
//  Button Fun
//
//  Created by Jamal Kharrat on 5/31/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKViewController.h"

@interface JKViewController ()

@end

@implementation JKViewController
@synthesize statusLabel;



- (IBAction)buttonPressed:(id)sender {
    
    NSString *title = [sender titleForState:normal];
    NSString *plainText =[NSString stringWithFormat:@" Button pressed is %@",title];
    statusLabel.text=plainText;
    
    
}
@end
