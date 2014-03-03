//
//  Location.h
//  Free Spot
//
//  Created by Kanghong Cheng on 3/2/14.
//  Copyright (c) 2014 Rui Zhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property (strong, nonatomic) NSString *address;

@property (strong, nonatomic) NSString *photoFileName;

@property (nonatomic) float latitude;

@property (nonatomic) float longitude;

@end


