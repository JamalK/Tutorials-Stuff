//
//  QuizViewController.m
//  Quiz
//
//  Created by Jamal Kharrat on 4/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self =[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        questions=[[NSMutableArray alloc]init];
        answers=[[NSMutableArray alloc ]init];
        
        [questions addObject:@"What is the 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"What is Cognac made from?"];
        [answers addObject:@"Grapes"];
        
    }
    return self;
    
}
-(IBAction)showQuestion:(id)sender
{
    //step to next question
    currentQuestionIndex++;
    
    if(currentQuestionIndex ==[questions count])
    {
        currentQuestionIndex=0;
    }
    //get the string at the index
    NSString *question =[questions objectAtIndex:currentQuestionIndex];
    
    //Output to the console
    NSLog(@"displaying question %@",questions);
    
    [questioinField setText:question];
    
    //clear the answer field
    [answerField setText:@"???"];
    
    
}
-(IBAction)ShowAnswer:(id)sender
{
    NSString *answer=[answers objectAtIndex:currentQuestionIndex];
    
    [answerField setText:answer];
}
@end
