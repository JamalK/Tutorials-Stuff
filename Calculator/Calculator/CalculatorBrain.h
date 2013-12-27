//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Jamal Kharrat on 5/17/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

-(void)pushOperand:(double)operand;
-(double)performOperation:(NSString*)operation;


@end
