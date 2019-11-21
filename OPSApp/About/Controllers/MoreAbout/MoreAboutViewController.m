//
//  MoreAboutViewController.m
//  OPSApp
//
//  Created by OPSolutions on 20/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "MoreAboutViewController.h"

@interface MoreAboutViewController ()

@end

@implementation MoreAboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self didTappedMoreAboutSegment:0];
    
}

- (IBAction)didTappedMoreAboutSegment:(id)sender {
    
    if (self.moreAboutSegment.selectedSegmentIndex == 0) {
        [self initMission];
    }
    if (self.moreAboutSegment.selectedSegmentIndex == 1) {
        [self initVision];
    }
    if (self.moreAboutSegment.selectedSegmentIndex == 2) {
        [self initWhatWeDo];
    }
    
}

- (IBAction)didTappedBackButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)initMission{
    
    self.missionView = (MissionView *)[[[NSBundle mainBundle] loadNibNamed:@"MissionView" owner:self options:nil] objectAtIndex:0];
    
    self.missionView.frame = self.view.bounds;
    self.missionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    [self.aboutUsView addSubview:self.missionView];
    
}

- (void)initVision{
    
    self.visionView = (VisionView *)[[[NSBundle mainBundle] loadNibNamed:@"VisionView" owner:self options:nil] objectAtIndex:0];
    
    self.visionView.frame = self.view.bounds;
    self.visionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    [self.aboutUsView addSubview:self.visionView];
    
}

- (void)initWhatWeDo{
    
    self.whatWeDoView = (WhatWeDoView *)[[[NSBundle mainBundle] loadNibNamed:@"WhatWeDoView" owner:self options:nil] objectAtIndex:0];
    
    self.whatWeDoView.frame = self.view.bounds;
    self.whatWeDoView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    [self.aboutUsView addSubview:self.whatWeDoView];
}



@end
