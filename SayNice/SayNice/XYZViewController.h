//
//  XYZViewController.h
//  SayNice
//
//  Created by Jamal Kharrat on 1/29/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *resultDisplay;
@property (strong, nonatomic)NSArray *wordlist;
- (IBAction)buttonPressed:(UIButton *)sender;
//Calculator
- (IBAction)Button:(UIButton *)sender;

@end
