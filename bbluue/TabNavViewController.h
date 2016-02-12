//
//  TabNavViewController.h
//  bbluue
//
//  Created by bbluue IMac on 2/5/16.
//  Copyright © 2016 bbluue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabNavViewController : UITabBarController

// Create Top Nav Button
@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;

@property (nonatomic, retain) UITabBarController *tabBarController;

@end
