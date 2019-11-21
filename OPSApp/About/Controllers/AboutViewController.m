//
//  AboutViewController.m
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self xibSetup];
    [self buttonLayout];
    [self didTappedReadMoreButton];
    [self initDelegate];
    

}

- (void)xibSetup{
    self.aboutView = (AboutView *)[[[NSBundle mainBundle] loadNibNamed:@"AboutView" owner:self options:nil] objectAtIndex:0];
    
    self.aboutView.frame = self.view.bounds;
    self.aboutView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    [self.view addSubview:self.aboutView];
    
}

- (void)initDelegate{
    
    self.aboutView.readMoreDelegate = self;

}

- (void)buttonLayout{
    
    self.aboutView.readMoreButton.layer.cornerRadius = 5.0;
    self.aboutView.readMoreButton.tintColor = UIColor.whiteColor;
    
}

- (void)didTappedReadMoreButton{
    
    [self performSegueWithIdentifier:@"toMoreAboutSegue" sender:self];
    
}
@end
