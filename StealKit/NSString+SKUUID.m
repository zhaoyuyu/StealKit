//
//  NSString+SKUUID.m
//  StealKitDemo
//
//  Created by 赵瑜瑜 on 16/9/2.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSString+SKUUID.h"

@implementation NSString (SKUUID)

+ (NSString *)sk_UUIDString
{
    return [NSUUID UUID].UUIDString;
}

@end
