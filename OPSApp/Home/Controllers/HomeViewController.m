//
//  HomeViewController.m
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self xibSetup];
    
    [self pageController];
    
    
}

- (void)xibSetup{
    
    self.homeView = (HomeView *)[[[NSBundle mainBundle] loadNibNamed:@"HomeView" owner:self options:nil] objectAtIndex:0];
    
    self.homeView.frame = self.view.bounds;
    
    self.homeView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    [self.view addSubview:self.homeView];
    
}

- (void)pageController{
    
    self.homeView.homeViewCarousel.image = [UIImage imageNamed:_strImage];
    
    
    
}

@end
