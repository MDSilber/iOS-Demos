//
//  CalculatorModel.m
//  CalculatorDemo
//
//  Created by Mason Silber on 8/20/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import "CalculatorModel.h"

@implementation CalculatorModel

-(void)setOperand:(double)aDouble
{
    operand = aDouble;
}

-(void)performWaitingOperation
{
    if([@"+" isEqual:waitingOperation])
    {
        operand = waitingOperand + operand;
    }
    else if([@"-" isEqual:waitingOperation])
    {
        operand = waitingOperand - operand;
    }
    else if([@"*" isEqual:waitingOperation])
    {
        operand = waitingOperand * operand;
    }
    else if([@"/" isEqual:waitingOperation])
    {
        if(operand != 0)
        {
            operand = waitingOperand/operand;
        }
        else
        {
            //Will show later
        }
    }
}

-(double)performOperation:(NSString *)operation
{
    if([operation isEqualToString:@"sqrt"])
    {
        if(operand >= 0)
        {
        operand = sqrt(operand);
        }
        else
        {
            //We can do something else here
        }
    }
    else if([operation isEqualToString:@"c"])
    {
        operand = 0;
    }
    else
    {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}

@end
