//
//  NSMutableDictionary+SKProtection.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/26.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "NSMutableDictionary+SKProtection.h"

@implementation NSMutableDictionary (SKProtection)

- (void)sk_removeObjectForKey:(id)aKey {
    if (!aKey) {
        return;
    }
    [self removeObjectForKey:aKey];
}

- (void)sk_setObject:(id)anObject forKey:(id <NSCopying>)aKey {
    if (!anObject) {
        return;
    }
    if (!aKey) {
        return;
    }
    [self setObject:anObject forKey:aKey];
}

@end
