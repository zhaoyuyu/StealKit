//
//  UIView+SKGeometry.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/25.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIView+SKGeometry.h"

@implementation UIView (SKGeometry)

- (CGFloat)sk_x
{
    return self.frame.origin.x;
}

- (void)sk_setX:(CGFloat)sk_x
{
    self.frame = CGRectMake(sk_x, self.sk_y, self.sk_width, self.sk_height);
}

- (CGFloat)sk_y
{
    return self.frame.origin.y;
}

- (void)sk_setY:(CGFloat)sk_y
{
    self.frame = CGRectMake(self.sk_x, sk_y, self.sk_width, self.sk_height);
}

- (CGFloat)sk_width
{
    return self.frame.size.width;
}

- (void)sk_setWidth:(CGFloat)sk_width
{
    self.frame = CGRectMake(self.sk_x, self.sk_y, sk_width, self.sk_height);
}

- (CGFloat)sk_height
{
    return self.frame.size.height;
}

- (void)sk_setHeight:(CGFloat)sk_height
{
    self.frame = CGRectMake(self.sk_x, self.sk_y, self.sk_width, sk_height);
}

- (CGPoint)sk_origin
{
    return CGPointMake(self.sk_x, self.sk_y);
}

- (void)sk_setOrigin:(CGPoint)origin
{
    self.sk_x = origin.x;
    self.sk_y = origin.y;
}

- (CGSize)sk_size
{
    return CGSizeMake(self.sk_width, self.sk_height);
}

- (void)sk_setSize:(CGSize)size
{
    self.sk_width = size.width;
    self.sk_height = size.height;
}

- (CGFloat)sk_right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)sk_setRight:(CGFloat)sk_right
{
    self.sk_x = sk_right - self.sk_width;
}

- (CGFloat)sk_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)sk_setBottom:(CGFloat)sk_bottom
{
    self.sk_y = sk_bottom - self.sk_height;
}

- (CGFloat)sk_left
{
    return self.sk_x;
}

- (void)sk_setLeft:(CGFloat)sk_left
{
    self.sk_x = sk_left;
}

- (CGFloat)sk_top
{
    return self.sk_y;
}

- (void)sk_setTop:(CGFloat)sk_top
{
    self.sk_y = sk_top;
}

- (CGFloat)sk_centerX
{
    return self.center.x;
}

- (void)sk_setCenterX:(CGFloat)sk_centerX
{
    self.center = CGPointMake(sk_centerX, self.center.y);
}

- (CGFloat)sk_centerY
{
    return self.center.y;
}

- (void)sk_setCenterY:(CGFloat)sk_centerY
{
    self.center = CGPointMake(self.center.x, sk_centerY);
}

@end
