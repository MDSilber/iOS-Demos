//
//  ViewController.h
//  CalculatorDemo
//
//  Created by Mason Silber on 8/20/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorModel.h"

@interface ViewController : UIViewController
{
    IBOutlet UILabel *display;
    CalculatorModel *model;
    BOOL userIsInTheMiddleOfTypingANumber;
}

-(IBAction)digitPressed:(id)sender;
-(IBAction)operationPressed:(id)sender;

@end
