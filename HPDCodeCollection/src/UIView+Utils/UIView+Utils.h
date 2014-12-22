//
//  DrawSimple.h
//  HPDCodeCollection
//
//  Created by HePanDai on 14/12/3.
//  Copyright (c) 2014年 heramerom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(DrawSimple)

- (void)drawLineWithWidth:(CGFloat)lineWidth color:(UIColor *)lineColor formPoint:(CGPoint)point toPoint:(CGPoint)toPoint;

@end

@interface UIView(frame)

- (CGFloat)minX;
- (CGFloat)minY;
- (CGFloat)maxX;
- (CGFloat)maxY;

- (void)setMinX:(CGFloat)minX;
- (void)setMinY:(CGFloat)minY;
- (void)setMaxX:(CGFloat)maxX;
- (void)setMaxY:(CGFloat)maxY;


- (CGFloat)width;
- (CGFloat)height;

- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;

- (void)frameInsert:(CGFloat)dx :(CGFloat)dy;
- (void)frameOffset:(CGFloat)dx :(CGFloat)dy;


@end
