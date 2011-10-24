//
//  ViewController.m
//  ColorPickerDemo
//
//  Created by Mason Silber on 9/8/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(void)sliderValueChanged:(UISlider *)sender
{
    if(sender.tag == 0)
    {
        [redView setBackgroundColor:[UIColor colorWithRed:[redSlider value]/255.0f green:0 blue:0 alpha:1.0]];
        [redLabel setText:[NSString stringWithFormat:@"Red: %d",(int)[redSlider value]]];
    }
    else if(sender.tag == 1)
    {
        [greenView setBackgroundColor:[UIColor colorWithRed:0 green:[greenSlider value]/255.0f blue:0 alpha:1.0]];
        [greenLabel setText:[NSString stringWithFormat:@"Green: %d",(int)[greenSlider value]]];
    }
    else if(sender.tag == 2)
    {
        [blueView setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:[blueSlider value]/255.0f alpha:1.0]];
        [blueLabel setText:[NSString stringWithFormat:@"Blue: %d",(int)[blueSlider value]]];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Something weird happened" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
    }
    
    [self.view setBackgroundColor:[UIColor colorWithRed:[redSlider value]/255.0f green:[greenSlider value]/255.0f blue:[blueSlider value]/255.0f alpha:1.0]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [redView setBackgroundColor:[UIColor colorWithRed:[redSlider value]/255.0f green:0 blue:0 alpha:1.0]];
    [redLabel setText:[NSString stringWithFormat:@"Red: %d",(int)[redSlider value]]];
    
    [greenView setBackgroundColor:[UIColor colorWithRed:0 green:[greenSlider value]/255.0f blue:0 alpha:1.0]];
    [greenLabel setText:[NSString stringWithFormat:@"Green: %d",(int)[greenSlider value]]];
    
    [blueView setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:[blueSlider value]/255.0f alpha:1.0]];
    [blueLabel setText:[NSString stringWithFormat:@"Blue: %d",(int)[blueSlider value]]];
    
    [redSlider setTag:0];
    [greenSlider setTag:1];
    [blueSlider setTag:2];
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
