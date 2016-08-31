//
//  UIImage+SKImageWithColor.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

@import UIKit;

@interface UIImage (SKAdditions)

+ (instancetype)sk_imageWithColor:(UIColor *)color;

- (UIImage *)sk_imageByResize:(CGSize)anotherSize;

@end
