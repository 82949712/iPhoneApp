//
//  FirstViewController.h
//  HomeStudy
//
//  Created by apple on 13-12-19.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
- (IBAction)btnFirstClick:(id)sender;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *btnLogout;
- (IBAction)btnLogoutClick:(id)sender;

@end
