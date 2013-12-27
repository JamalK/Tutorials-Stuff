//
//  JKViewController.h
//  Button Fun
//
//  Created by Jamal Kharrat on 5/31/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKViewController : UIViewController
- (IBAction)buttonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end
