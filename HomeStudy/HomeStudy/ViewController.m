//
//  ViewController.m
//  HomeStudy
//
//  Created by apple on 13-11-29.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "LoginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
    
//    FirstViewController* firstView = [[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:nil];
//    firstView.view.frame = CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height - 20);
//    
//    
//    [self addChildViewController:firstView];
//    [self.view addSubview:firstView.view];
    
    
   
}


-(void)viewDidAppear:(BOOL)animated{
    
    if([self.view viewWithTag:1000] == nil){
    LoginViewController* loginVC = [[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:nil];
    loginVC.view.frame = self.loginView.bounds;
    loginVC.view.tag = 1000;
    //loginVC.delegate = self;
    [self addChildViewController:loginVC];
    [UIView transitionWithView:self.loginView duration:0.5 options:UIViewAnimationOptionTransitionFlipFromLeft  animations:^{[self.loginView addSubview:loginVC.view];} completion:nil];
    [loginVC didMoveToParentViewController:self];
    
    //use block approach to assign event to handle login event
    loginVC.loginButtonClick = ^(NSString* username, NSString* password){
//        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Login" message:[username stringByAppendingString:password] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
//        [alert show];
        
        FirstViewController* firstVC = [[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:nil];
        [self.navigationController pushViewController:firstVC animated:NO];
    };
    }
    
}

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClick:(id)sender {
    
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleBlackOpaque;
}

//-(void)loginButtonClick:(NSString *)username password:(NSString *)password{
//    UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Login" message:[username stringByAppendingString:password] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
//    [alert show];
//}


@end
