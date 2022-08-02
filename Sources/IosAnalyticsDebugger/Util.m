//
//  Util.m
//  IosAnalyticsDebugger
//
//  Copyright © 2019. All rights reserved.
//

#import "Util.h"

@implementation Util

+(NSString *) timeString:(NSTimeInterval)timestamp; {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"HH:mm:ss.SSS"];
    
    return [formatter stringFromDate:date];
}

+(BOOL) eventHaveErrors:(DebuggerEventItem *)event; {
    if (event.messages != nil && event.messages.count > 0) {
        return YES;
    }
    
    return NO;
}

+ (NSInteger) barBottomOffset {
    if (@available(iOS 11.0, *)) {
        return [UIApplication sharedApplication].keyWindow.safeAreaInsets.bottom;
    } else {
        BOOL hasNotch = [self statusBarHeight] > 24.0;
        if (hasNotch) {
            return 30;
        } else {
            return 0;
        }
    }
}

+ (CGFloat) statusBarHeight {
    if (@available(iOS 11.0, *)) {
        return [UIApplication sharedApplication].keyWindow.safeAreaInsets.top;
    } else {
        CGSize statusBarSize;
        statusBarSize = [[UIApplication sharedApplication] statusBarFrame].size;
        return MIN(statusBarSize.width, statusBarSize.height);
    }
}

@end
