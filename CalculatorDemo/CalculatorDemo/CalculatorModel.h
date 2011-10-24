//
//  CalculatorModel.h
//  CalculatorDemo
//
//  Created by Mason Silber on 8/20/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorModel : NSObject
{
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}

-(void)setOperand:(double)aDouble;
-(double)performOperation:(NSString *)operation;

@end
