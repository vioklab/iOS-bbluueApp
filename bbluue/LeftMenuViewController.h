//
//  LeftMenuViewController.h
//  bbluue
//
//  Created by bbluue IMac on 2/5/16.
//  Copyright © 2016 bbluue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftMenuViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (copy, nonatomic) NSArray *menuList;
@property (copy, nonatomic) NSArray *menuIcons;


@end
