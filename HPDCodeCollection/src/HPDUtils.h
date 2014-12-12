//
//  HPDUtils.h
//  HPDCodeCollection
//
//  Created by HePanDai on 14/12/3.
//  Copyright (c) 2014年 heramerom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

@interface HPDUtils : NSObject

@end



@interface UIImage(Circle)

/**
 *  reshape the image to a circle shape
 *
 *  @param x      center.x
 *  @param y      center.y
 *  @param radius the circke radius
 *
 *  @return the new circle image
 */

- (UIImage *)circleMaskWithCenterX:(float)x centerY:(float)y radius:(float)radius;

@end

@interface UIImage (Scale)

/**
 *  resize the image
 *
 *  @param aSize new size
 *
 *  @return the new image with target size
 */
- (UIImage *)TransformtoSize:(CGSize)aSize;

@end


@interface NSDictionary(URLParams)

/**
 *  dictionary to url params format( param1=value1&param=value2 )
 *
 *  @discuss dictionary must only has NSString objects or NSNumber objects
 *
 *  @return string with url params format
 */
- (NSString *)urlParamsString;

@end


@interface NSDictionary(Keys)

/**
 *  the dictionary weather contains the key
 *
 *  @param key the key
 *
 *  @return YES if contains
 */

- (BOOL)containsKey:(id)key;

- (id)objectForKey:(id)aKey defaultObject:(id)obj;

@end


