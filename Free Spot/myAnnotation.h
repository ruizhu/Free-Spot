//
//  myAnnonation.h
//  Free Spot
//
//  Created by Kanghong Cheng on 3/2/14.
//  Copyright (c) 2014 Rui Zhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface myAnnotation : NSObject
@property (strong, nonatomic) NSString *title;
@property (nonatomic,assign) CLLocationCoordinate2D coordinate;

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title;
@end
