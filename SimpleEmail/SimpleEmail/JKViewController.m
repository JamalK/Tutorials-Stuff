//
//  JKViewController.m
//  SimpleEmail
//
//  Created by Jamal Kharrat on 5/31/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKViewController.h"


@interface JKViewController () 

@end

@implementation JKViewController

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

- (IBAction)showEmail:(id)sender {
    
    NSString *emailTitle = @"Test Email";
    
    NSString *messageBody = @"iOS programming is soo fun";
    
    NSArray *toRecpients = [NSArray arrayWithObject:@"jamal7@me.com"];
    
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc]init];
    mc.mailComposeDelegate=self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecpients];
    
    [self presentViewController:mc animated:YES completion:NULL];
    
    
    
    
}
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result) {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail Cancalled");
            break;
            case MFMailComposeResultSaved:
            NSLog(@"Mail Saved");
            break;
            case MFMailComposeResultSent:
            NSLog(@"Mail Sent");
            break;
            case MFMailComposeResultFailed:
            NSLog(@"Mail sending failure %@",[error localizedDescription]);
            
        default:
            break;
            
    }
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
