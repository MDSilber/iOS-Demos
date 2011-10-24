//
//  ViewController.m
//  WebBrowserDemo
//
//  Created by Mason Silber on 9/13/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation ViewController

-(void)dealloc
{
    [webView release];
    [titleLabel release];
    
    [super dealloc];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    if(self)
    {
        UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0,0, [[self view] frame].size.width, 44)];

        UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 416, [[self view] frame].size.width, 44)];

        webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 44, [[self view] frame].size.width, [[self view] frame].size.height - navigationBar.frame.size.height - toolbar.frame.size.height)];
        [webView setDelegate:self];
        
        NSMutableArray *buttons = [[NSMutableArray alloc] init];
        UIBarButtonItem *flex = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
        UIBarButtonItem *otherButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(back)];

        [buttons addObject:otherButton];
        [buttons addObject:flex];
        
        otherButton = nil;
        [otherButton release];
        
        otherButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(forward)];
        
        [buttons addObject:otherButton];
        [buttons addObject:flex];
        
        otherButton = nil;
        [otherButton release];
        
        otherButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(stopLoading)];
        
        [buttons addObject:otherButton];
        [buttons addObject:flex];
        
        otherButton = nil;
        [otherButton release];
        
        otherButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(reload)];
        
        [buttons addObject:otherButton];
        [otherButton release];
        
        [toolbar setItems:buttons];
        [buttons release];
        
        URLField = [[UITextField alloc] initWithFrame:CGRectMake(30, 22, 260, 20)];
        [URLField setBackgroundColor:[UIColor whiteColor]];
        [[URLField layer] setCornerRadius:6.0];
        [[URLField layer] setBorderColor:[[UIColor blackColor] CGColor]];
        [[URLField layer] setBorderWidth:1.0];
        [URLField setHidden:NO];
        [URLField setClearButtonMode:UITextFieldViewModeWhileEditing];
        [URLField setAutocorrectionType:UITextAutocorrectionTypeNo];
        [URLField setAutocapitalizationType:UITextAutocapitalizationTypeNone];
        [URLField setDelegate:self];
        
        titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 2, 260, 20)];
        [titleLabel setTextAlignment:UITextAlignmentCenter];
        [titleLabel setText:@"Untitled"];
        [titleLabel setBackgroundColor:[UIColor clearColor]];
        
        [navigationBar addSubview:URLField];
        [navigationBar addSubview:titleLabel];
        
        [URLField release];
        
        [[self view] addSubview:toolbar];
        [[self view] addSubview:navigationBar];
        [[self view] addSubview:webView];

        [toolbar release];
        [navigationBar release];
    }
    
    return self;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    URL = [NSURL URLWithString:[textField text]];
    [webView loadRequest:[NSURLRequest requestWithURL:URL]];
}

-(void)webViewDidFinishLoad:(UIWebView *)aWebView
{
    [titleLabel setText:[aWebView stringByEvaluatingJavaScriptFromString:@"document.title"]];
    NSLog(@"%@",[aWebView stringByEvaluatingJavaScriptFromString:@"document.title"]);
    
    if(![[URLField text] isEqualToString:[[[webView request] URL] absoluteString]])
    {
        [URLField setText:[[[webView request] URL] absoluteString]];
    }
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

-(void)reload
{
    [webView reload];
}

-(void)back
{
    if([webView canGoBack])
    {
        [webView goBack];
    }
}

-(void)forward
{
    if([webView canGoForward])
    {
        [webView goForward];
    }
}

-(void)stop
{
    [webView stopLoading];
}
@end
