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

+ (instancetype)sk_imageWithColor:(UIColor *)color size:(CGSize)size;

- (instancetype)sk_imageByResize:(CGSize)anotherSize;

- (instancetype)sk_gray;

- (instancetype)sk_croppedImageAtFrame:(CGRect)frame;

- (instancetype)sk_circular;

@end
