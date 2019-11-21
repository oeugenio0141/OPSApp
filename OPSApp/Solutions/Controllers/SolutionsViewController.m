//
//  SolutionsViewController.m
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "SolutionsViewController.h"

@interface SolutionsViewController ()

@end

@implementation SolutionsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self xibSetup];
    
    
}

- (void)xibSetup{
    self.solutionsView = (SolutionsView *)[[[NSBundle mainBundle] loadNibNamed:@"SolutionsView" owner:self options:nil] objectAtIndex:0];
    
    self.solutionsView.frame = self.view.bounds;
    self.solutionsView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    [self.view addSubview:self.solutionsView];
}
@end
