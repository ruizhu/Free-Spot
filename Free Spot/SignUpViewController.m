//
//  SignUpViewController.m
//  Free Spot
//
//  Created by Rui Zhu on 14-2-26.
//  Copyright (c) 2014年 Rui Zhu. All rights reserved.
//

#import "SignUpViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface SignUpViewController ()
@property (nonatomic,strong) UIImageView *fieldsBackground;

@end

@implementation SignUpViewController
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
    [self.signUpView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]]];
    [self.signUpView setLogo:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Logo"]]];
    
    
    [self.signUpView.signUpButton setBackgroundImage:[UIImage imageNamed:@"LoginSignupButton"] forState:UIControlStateNormal];
    [self.signUpView.signUpButton setBackgroundImage:[UIImage imageNamed:@"LoginSignupButton_down"] forState:UIControlStateHighlighted];
    
    //Add login field background
    fieldsBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"SignupFieldsBackground"]];
    [self.signUpView insertSubview:fieldsBackground atIndex:1];
   
    //Remove text shadow
    CALayer *layer = self.signUpView.usernameField.layer;
    layer.shadowOpacity = 0.0;
    layer = self.signUpView.passwordField.layer;
    layer.shadowOpacity = 0.0;
    layer = self.signUpView.emailField.layer;
    layer.shadowOpacity = 0.0;
    
    //Set field text color
    [self.signUpView.usernameField setTextColor:[UIColor blackColor]];
    [self.signUpView.passwordField setTextColor:[UIColor blackColor]];
    [self.signUpView.emailField setTextColor:[UIColor blackColor]];
    
    
	// Do any additional setup after loading the view.
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self.signUpView.logo setFrame:CGRectMake(67.0f, 75.0f, 186.0f, 65.0f)];
    [self.signUpView.usernameField setFrame:CGRectMake(35.0f, 175.0f, 250.0f, 50.0f)];
    [self.signUpView.passwordField setFrame:CGRectMake(35.0f, 225.0f, 250.0f, 50.0f)];
    [self.signUpView.emailField setFrame:CGRectMake(35.0f, 275.0f, 250.0f, 50.0f)];
    [self.fieldsBackground setFrame:CGRectMake(35.0f, 175.0f, 250.0f, 150.0f)];
    [self.signUpView.signUpButton setFrame:CGRectMake(35.0f, 335.0f, 250.0f, 50.0f)];
    
    // Set frame for elements
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
