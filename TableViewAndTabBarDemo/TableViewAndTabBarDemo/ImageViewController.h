//
//  ImageViewController.h
//  NavigationController
//
//  Created by Mason Silber on 9/11/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageViewController : UIViewController
{
    UIImageView *imageView;
}

@property (nonatomic, retain) UIImageView *imageView;

-(id)initWithImage:(UIImage *)image;

@end
