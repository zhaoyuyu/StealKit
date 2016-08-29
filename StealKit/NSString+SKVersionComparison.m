//
//  NSString+SKVersionCompare.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSString+SKVersionComparison.h"

@implementation NSString (SKVersionComparison)

- (BOOL)sk_isEqualTo:(NSString *)version
{
    return [self isEqualToString:version];
}

- (BOOL)sk_isLessThanOrEqualTo:(NSString *)version
{
    return [self compare:version options:NSNumericSearch] != NSOrderedDescending;
}

- (BOOL)sk_isLessThan:(NSString *)version
{
    return [self compare:version options:NSNumericSearch] == NSOrderedAscending;
}

- (BOOL)sk_isGreaterThanOrEqualTo:(NSString *)version
{
    return [self compare:version options:NSNumericSearch] != NSOrderedAscending;
}

- (BOOL)sk_isGreaterThan:(NSString *)version
{
    return [self compare:version options:NSNumericSearch] == NSOrderedDescending;
}

- (BOOL)sk_isNotEqualTo:(NSString *)version
{
    return ![self isEqualToString:version];
}

@end
