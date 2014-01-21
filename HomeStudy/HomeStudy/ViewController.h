//
//  ViewController.h
//  HomeStudy
//
//  Created by apple on 13-11-29.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"

@interface ViewController : UIViewController //<LoginDelegate>
@property (weak, nonatomic) IBOutlet UIView *loginView;
- (IBAction)btnClick:(id)sender;

@end
