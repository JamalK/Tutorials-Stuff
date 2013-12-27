//
//  JKViewController.h
//  SimpleEmail
//
//  Created by Jamal Kharrat on 5/31/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface JKViewController : UIViewController <MFMailComposeViewControllerDelegate>

- (IBAction)showEmail:(id)sender;


@end
