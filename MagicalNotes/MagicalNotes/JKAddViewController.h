//
//  JKAddViewController.h
//  MagicalNotes
//
//  Created by Jamal Kharrat on 8/20/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface JKAddViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UITextField *noteInputField;



-(IBAction)savePressed:(id)sender;


@end
