//
//  UIDevice+SKVersionComparison.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (SKVersionComparison)

+ (BOOL)sk_isVersionEqualTo:(NSString *)version;

+ (BOOL)sk_isVersionLessThanOrEqualTo:(NSString *)version;

+ (BOOL)sk_isVersionLessThan:(NSString *)version;

+ (BOOL)sk_isVersionGreaterThanOrEqualTo:(NSString *)version;

+ (BOOL)sk_isVersionGreaterThan:(NSString *)version;

+ (BOOL)sk_isVersionNotEqualTo:(NSString *)version;

@end
