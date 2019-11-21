//
//  ContactView.h
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>
#import <CoreLocation/CoreLocation.h>

@protocol OpsLocationDelegate <NSObject>

@required

- (void)didTappedSGButton;
- (void)didTappedPHButton;
- (void)didTappedMYButton;


@end
NS_ASSUME_NONNULL_BEGIN

@interface ContactView : UIView 
@property (strong, nonatomic) IBOutlet GMSMapView *mapView;
@property (strong, nonatomic) id<OpsLocationDelegate> opsLocationDelegate;

- (IBAction)sgButton:(id)sender;
- (IBAction)phButton:(id)sender;
- (IBAction)myButton:(id)sender;

@end

NS_ASSUME_NONNULL_END
