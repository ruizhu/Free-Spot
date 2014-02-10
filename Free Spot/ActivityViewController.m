//
//  ActivityViewController.m
//  Free Spot
//
//  Created by Rui Zhu on 14-2-9.
//  Copyright (c) 2014年 Rui Zhu. All rights reserved.
//

#import "ActivityViewController.h"

@interface ActivityViewController () {
    NSDictionary *activityList;
    NSArray *justActivityName;
    NSMutableArray *_objects;
}



@end

@implementation ActivityViewController
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return activityList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"activityCell"];
    cell.textLabel.text = justActivityName[indexPath.row];
    cell.detailTextLabel.text = activityList[justActivityName[indexPath.row]];
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Activity" withExtension:@".plist"];
    activityList = [NSDictionary dictionaryWithContentsOfURL:url];
    justActivityName = activityList.allKeys;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
