//
//  UIView+SKDebug.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/9/6.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIView+SKDebug.h"
#import "NSString+SKEncryption.h"

@implementation UIView (SKDebug)

- (NSString *)sk_recursiveDescription
{
    NSString *selector_ = @"cmVjdXJzaXZlRGVzY3JpcHRpb24=".sk_BASE64Decode;
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    return [self performSelector:NSSelectorFromString(selector_)];
#pragma clang diagnostic pop
}

@end
