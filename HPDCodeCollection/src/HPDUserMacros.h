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
#define UIFontSize(s)       [UIFont systemFontOfSize:(s)]
#define UIFontBoldSize(s)   [UIFont boldSystemFontOfSize:(s)]


// Quartz 2D

#define __cgp(x, y)                 CGPointMake((x), (y))
#define __cgs(width, height)        CGSizeMake((width), (height))
#define __cgr(x, y, width, height)  CGRectMake((x), (y), (width), (height))

#define cgp(x, y)                   __cgp((x), (y))
#define cgs(width, height)          __cgs((width), (height))
#define cgr(x, y, width, height)    __cgr((x), (y), (width), (height))




#endif
