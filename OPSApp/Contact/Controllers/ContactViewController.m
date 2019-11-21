//
//  ContactViewController.m
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ContactViewController.h"

@interface ContactViewController ()

@end

const float zoom = 15.0f;


@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self xibSetup];
    
    [self didTappedSGButton];
    
    [self initDelegate];
    
    
}

- (void)xibSetup{
    self.contactView = (ContactView *)[[[NSBundle mainBundle] loadNibNamed:@"ContactView" owner:self options:nil] objectAtIndex:0];
    
    self.contactView.frame = self.view.bounds;
    self.contactView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    [self.view addSubview:self.contactView];
}

- (void)initDelegate{
    
    self.contactView.opsLocationDelegate = self;
    
}

- (void)centerToLocation:(CLLocation *)location{
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:location.coordinate.latitude longitude:location.coordinate.longitude zoom:zoom];
    self.contactView.mapView.camera = camera;
    
}

- (void)setupMap:(CLLocationCoordinate2D *)getSelectedLocation{
    
    CLLocation * location = [[CLLocation alloc] initWithLatitude:getSelectedLocation->latitude longitude:getSelectedLocation->longitude];
 
    
    GMSMarker *marker = [[GMSMarker alloc]init];
    marker.position = *(getSelectedLocation);
//    marker.title = @"Carolina mall";
    marker.snippet = @"Snippet";
    marker.map = self.contactView.mapView;
    
    [self centerToLocation:location];
    
}

- (void)didTappedSGButton{
    
    CLLocationCoordinate2D selectedLocation;
    selectedLocation.latitude = 1.316291 ;
    selectedLocation.longitude = 103.901197;
    
    [self setupMap:&selectedLocation];
    
    
    
}

-(void)didTappedPHButton{
    
    CLLocationCoordinate2D selectedLocation;
    selectedLocation.latitude = 14.219866;
    selectedLocation.longitude = 121.037037;
    
    [self setupMap:&selectedLocation];
    
}

- (void)didTappedMYButton{
    
    CLLocationCoordinate2D selectedLocation;
    selectedLocation.latitude = 3.147881;
    selectedLocation.longitude = 101.715071;
    
    [self setupMap:&selectedLocation];

}

@end
