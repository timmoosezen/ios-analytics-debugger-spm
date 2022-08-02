//
//  PassthroughViewController.m
//  
//
//  Created by Timothy Moose on 8/2/22.
//

#import "PassthroughViewController.h"
#import "PassthroughView.h"

@interface PassthroughViewController ()

@end

@implementation PassthroughViewController
- (void)loadView {
    self.view = [[PassthroughView alloc] init];
}
@end
