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
    layer.path = path.CGPath;
    layer.lineWidth = lineWidth;
    layer.strokeColor = lineColor.CGColor;
    [self.layer addSublayer:layer];
}

@end


@implementation UIView (frame)

- (CGFloat)minX
{
    return CGRectGetMinX(self.frame);
}
- (CGFloat)minY
{
    return CGRectGetMinY(self.frame);
}
- (CGFloat)maxX
{
    return CGRectGetMaxX(self.frame);
}
- (CGFloat)maxY
{
    return CGRectGetMaxY(self.frame);
}

- (void)setMinX:(CGFloat)minX
{
    self.frame = CGRectOffset(self.frame, minX - self.minX, 0);
}
- (void)setMinY:(CGFloat)minY
{
    self.frame = CGRectOffset(self.frame, 0, minY-self.minY);
}
- (void)setMaxX:(CGFloat)maxX
{
    self.frame = CGRectOffset(self.frame, maxX - self.maxX, 0);
}
- (void)setMaxY:(CGFloat)maxY
{
    self.frame = CGRectOffset(self.frame, 0, maxY - self.maxY);
}

- (CGFloat)width
{
    return CGRectGetWidth(self.frame);
}
- (CGFloat)height
{
    return CGRectGetHeight(self.frame);
}

- (void)setHeight:(CGFloat)height
{
    self.frame = CGRectInset(self.frame, 0, height - self.height);
}

- (void)setWidth:(CGFloat)width
{
    self.frame = CGRectInset(self.frame, width - self.width, 0);
}

- (void)frameInsert:(CGFloat)dx :(CGFloat)dy
{
    self.frame = CGRectInset(self.frame, dx, dy);
}
- (void)frameOffset:(CGFloat)dx :(CGFloat)dy
{
    self.frame = CGRectOffset(self.frame, dx, dy);
}

@end
