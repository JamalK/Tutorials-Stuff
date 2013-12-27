//
//  iTapViewController.m
//  iTap
//
//  Created by Jamal Kharrat on 5/2/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "iTapViewController.h"

@interface iTapViewController ()

@end

@implementation iTapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_tile.png"]];
    scoreLabel.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"field_Score.png"]];
    timeLabel.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"field_time.png"]];
    [self showAchieve];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)buttonPressed{
    count++;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score \n %i",count];
    
    if (count==30)
        acchieve.text=[NSString stringWithFormat:@"Good Job"];
    else if (count==40)
        acchieve.text=[NSString stringWithFormat:@"Superb"];
    else
        acchieve.text=[NSString stringWithFormat:@" "];
}
-(void)setupGame{
    seconds = 30;
    count=0;
    
    timeLabel.text =[NSString stringWithFormat:@"Time %i",seconds];
    scoreLabel.text=[NSString stringWithFormat:@"Score \n %i",count];
    
    timer =[NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(subtractTime) userInfo:nil repeats:YES];
    
    
}
-(void)subtractTime
{
    seconds--;
    timeLabel.text =[NSString stringWithFormat:@"Time: %i",seconds];
    
    if (seconds==0){
        [timer invalidate];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Time is up" message:[NSString stringWithFormat:@"You have scored %i",count] delegate:self cancelButtonTitle:@"Play again" otherButtonTitles:nil, nil];
        [alert show];
        
        

    }
    
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self setupGame];
}
-(void)showAchieve
{
    if (count==30)
        acchieve.text=[NSString stringWithFormat:@"Good Job"];
    else if (count==40)
        acchieve.text=[NSString stringWithFormat:@"Superb"];
}




@end
