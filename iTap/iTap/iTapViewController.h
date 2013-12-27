//
//  iTapViewController.h
//  iTap
//
//  Created by Jamal Kharrat on 5/2/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iTapViewController : UIViewController<UIAlertViewDelegate> 
{
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timeLabel;
    IBOutlet UILabel *acchieve;
    
    NSUInteger count;
    NSUInteger seconds;
    NSTimer *timer;
    

}
-(IBAction)buttonPressed ;
@end
