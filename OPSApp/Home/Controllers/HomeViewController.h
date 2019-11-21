//
//  HomeViewController.h
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Views/HomeView.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController

@property (strong, nonatomic) HomeView *homeView;

@property NSString * strImage;
@property NSUInteger pageIndex;

@end

NS_ASSUME_NONNULL_END
