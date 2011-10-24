//
//  ChooserViewController.m
//  NavigationController
//
//  Created by Mason Silber on 9/11/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import "ChooserViewController.h"
#import "ImageViewController.h"

@implementation ChooserViewController
@synthesize  angryBirds, doodleJump, fruitNinja, tinyWings, wordsWithFriends;

-(void)dealloc
{
    [angryBirds release];
    [doodleJump release];
    [fruitNinja release];
    [tinyWings release];
    [wordsWithFriends release];
    [pictureDict release];
    
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSArray *titles = [NSArray arrayWithObjects:@"Angry Birds", @"Doodle Jump", @"Fruit Ninja", @"Tiny Wings", @"Words With Friends", nil];

        NSArray *images = [NSArray arrayWithObjects:[UIImage imageNamed:@"AngryBirds.png"], [UIImage imageNamed:@"DoodleJump.png"], [UIImage imageNamed:@"FruitNinja.png"], [UIImage imageNamed:@"TinyWings.png"], [UIImage imageNamed:@"WordsWithFriends.png"], nil];  
        
        pictureDict = [[NSDictionary alloc] initWithObjects:images forKeys:titles];
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

-(IBAction)showPicture:(id)sender
{
    ImageViewController *image = [[ImageViewController alloc] initWithImage:[pictureDict objectForKey:[[sender titleLabel] text]]];
    [image setTitle:[[sender titleLabel] text]];
    
    [[self navigationController] pushViewController:image animated:YES];
    [image release];
}

@end
