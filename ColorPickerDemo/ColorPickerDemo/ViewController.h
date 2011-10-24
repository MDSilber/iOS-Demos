//
//  ViewController.h
//  ColorPickerDemo
//
//  Created by Mason Silber on 9/8/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 
{
    IBOutlet UIView *redView, *greenView, *blueView;
    IBOutlet UISlider *redSlider, *greenSlider, *blueSlider;
    IBOutlet UILabel *redLabel, *greenLabel, *blueLabel;
}

-(IBAction)sliderValueChanged:(UISlider *)sender;

@end
