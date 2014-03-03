//
//  SignInViewController.m
//  Free Spot
//
//  Created by Rui Zhu on 14-2-26.
//  Copyright (c) 2014年 Rui Zhu. All rights reserved.
//

#import "SignInViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface SignInViewController ()
@property (nonatomic,strong) UIImageView *fieldsBackground;

@end

@implementation SignInViewController
@synthesize fieldsBackground;

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
    [self.logInView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]]];
    [self.logInView setLogo:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Logo"]]];
    
    
    [self.logInView.logInButton setBackgroundImage:[UIImage imageNamed:@"LoginSignupButton"] forState:UIControlStateNormal];
    [self.logInView.logInButton setBackgroundImage:[UIImage imageNamed:@"LoginSignupButton"] forState:UIControlStateHighlighted];
    [self.logInView.signUpButton setBackgroundImage:[UIImage imageNamed:@"SignupButton"] forState:UIControlStateNormal];
    [self.logInView.signUpButton setBackgroundImage:[UIImage imageNamed:@"SignupButton_down"] forState:UIControlStateHighlighted];
    
    //Add login field background
    fieldsBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LoginFieldsBackground"]];
    [self.logInView insertSubview:fieldsBackground atIndex:1];
    
    //Remove text shadow
    CALayer *layer = self.logInView.usernameField.layer;
    layer.shadowOpacity = 0.0;
    layer = self.logInView.passwordField.layer;
    layer.shadowOpacity = 0.0;
    
    
    
    //Set field text color
    [self.logInView.usernameField setTextColor:[UIColor blackColor]];
    [self.logInView.passwordField setTextColor:[UIColor blackColor]];
    
	// Do any additional setup after loading the view.
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self.logInView.logo setFrame:CGRectMake(67.0f, 75.0f, 186.0f, 65.0f)];
    [self.logInView.usernameField setFrame:CGRectMake(35.0f, 200.0f, 250.0f, 50.0f)];
    [self.logInView.passwordField setFrame:CGRectMake(35.0f, 250.0f, 250.0f, 50.0f)];
    [self.fieldsBackground setFrame:CGRectMake(35.0f, 200.0f, 250.0f, 100.0f)];
    [self.logInView.passwordForgottenButton setFrame:CGRectMake(12.5f, 225.0f, 23.0f, 50.0f)];
    [self.logInView.logInButton setFrame:CGRectMake(35.0f, 310.0f, 250.0f, 50.0f)];
    [self.logInView.signUpLabel setFrame:CGRectMake(35.0f, 485.0f, 250.0f, 50.0f)];
    [self.logInView.signUpButton setFrame:CGRectMake(35.0f, 500.0f, 250.0f, 50.0f)];
    
    // Set frame for elements
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
