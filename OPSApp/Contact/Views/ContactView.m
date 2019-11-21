//
//  ContactView.m
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ContactView.h"

@implementation ContactView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)sgButton:(id)sender {
    if (self) {
        if (self.opsLocationDelegate
            && [self.opsLocationDelegate respondsToSelector:@selector(didTappedSGButton)]) {
            [self.opsLocationDelegate didTappedSGButton];
        }
    }
}

- (IBAction)phButton:(id)sender {
    if (self) {
        if (self.opsLocationDelegate
            && [self.opsLocationDelegate respondsToSelector:@selector(didTappedPHButton)]) {
            [self.opsLocationDelegate didTappedPHButton];
        }
    }
}

- (IBAction)myButton:(id)sender {
    if (self) {
        if (self.opsLocationDelegate
            && [self.opsLocationDelegate respondsToSelector:@selector(didTappedMYButton)]) {
            [self.opsLocationDelegate didTappedMYButton];
        }
    }
}
@end
