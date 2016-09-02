//
//  UIView+SKNib.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/9/2.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIView+SKNibAdditions.h"

@implementation UIView (SKNibAdditions)

+ (instancetype)sk_loadFromNib
{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}

@end
