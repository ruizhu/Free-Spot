//
//  myAnnonation.m
//  Free Spot
//
//  Created by Kanghong Cheng on 3/2/14.
//  Copyright (c) 2014 Rui Zhu. All rights reserved.
//

#import "myAnnotation.h"

@implementation myAnnotation
-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title {
    if ((self = [super init])) {
        self.coordinate =coordinate;
        self.title = title;
    }
    return self;
}

@end


