//
//  QuizViewController.h
//  Quiz
//
//  Created by Jamal Kharrat on 4/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

//Arrays
{
    int currentQuestionIndex;
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    IBOutlet UILabel *questioinField;
    IBOutlet UILabel *answerField;
    
}
-(IBAction)showQuestion:(id)sender;
-(IBAction)ShowAnswer:(id)sender;



@end
