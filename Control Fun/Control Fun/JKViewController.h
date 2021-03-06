//
//  JKViewController.h
//  Control Fun
//
//  Created by Jamal Kharrat on 6/1/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKViewController : UIViewController <UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingButton;

-(IBAction)textFieldDoneEditing:(id)sender;
-(IBAction)backgroundTap:(id)sender;

-(IBAction)sliderChanged:(UISlider*)sender;
- (IBAction)switchChanged:(UISwitch *)sender;
- (IBAction)toggleControls:(UISegmentedControl *)sender;
- (IBAction)buttonPressed:(id)sender;

@end
