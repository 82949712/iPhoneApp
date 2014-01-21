//
//  LoginViewController.m
//  HomeStudy
//
//  Created by apple on 13-12-22.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "LoginViewController.h"
#import "StudyLibrary.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.lblTest.text = [StudyLibrary getString];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLoginClick:(id)sender {
    //[self.delegate performSelector:@selector(loginButtonClick:password:) withObject:@"username" withObject:@"password"];
    self.loginButtonClick(@"username", @"password");
}
@end
