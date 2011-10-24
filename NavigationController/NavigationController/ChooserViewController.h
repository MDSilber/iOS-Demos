//
//  ChooserViewController.h
//  NavigationController
//
//  Created by Mason Silber on 9/11/11.
//  Copyright (c) 2011 Columbia University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChooserViewController : UIViewController
{
    IBOutlet UIButton *angryBirds, *doodleJump, *fruitNinja, *tinyWings, *wordsWithFriends;
    NSDictionary *pictureDict;
}

@property (nonatomic, retain) IBOutlet UIButton *angryBirds, *doodleJump, *fruitNinja, *tinyWings, *wordsWithFriends;

-(IBAction)showPicture:(id)sender;

@end
