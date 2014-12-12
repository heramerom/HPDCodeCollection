//
//  HPDUtils.m
//  HPDCodeCollection
//
//  Created by HePanDai on 14/12/3.
//  Copyright (c) 2014年 heramerom. All rights reserved.
//

#import "HPDUtils.h"

@implementation HPDUtils

@end



@implementation UIImage(Circle)

- (UIImage *)circleMaskWithCenterX:(float)x centerY:(float)y radius:(float)radius
{
    UIGraphicsBeginImageContext(self.size);
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    CGRect rect = CGRectMake(x - radius, y - radius, radius * 2, radius * 2);
    CGContextAddEllipseInRect(context, rect);
    CGContextClip(context);
    [self drawInRect:rect];
    CGContextAddEllipseInRect(context, rect);
    CGContextStrokePath(context);
    UIImage *circleImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return circleImage;
}

@end

@implementation UIImage(Scale)

-(UIImage *)TransformtoSize:(CGSize)aSize
{
    UIGraphicsBeginImageContext(aSize);
    [self drawInRect:CGRectMake(0, 0, aSize.width, aSize.height)];
    UIImage *TransformedImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return TransformedImg;
}

@end


@implementation NSDictionary (URLParams)

- (NSString *)urlParamsString
{
    NSMutableArray *pairs = [NSMutableArray array];
    for (NSString *key in [self allKeys]) {
        id value = [self objectForKey:key];
        [pairs addObject:[NSString stringWithFormat:@"%@=%@", key, value]];
    }
    return [pairs componentsJoinedByString:@"&"];
}

@end

@implementation NSDictionary(Keys)

- (BOOL)containsKey:(id)key
{
#if DEBUG
    if (![[self allKeys] containsObject:key]) {
        NSLog(@"--> %@ dose not contains the key %@", [self class], key);
    }
#endif
    return [[self allKeys] containsObject:key];
}

- (id)objectForKey:(id)aKey defaultObject:(id)obj
{
    return ([self containsKey:aKey]?[self objectForKey:aKey]:obj);
}

@end


