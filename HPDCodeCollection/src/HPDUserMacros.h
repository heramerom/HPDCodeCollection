//
//  HPDUserMacros.h
//  HPDCodeCollection
//
//  Created by HePanDai on 14-12-1.
//  Copyright (c) 2014年 HePanDai. All rights reserved.
//

#ifndef HPDCodeCollection_HPDUserMacros_h
#define HPDCodeCollection_HPDUserMacros_h


// color macros

#define __red_color         [UIColor redColor]
#define __clear_color       [UIColor clearColor]
#define __green_color       [UIColor greenColor]
#define __blue_color        [UIColor blueColor]
#define __gray_color        [UIColor grayColor]
#define __black_color       [UIColor blackColor]
#define __dark_gray_color   [UIColor darkGrayColor]
#define __light_gray_color  [UIColor lightGrayColor]
#define __white_color       [UIColor whiteColor]

#define UIClearColor        [UIColor clearColor]
#define UIRedColor          [UIColor redColor]
#define UIGreenColor        [UIColor greenColor]
#define UIBlueColor         [UIColor blueColor]
#define UIGrayColor         [UIColor grayColor]
#define UIBlackColor        [UIColor blackColor]
#define UIDarkGrayColor     [UIColor darkGrayColor]
#define UILightGrayColor    [UIColor lightGrayColor]
#define UIWhiteColor        [UIColor whiteColor]

#define __rgb(r, g, b)      [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define __rgba(r, g, b, a)  [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define rgb(r, g, b)        __rgb((r), (g), (b))
#define rgba(r, g, b, a)    __rgba((r), (g), (b), (a))
#define UIColor3b(r, g, b)  __rgb((r), (g), (b))
#define UIColor4b(r,g,b,a)  __rgba((r), (g), (b), (a))

// hex to color
#define __hexColor(rgbValue)    [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define hexColor(rgbValue)      __hexColor(rgbValue)
#define UIHexColor(rgbValue)    __hexColor(rgbValue)


// font macros
#define __font_size(s)      [UIFont systemFontOfSize:(s)]
#define UIFontSize(s)       [UIFont systemFontOfSize:(s)]
#define UIFontBoldSize(s)   [UIFont boldSystemFontOfSize:(s)]


// Quartz 2D
#define __cgp(x, y)                 CGPointMake((x), (y))
#define __cgs(width, height)        CGSizeMake((width), (height))
#define __cgr(x, y, width, height)  CGRectMake((x), (y), (width), (height))

#define cgp(x, y)                   __cgp((x), (y))
#define cgs(width, height)          __cgs((width), (height))
#define cgr(x, y, width, height)    __cgr((x), (y), (width), (height))

// UIKit macros
// screen macros
#define __screen_height             ([UIScreen mainScreen].bounds.size.height)
#define kScreenHeight               __screen_height
#define __screen_width              ([UIScreen mainScreen].bounds.size.width)
#define kScreenWidth                __screen_width

// view controller
#define __push(vc)          [self.navigationController pushViewController:(vc) animated:YES]
#define __pop()             [self.navigationController popViewControllerAnimated:YES]
#define __popTo(vc)         [self.navigationController popToViewController:(vc) animated:YES]
#define __popToRoot()       [self.navigationController popToRootViewControllerAnimated:YES]

// foundtion
#define __user_default          [NSUserDefaults standardUserDefaults]
#define USER_DEFAULT            __user_default
#define __notification_center   [NSNotificationCenter defaultCenter]
#define NOTIFICATION_CENTER     __notification_center

#define defaultString(value, defaultValue)  (((value) && value.length == 0)?(value):(defaultValue))
#define defaultObject(value, defaultValue)  ((value)?(value):(defaultValue))

#define wasStringEmpty(str)              (((value) && value.length == 0)?YES:NO)

#define __format_string(format, ...)        [NSString stringWithFormat:format, __VA_ARGS__]
#define NSStringWithFormat(format, ...)     [NSString stringWithFormat:format, __VA_ARGS__]

// app
#define __boundle_version       [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]
#define __short_version         [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
#define kCurrentBundleVersion   [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]
#define kShortBundleVersion     [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#define __deviceSystemVersion           ([UIDevice currentDevice].systemVersion.floatValue)
#define kDeviceSystemVersion            ([UIDevice currentDevice].systemVersion.floatValue)
// other
#define execAfterDelay(delay, aBlock) dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)((delay) * NSEC_PER_SEC)), dispatch_get_main_queue(), (aBlock))


// math
#define degreesToRadians(angle)         ((angle)/180.0 *M_PI)
#define radiansToDegrees(radians)       ((radians)*(180.0/M_PI))
#define DEGREES_TO_RADIANS(angle)       ((angle)/180.0 *M_PI)
#define RADIANS_TO_DEGREES(radians)     ((radians)*(180.0/M_PI))

#endif
