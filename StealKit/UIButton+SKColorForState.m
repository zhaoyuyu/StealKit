//
//  UIButton+SKColorForState.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIButton+SKColorForState.h"
#import "UIImage+SKImageWithColor.h"

@implementation UIButton (SKColorForState)

- (void)sk_setColor:(UIColor *)color forState:(UIControlState)state
{
    [self setImage:[UIImage sk_imageWithColor:color] forState:state];
}

@end
