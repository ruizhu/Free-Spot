//
//  MessageViewController.m
//  Free Spot
//
//  Created by Rui Zhu on 14-2-9.
//  Copyright (c) 2014年 Rui Zhu. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController () {
    NSDictionary *messageList;
    NSArray *justMessageTitle;
}

@end

@implementation MessageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return messageList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"messageCell"];
    cell.textLabel.text = justMessageTitle[indexPath.row];
    cell.detailTextLabel.text = messageList[justMessageTitle[indexPath.row]];
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Message" withExtension:@".plist"];
    messageList = [NSDictionary dictionaryWithContentsOfURL:url];
    justMessageTitle = messageList.allKeys;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
