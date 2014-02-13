//
//  UserViewController.m
//  Free Spot
//
//  Created by Rui Zhu on 14-2-9.
//  Copyright (c) 2014年 Rui Zhu. All rights reserved.
//

#import "UserViewController.h"

@interface UserViewController () {
    NSDictionary *userList;
    NSArray *justUserName;
}

@end

@implementation UserViewController
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return userList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"userCell"];
    cell.textLabel.text = justUserName[indexPath.row];
    cell.detailTextLabel.text = userList[justUserName[indexPath.row]];
    return cell;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"User" withExtension:@".plist"];
    userList = [NSDictionary dictionaryWithContentsOfURL:url];
    justUserName = userList.allKeys;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
