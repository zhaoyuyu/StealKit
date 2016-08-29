//
//  UIDevice+SKVersionComparison.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIDevice+SKVersionComparison.h"
#import "NSString+SKVersionComparison.h"

#define kSKCurrentVersion [UIDevice currentDevice].systemVersion

@implementation UIDevice (SKVersionComparison)

+ (BOOL)sk_isVersionEqualTo:(NSString *)version
{
    return [kSKCurrentVersion sk_isEqualTo:version];
}

+ (BOOL)sk_isVersionLessThanOrEqualTo:(NSString *)version
{
    return [kSKCurrentVersion sk_isLessThanOrEqualTo:version];
}

+ (BOOL)sk_isVersionLessThan:(NSString *)version
{
    return [kSKCurrentVersion sk_isLessThan:version];
}

+ (BOOL)sk_isVersionGreaterThanOrEqualTo:(NSString *)version
{
    return [kSKCurrentVersion sk_isGreaterThanOrEqualTo:version];
}

+ (BOOL)sk_isVersionGreaterThan:(NSString *)version
{
    return [kSKCurrentVersion sk_isGreaterThan:version];
}

+ (BOOL)sk_isVersionNotEqualTo:(NSString *)version
{
    return [kSKCurrentVersion sk_isNotEqualTo:version];
}

@end
