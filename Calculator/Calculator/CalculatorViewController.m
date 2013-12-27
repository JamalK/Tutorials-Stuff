//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Jamal Kharrat on 5/17/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorBrain.h"

@interface CalculatorViewController ()

@property (nonatomic)BOOL userIsEnteringNumber;
@property (nonatomic)BOOL userIsEnteringFloatingNumber;
@property (strong,nonatomic)CalculatorBrain *brain;
@property (strong,nonatomic)NSMutableArray* history;

@end

@implementation CalculatorViewController
@synthesize userIsEnteringNumber;
@synthesize userIsEnteringFloatingNumber;
@synthesize brain=_brain;
@synthesize history=_history;

#define kHistoryCapacity 10

@synthesize display;


-(CalculatorBrain*)brain
{
    if (!_brain)
        _brain=[[CalculatorBrain alloc]init];
    return _brain;
}

-(NSMutableArray*)history
{
    if (!_history)
        _history=[[NSMutableArray alloc] initWithCapacity:kHistoryCapacity];
    return _history;
}


- (IBAction)digitPressed:(UIButton *)sender {
    
    NSString *digit =[sender currentTitle];
    if (self.userIsEnteringNumber)
    self.display.text=[self.display.text stringByAppendingString:digit];
    else
    {
        self.display.text=digit;
       self.userIsEnteringNumber=YES;
        
    }
}
- (IBAction)dotPressed:(UIButton *)sender {
    if(userIsEnteringFloatingNumber)
        return;
    
    self.userIsEnteringNumber=YES;
    self.userIsEnteringFloatingNumber=YES;
    self.display.text=[self.display.text stringByAppendingString:@"."];
    
}
- (IBAction)enterPressed {
    
    [self.brain pushOperand:[self.display.text doubleValue]];
    self.userIsEnteringFloatingNumber=NO;
    self.userIsEnteringNumber=NO;
    
    
    
    NSAssert(self.history.count<=kHistoryCapacity, @"Error too much elements");
    
    if (self.history.count==kHistoryCapacity)
        [self.history removeObjectAtIndex:0];
    [self.history addObject:self.display.text];
    self.inDisplay.text=[self.history componentsJoinedByString:@" "];
    
}
- (IBAction)operationPressed:(id)sender {
    
    if(self.userIsEnteringNumber)
        [self enterPressed];
    NSString *operation =[sender currentTitle];
    double result = [self.brain performOperation:operation];
    self.display.text=[NSString stringWithFormat:@"%g",result];
    
    NSAssert(self.history.count <= kHistoryCapacity,
             @"ERROR: Too much history elements");
    if (self.history.count == kHistoryCapacity)
        [self.history removeObjectAtIndex:0];
    
    [self.history addObject: [sender currentTitle]];
    
    self.inDisplay.text =
    [[self.history componentsJoinedByString:@" "]stringByAppendingString:@" ="];
    
    
}





@end
