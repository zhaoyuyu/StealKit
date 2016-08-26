//
//  NSDictionary+SKProtection.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSDictionary+SKProtection.h"

@implementation NSDictionary (SKProtection)

- (id)sk_objectForKey:(id)key
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNull class]]) {
        return nil;
    }
    return object;
}

@end
