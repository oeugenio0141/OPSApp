//
//  CustomersViewController.m
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "CustomersViewController.h"

@interface CustomersViewController ()

@end

@implementation CustomersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self xibSetup];

}

- (void)xibSetup{
    self.customersView = (CustomersView *)[[[NSBundle mainBundle] loadNibNamed:@"CustomersView" owner:self options:nil] objectAtIndex:0];
    
    self.customersView.frame = self.view.bounds;
    self.customersView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    [self.view addSubview:self.customersView];
}

@end
