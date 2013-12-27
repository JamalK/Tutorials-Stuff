//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Jamal Kharrat on 12/7/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipcount;


@end

@implementation CardGameViewController


- (void)setFlipcount:(int)flipcount
{
    _flipcount = flipcount;
    self.flipsLabel.text=[NSString stringWithFormat:@"Flips: %d",self.flipcount];
}


- (IBAction)touchCardButton:(UIButton *)sender
{

    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]         forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]         forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    self.flipcount++;

}


@end
