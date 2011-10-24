//
//  ViewController.m
//  HelloWorldDemo
//
//  Created by Mason Silber on 8/21/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

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
    UIButton *button = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
    [button setFrame:CGRectMake(246-171, 200-37, 171, 37)];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Click Me!" forState:UIControlStateNormal];
    [[self view] addSubview:button];
    [button release];
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

-(IBAction)buttonClicked:(id)sender
{
    if([[textField text] length] > 0)
    {
        [label setText:[NSString stringWithFormat:@"Hello %@",[textField text]]];
    }
    else
    {
        [label setText:@"Hello World!"];
    }
}
@end
