//
//  AboutViewController.h
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Views/AboutView.h"

NS_ASSUME_NONNULL_BEGIN

@interface AboutViewController : UIViewController <ReadMoreDelegate>

@property (strong, nonatomic) AboutView * aboutView;



@end

NS_ASSUME_NONNULL_END
