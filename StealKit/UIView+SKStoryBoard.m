//
//  UIView+SKStoryBoard.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/25.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIView+SKStoryBoard.h"

@implementation UIView (SKStoryBoard)

- (BOOL)sk_shouldRasterize
{
    return self.layer.shouldRasterize;
}

- (void)setSk_shouldRasterize:(BOOL)sk_shouldRasterize
{
    self.layer.shouldRasterize = sk_shouldRasterize;
    if (sk_shouldRasterize) {
        self.layer.rasterizationScale = [UIScreen mainScreen].scale;
    }
}

- (BOOL)sk_masksToBounds
{
    return self.layer.masksToBounds;
}

- (void)setSk_masksToBounds:(BOOL)sk_masksToBounds
{
    self.layer.masksToBounds = sk_masksToBounds;
}

- (CGFloat)sk_cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setSk_cornerRadius:(CGFloat)sk_cornerRadius
{
    self.layer.cornerRadius = sk_cornerRadius;
}

- (UIColor *)sk_borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setSk_borderColor:(UIColor *)sk_borderColor
{
    self.layer.borderColor = sk_borderColor.CGColor;
}

- (CGFloat)sk_borderWidth
{
    return self.layer.borderWidth;
}

- (void)setSk_borderWidth:(CGFloat)sk_borderWidth
{
    self.layer.borderWidth = sk_borderWidth;
}

- (UIColor *)sk_shadowColor
{
    return [UIColor colorWithCGColor:self.layer.shadowColor];
}

- (void)setSk_shadowColor:(UIColor *)sk_shadowColor
{
    self.layer.shadowColor = sk_shadowColor.CGColor;
}

- (CGFloat)sk_shadowOpacity
{
    return self.layer.shadowOpacity;
}

- (void)setSk_shadowOpacity:(CGFloat)sk_shadowOpacity
{
    self.layer.shadowOpacity = sk_shadowOpacity;
}

- (CGFloat)sk_shadowRadius
{
    return self.layer.shadowRadius;
}

- (void)setSk_shadowRadius:(CGFloat)sk_shadowRadius
{
    self.layer.shadowRadius = sk_shadowRadius;
}

- (CGSize)sk_shadowOffset
{
    return self.layer.shadowOffset;
}

- (void)setSk_shadowOffset:(CGSize)sk_shadowOffset
{
    self.layer.shadowOffset = sk_shadowOffset;
}

@end
