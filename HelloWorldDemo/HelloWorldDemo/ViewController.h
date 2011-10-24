//
//  ViewController.h
//  HelloWorldDemo
//
//  Created by Mason Silber on 8/21/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *label;
    IBOutlet UITextField *textField;
}

-(IBAction)buttonClicked:(id)sender;

@end
