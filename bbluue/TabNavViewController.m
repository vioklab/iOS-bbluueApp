//
//  TabNavViewController.m
//  bbluue
//
//  Created by bbluue IMac on 2/5/16.
//  Copyright © 2016 bbluue. All rights reserved.
//

#import "TabNavViewController.h"
#import "Constants.h"
#import "SWRevealViewController.h"

@interface TabNavViewController ()

@end

@implementation TabNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // TAB BAR SETUP
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:0/255.0 green:143/255.0 blue:226/255.0 alpha:1]];
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:0/255.0 alpha:1]];
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    [UITabBarItem.appearance setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1]} forState:UIControlStateNormal];
    // Set Icon Images width original images
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
        for (UITabBarItem *tbi in self.tabBar.items) {
            tbi.image = [tbi.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        }
    }
    
    // MENU BAR BUTTON
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    // GESTURE NAVIGATION
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
