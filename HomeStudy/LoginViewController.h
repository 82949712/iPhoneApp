//
//  LoginViewController.h
//  HomeStudy
//
//  Created by apple on 13-12-22.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

//@protocol LoginDelegate <NSObject>
//
//-(void)loginButtonClick: (NSString*)username password: (NSString*)password;
//
//@end



@interface LoginViewController : UIViewController{

}

@property (weak, nonatomic) IBOutlet UIView *loginView;
@property (weak, nonatomic) IBOutlet UILabel *lblTest;

- (IBAction)btnLoginClick:(id)sender;

//@property id<LoginDelegate> delegate;



@property (strong, nonatomic)void (^loginButtonClick) (NSString* username, NSString* password);

@end
