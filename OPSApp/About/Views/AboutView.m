//
//  AboutView.m
//  OPSApp
//
//  Created by OPSolutions on 19/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "AboutView.h"

@implementation AboutView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)tappedReadMoreButton:(id)sender {
    
    if (self) {
        if (self.readMoreDelegate
             && [self.readMoreDelegate respondsToSelector:@selector(didTappedReadMoreButton)]) {
            [self.readMoreDelegate didTappedReadMoreButton];
        }
    }

}
@end
