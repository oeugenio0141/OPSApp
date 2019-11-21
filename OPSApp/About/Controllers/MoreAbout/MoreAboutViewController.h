//
//  MoreAboutViewController.h
//  OPSApp
//
//  Created by OPSolutions on 20/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../../Views/Mission/MissionView.h"
#import "../../Views/Vision/VisionView.h"
#import "../../Views/WhatWeDo/WhatWeDoView.h"


NS_ASSUME_NONNULL_BEGIN

@interface MoreAboutViewController : UIViewController

@property (strong, nonatomic) MissionView * missionView;
@property (strong, nonatomic) VisionView * visionView;
@property (strong, nonatomic) WhatWeDoView * whatWeDoView;

@property (weak, nonatomic) IBOutlet UIView *aboutUsView;


@property (weak, nonatomic) IBOutlet UISegmentedControl *moreAboutSegment;

- (IBAction)didTappedMoreAboutSegment:(id)sender;

- (IBAction)didTappedBackButton:(id)sender;

@end

NS_ASSUME_NONNULL_END
