//
//  NoteDetailViewController.h
//  JKNotes
//
//  Created by Jamal Kharrat on 7/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoteDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *dateCreatedLabel;
@property (weak, nonatomic) IBOutlet UITextField *noteField;

-(IBAction)save:(id)sender;
-(IBAction)cancel:(id)sender;


@end
