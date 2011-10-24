//
//  ViewController.h
//  WebBrowserDemo
//
//  Created by Mason Silber on 9/13/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate,UITextFieldDelegate>
{
    NSURL *URL;
    UIWebView *webView;
    UILabel *titleLabel;
    UITextField *URLField;
}

-(void)reload;
-(void)back;
-(void)forward;
-(void)stop;

@end
