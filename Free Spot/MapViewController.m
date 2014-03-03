//
//  MapViewController.m
//  Free Spot
//
//  Created by Kanghong Cheng on 3/2/14.
//  Copyright (c) 2014 Rui Zhu. All rights reserved.
//

#import "MapViewController.h"
#import "LocationDataController.h"
#import "Location.h"
#import "myAnnotation.h"
#define METERS_PER_MILE 1609.344

@interface MapViewController ()

@end

@implementation MapViewController
@synthesize mapView;
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
	// Do any additional setup after loading the view.
    self.mapView.delegate = self;
    CLLocationCoordinate2D coordinate1;
    coordinate1.latitude = 39.17147;
    coordinate1.longitude = -86.516752;
    myAnnotation *annotation = [[myAnnotation alloc] initWithCoordinate:coordinate1 title:@"Wells Library Cafe"];
    [self.mapView addAnnotation:annotation];
    CLLocationCoordinate2D coordinate2;
    coordinate2.latitude = 39.171899;
    coordinate2.longitude = -86.522988;
    myAnnotation *annotation2 = [[myAnnotation alloc] initWithCoordinate:coordinate2 title:@"Informatics West"];
    [self.mapView addAnnotation:annotation2];
    
}
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id)annotation {
    
    if([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    
    static NSString *identifier = @"myAnnotation";
    MKPinAnnotationView * annotationView = (MKPinAnnotationView*)[self.mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
    if (!annotationView)
    {
        
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        annotationView.pinColor = MKPinAnnotationColorRed;
        annotationView.animatesDrop = YES;
        annotationView.canShowCallout = YES;
    }else {
        annotationView.annotation = annotation;
    }
    annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    return annotationView;
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
  MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 8000, 8000);
 [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];

 //Add an annotation
  MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
   
    [self.mapView addAnnotation:point];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)viewDidAppear:(BOOL)animated
//{
//    LocationDataController *model = [[LocationDataController alloc] init];
//    Location *poi = [model getPointOfInterest];
    
//    CLLocationCoordinate2D poiCoodinates;
//    poiCoodinates.latitude = poi.latitude;
//    poiCoodinates.longitude= poi.longitude;
    
    
//    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(poiCoodinates, 6000, 6000);
    
//    [self.mapView setRegion:viewRegion animated:YES];
    
//}

@end
