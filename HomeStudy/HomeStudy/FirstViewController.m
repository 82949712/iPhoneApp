//
//  FirstViewController.m
//  HomeStudy
//
//  Created by apple on 13-12-19.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)btnFirstClick:(id)sender {
    SecondViewController* secondView = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    secondView.view.frame = CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height);

    [self presentViewController:secondView animated:YES completion:nil];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.navigationController setNavigationBarHidden:NO];
     
    self.title = @"First View";
    self.navigationItem.rightBarButtonItem = self.btnLogout;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleBlackOpaque;
}

- (IBAction)btnLogoutClick:(id)sender {
    [self.navigationController popViewControllerAnimated:FALSE];
}
@end
