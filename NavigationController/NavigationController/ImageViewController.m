//
//  ImageViewController.m
//  NavigationController
//
//  Created by Mason Silber on 9/11/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import "ImageViewController.h"

@implementation ImageViewController

@synthesize imageView;

-(void)dealloc
{
    [imageView release];
    [super dealloc];
}

-(id)initWithImage:(UIImage *)image
{
    self = [super init];
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(32, 102, 256, 256)];
    [imageView setImage:image];
    [[self view] addSubview:imageView];
    
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
