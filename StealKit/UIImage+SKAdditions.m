//
//  UIImage+SKImageWithColor.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIImage+SKAdditions.h"

@implementation UIImage (SKAdditions)

+ (instancetype)sk_imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (UIImage *)sk_imageByResize:(CGSize)anotherSize
{
    UIGraphicsBeginImageContext(anotherSize);
    [self drawInRect:CGRectMake(0, 0, anotherSize.width, anotherSize.height)];
    UIImage* targetImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return targetImage;
}

@end
