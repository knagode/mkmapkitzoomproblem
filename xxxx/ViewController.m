//
//  ViewController.m
//  xxxx
//
//  Created by Klemen Nagode on 30/10/14.
//  Copyright (c) 2014 Klemen Nagode. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MKCircle *circle = [MKCircle circleWithCenterCoordinate:CLLocationCoordinate2DMake(3.970639, 12.238926) radius: 144];
    [_mapView addOverlay:circle];
    _mapView.delegate = self;
}

- (IBAction)buttonPressedHandler:(id)sender {
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(3.970639, 12.238926), 100, 100);
    [self.mapView setRegion:viewRegion animated:YES];
}

- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id)overlay
{
    MKCircleView* circleView = [[MKCircleView alloc] initWithOverlay:overlay] ;
    circleView.fillColor = [UIColor redColor];
    
    return circleView;
}


@end
