//
//  LocationDataController.m
//  Free Spot
//
//  Created by Kanghong Cheng on 3/2/14.
//  Copyright (c) 2014 Rui Zhu. All rights reserved.
//


#import "LocationDataController.h"

@implementation LocationDataController

- (Location*)getPointOfInterest
{
    Location *myLocation = [[Location alloc] init];
    myLocation.address = @"Wells Library Cafe, 1320 E 10th St, Bloomington, IN 47405";
    myLocation.photoFileName = @"coffeebeans.png";
    myLocation.latitude = 39.17147;
    myLocation.longitude = -86.516752;
    
    return myLocation;
}

@end
