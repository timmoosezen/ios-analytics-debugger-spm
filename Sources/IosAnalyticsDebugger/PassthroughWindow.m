//
//  PassthroughWindow.m
//  
//
//  Created by Timothy Moose on 8/1/22.
//

#import "PassthroughWindow.h"

@interface PassthroughWindow ()
@end

@implementation PassthroughWindow
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
    return view == self ? nil : view;
}
@end

