//
//  AboutView.h
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ReadMoreDelegate <NSObject>

@required

- (void)didTappedReadMoreButton;

@end

NS_ASSUME_NONNULL_BEGIN

@interface AboutView : UIView
@property (weak, nonatomic) IBOutlet UIButton *readMoreButton;

- (IBAction)tappedReadMoreButton:(id)sender;

@property (strong, nonatomic) id <ReadMoreDelegate> readMoreDelegate;

@end

NS_ASSUME_NONNULL_END
