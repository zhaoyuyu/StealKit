//
//  NSString+SKVersionCompare.h
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/8/29.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SKVersionComparison)

- (BOOL)sk_isEqualTo:(NSString *)version;

- (BOOL)sk_isLessThanOrEqualTo:(NSString *)version;

- (BOOL)sk_isLessThan:(NSString *)version;

- (BOOL)sk_isGreaterThanOrEqualTo:(NSString *)version;

- (BOOL)sk_isGreaterThan:(NSString *)version;

- (BOOL)sk_isNotEqualTo:(NSString *)version;

@end
