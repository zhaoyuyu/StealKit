//
//  UITextField+SKPlaceholderColor.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/9/2.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UITextField+SKPlaceholderColor.h"

@implementation UITextField (SKPlaceholderColor)

static NSString * const SKPlaceholderColorKeyPath = @"placeholderLabel.textColor";

- (void)setSk_placeholderColor:(UIColor *)sk_placeholderColor
{
    if (!sk_placeholderColor) return;
    
    NSString *placeholder = self.placeholder;
    self.placeholder = @" ";
    self.placeholder = placeholder;

    [self setValue:sk_placeholderColor forKeyPath:SKPlaceholderColorKeyPath];
}

- (UIColor *)sk_placeholderColor
{
    return [self valueForKeyPath:SKPlaceholderColorKeyPath];
}

@end
