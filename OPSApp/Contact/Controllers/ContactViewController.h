//
//  ContactViewController.h
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Views/ContactView.h"
#import <GoogleMaps/GoogleMaps.h>
#import <CoreLocation/CoreLocation.h>


NS_ASSUME_NONNULL_BEGIN

@interface ContactViewController : UIViewController <OpsLocationDelegate>

@property (strong, nonatomic) ContactView * contactView;
@property (strong, nonatomic) CLLocationManager *locationManager;



@end

NS_ASSUME_NONNULL_END
