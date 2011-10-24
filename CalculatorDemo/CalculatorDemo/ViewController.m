//
//  ViewController.m
//  CalculatorDemo
//
//  Created by Mason Silber on 8/20/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(CalculatorModel *)model
{
    if(!model)
    {
        model = [[CalculatorModel alloc] init];
    }
    return model;
}

-(IBAction)digitPressed:(id)sender
{
    NSString *digit = [[sender titleLabel] text];
    
    if(userIsInTheMiddleOfTypingANumber)
    {
        [display setText:[[display text] stringByAppendingString:digit]];
    }
    else
    {
        [display setText:digit];
        userIsInTheMiddleOfTypingANumber = YES;
    }
}

-(IBAction)operationPressed:(id)sender
{
    if(userIsInTheMiddleOfTypingANumber)
    {
        userIsInTheMiddleOfTypingANumber = NO;
        [[self model] setOperand:[[display text] doubleValue]];
    }
    
    NSString *operation = [[sender titleLabel] text];
    double result = [[self model] performOperation:operation];
    [display setText:[NSString stringWithFormat:@"%g",result]];
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
