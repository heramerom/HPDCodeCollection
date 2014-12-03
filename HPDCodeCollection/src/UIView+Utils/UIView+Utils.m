//
//  DrawSimple.m
//  HPDCodeCollection
//
//  Created by HePanDai on 14/12/3.
//  Copyright (c) 2014年 heramerom. All rights reserved.
//

#import "UIView+Utils.h"

@implementation UIView(DrawSimple)

- (void)drawLineWithWidth:(CGFloat)lineWidth color:(UIColor *)lineColor formPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.frame = CGRectMake(MIN(point.x, toPoint.x), MIN(point.y, toPoint.y), ABS(point.x - toPoint.x), ABS(point.y - toPoint.y));
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(point.x-MIN(point.x, toPoint.x), point.y-MIN(point.y, toPoint.y))];
    [path addLineToPoint:CGPointMake(toPoint.x-MIN(point.x, toPoint.x), toPoint.y-MIN(point.y, toPoint.y))];
    [path setLineWidth:lineWidth];
    layer.path = path.CGPath;
    layer.strokeColor = lineColor.CGColor;
    [self.layer addSublayer:layer];
}

@end
