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
    //[[self view] setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]]];
    [self.logInView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]]];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
