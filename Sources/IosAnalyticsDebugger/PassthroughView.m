//
//  PassthroughView.m
//  
//
//  Created by Timothy Moose on 8/2/22.
//

#import "PassthroughView.h"

@implementation PassthroughView
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
    return view == self ? nil : view;
}
@end
